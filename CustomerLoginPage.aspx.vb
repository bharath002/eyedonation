Imports System.Data.SqlClient
Partial Class CustomerLoginPage
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        Conn.Open()
        Dim Cmd1 As New SqlCommand("select * from CustomerTab where CustId='" & TextBox1.Text & "' and pWord = '" & TextBox2.Text & "'", Conn)
        Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
        If DataReader1.HasRows.ToString = True Then
            Application("CustVar") = TextBox1.Text
            Session("Cust1Var") = TextBox1.Text
            Response.Redirect("CustomerMainPage.aspx")
        Else
            MsgBox("please enter correct UserName and Password")
        End If
        Conn.Close()
    End Sub
End Class
