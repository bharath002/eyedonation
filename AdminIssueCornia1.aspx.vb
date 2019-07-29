Imports System.Data.SqlClient
Partial Class AdminIssueCornia1
    Inherits System.Web.UI.Page
    Dim Conn As New SqlConnection()
    Dim SqlStr, FileVar As String

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Conn.ConnectionString = Application("ConnStr")
        Conn.Open()
        SqlStr = "update CorniaCollectionTab set issued ='Y' where packno=" & Val(DetailsView1.Rows(0).Cells(1).Text)
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()
        Conn.Open()
        SqlStr = "update EyePatientTab set issued ='Y' where custId='" & DropDownList1.Text & "'"
        Dim Cmd3 As New SqlCommand(SqlStr, Conn)
        Cmd3.ExecuteNonQuery()
        Conn.Close()

        MsgBox("Packet Issued successfully")

        Response.Redirect("AdminIssueCornia.aspx")
    End Sub
End Class

