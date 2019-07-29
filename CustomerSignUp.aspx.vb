Imports System.Data.SqlClient
Partial Class CustomerSignUp
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr, FileVar As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        If Not Regex.Match(TextBox4.Text, "^[a-z,., ,]*$", RegexOptions.IgnoreCase).Success Then
            MsgBox("Please enter valid name")
            TextBox4.Text = ""
            TextBox4.Focus()
            Exit Sub
        End If
        If TextBox7.Text = "" Then
            MsgBox("Please enter the address")
            TextBox7.Focus()
            Exit Sub
        End If
        If TextBox8.Text = "" Then
            MsgBox("Please enter the Mobile No")
            TextBox8.Focus()
            Exit Sub
        End If
        

        'MsgBox(Val(TextBox8.Text))
        If Val(TextBox8.Text) < 7000000000 Or Val(TextBox8.Text) > 9999999999 Then
            MsgBox("Please enter the valid 10 digit Mobile No")
            TextBox8.Text = ""
            TextBox8.Focus()
            Exit Sub
        End If



        If Len(TextBox9.Text) < 8 Then
            MsgBox("Please enter the Proper email Id")
            TextBox9.Text = ""
            TextBox9.Focus()
            Exit Sub
        End If

        Dim Expression As New System.Text.RegularExpressions.Regex("\S+@\S+\.\S+")
        If Expression.IsMatch(TextBox9.Text) Then
            'MsgBox("The email address is valid.")
        Else
            TextBox9.Text = ""
            TextBox9.Focus()
            MsgBox("The email address is NOT valid.", MsgBoxStyle.Critical, "Invalid Mail ID")
            Exit Sub
        End If
        
        


        Conn.Open()
        Dim Cmd1 As New SqlCommand("select * from CustomerTab where CustId='" & TextBox1.Text & "'", Conn)
        Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
        If DataReader1.HasRows.ToString = True Then
            MsgBox("This CustId is allready present please choose another name", MsgBoxStyle.Information, "CustId")
            Exit Sub
        End If
        Conn.Close()

        Conn.Open()
        SqlStr = "insert into CustomerTab(CustId,pWord,FirstName,cAdd,PhoneNo,eMail,Rem1) values("
        SqlStr = SqlStr & "'" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox9.Text & "','N')"
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()
        Response.Redirect("Customersignupres.aspx")
    End Sub

  
End Class
