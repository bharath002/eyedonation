
Imports System.Data.SqlClient
Partial Class AdminFAQ

    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")

        Dim qNoVar As Long

        If TextBox1.Text = "" Then
            MsgBox("Enter the question", MsgBoxStyle.Information, "Data Missing")
            Exit Sub
        End If
        qNoVar = 1001
        Conn.Open()
        Dim Cmd1 As New SqlCommand("select max(qno) + 1 from FAQTab", Conn)
        Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
        If DataReader1.Read() Then
            qNovar = IIf(IsDBNull(DataReader1(0)), 1000, DataReader1(0))
        End If
        Conn.Close()




        'insert record to the database
        Conn.Open()
        SqlStr = "insert into FAQTab values("
        SqlStr = SqlStr & "" & qNoVar & ","
        SqlStr = SqlStr & "'" & TextBox1.Text & "',"
        SqlStr = SqlStr & "'" & TextBox2.Text & "')"



        'MsgBox(SqlStr)
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()

        MsgBox("New  FAQ is created successfully", MsgBoxStyle.Information, "Record Saved")
        TextBox1.Text = ""
        TextBox2.Text = ""

    End Sub
End Class
