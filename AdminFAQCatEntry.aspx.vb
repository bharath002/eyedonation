

Imports System.Data.SqlClient
Partial Class AdminFAQCatEntry
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        Conn.Open()
        Dim Cmd1 As New SqlCommand("select * from FAQCatTab where CatName='" & TextBox1.Text & "'", Conn)
        Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
        If DataReader1.HasRows.ToString = True Then
            MsgBox("This Category Name is allready present please choose another name", MsgBoxStyle.Information, "CatName")
            Exit Sub
        Else

        End If
        Conn.Close()




        'insert record to the database
        Conn.Open()
        SqlStr = "insert into FAQCatTab values("
        SqlStr = SqlStr & "'" & TextBox1.Text & "',"
        SqlStr = SqlStr & "'" & TextBox2.Text & "')"


        'MsgBox(SqlStr)
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        TextBox1.Text = ""
        TextBox2.Text = ""

        MsgBox("New  Category Name is created successfully", MsgBoxStyle.Information, "Record Saved")
        Conn.Close()
    End Sub
End Class
