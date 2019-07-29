

Imports System.Data.SqlClient
Partial Class AdminDoctorsRegistration
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr, FileVar As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        If TextBox1.Text = "" Then
            MsgBox("Please enter the Name")
            Exit Sub
        End If
        If Not Regex.Match(TextBox1.Text, "^[a-z,., ,]*$", RegexOptions.IgnoreCase).Success Then
            MsgBox("Please enter valid doctor name")
            Exit Sub
        End If
        If TextBox2.Text = "" Then
            MsgBox("Please enter the address")
            Exit Sub
        End If

        If Val(TextBox3.Text) < 7000000000 Or Val(TextBox3.Text) > 9999999999 Then
            MsgBox("Please enter the 10 digit Mobile No")
            Exit Sub
        End If

        If Len(TextBox4.Text) < 8 Then
            MsgBox("Please enter the Proper email Id")
            Exit Sub
        End If

        Dim Expression As New System.Text.RegularExpressions.Regex("\S+@\S+\.\S+")
        If Expression.IsMatch(TextBox4.Text) Then
            'MsgBox("The email address is valid.")
        Else
            MsgBox("The email address is NOT valid.", MsgBoxStyle.Critical, "Invalid Mail ID")
            Exit Sub
        End If


        Conn.Open()
        SqlStr = "insert into DoctorTab values("
        SqlStr = SqlStr & "'" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & DropDownList1.Text & "','" & TextBox5.Text & "')"
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()
        MsgBox("Registration done successfully")

        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""


    End Sub

End Class
