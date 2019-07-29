

Imports System.Data.SqlClient
Partial Class CustEyeDonationform
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr, FileVar As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        If TextBox1.Text = "" Then
            MsgBox("Please enter the Name")
            TextBox1.Focus()
            Exit Sub
        End If
        If TextBox2.Text = "" Then
            MsgBox("Please enter the address")
            TextBox2.Focus()
            Exit Sub
        End If
        If Not Regex.Match(TextBox1.Text, "^[a-z,., ,]*$", RegexOptions.IgnoreCase).Success Then
            MsgBox("Please enter valid donor name")
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        End If
        If Val(TextBox3.Text) < 7000000000 Or Val(TextBox3.Text) > 9999999999 Then
            MsgBox("Please enter the 10 digit Mobile No")
            TextBox3.Text = ""
            TextBox3.Focus()
            Exit Sub
        End If


     

        Dim d1 As DateTime
        d1 = New DateTime(Val(DropDownList4.Text), Val(DropDownList3.Text), Val(DropDownList2.Text))
        Conn.Open()
        SqlStr = "insert into EyedonarTab values("
        SqlStr = SqlStr & "'" & Application("CustVar") & "_" & TextBox1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & DropDownList1.Text & "','" & String.Format("{0:dd/MMM/yyyy}", d1) & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList4.Text & "','N','" & Application("CustVar") & "')"
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()
        MsgBox("Registration done successfully")
        Response.Redirect("CustomerMainpage.aspx")


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Dim I As Integer
            For I = 1 To 31
                DropDownList2.Items.Add(I)
            Next
            For I = 1 To 12
                DropDownList3.Items.Add(I)
            Next
            For I = 1 To 71
                DropDownList4.Items.Add(1940 + I)
            Next
        End If
    End Sub
End Class

