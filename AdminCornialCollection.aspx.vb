

Imports System.Data.SqlClient
Partial Class AdminCornialCollection
    Inherits System.Web.UI.Page

    Dim Conn As New SqlConnection()
    Dim SqlStr, FileVar As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Conn.ConnectionString = Application("ConnStr")
        If TextBox2.Text = "" Then
            MsgBox("Please enter the Donar Name")
            Exit Sub
        End If
        If Not Regex.Match(TextBox2.Text, "^[a-z,., ,]*$", RegexOptions.IgnoreCase).Success Then
            MsgBox("Please enter valid donor name")
            Exit Sub
        End If
        If TextBox3.Text > 100 Then
            MsgBox("please enter a valid age")
            TextBox3.Text = ""
            TextBox3.Focus()
            Exit Sub
        End If
       
        Dim rNo As Long
        rNo = 1000
        Conn.Open()
        Dim Cmd1 As New SqlCommand("select max(PackNo)+1 from CorniaCollectionTab", Conn)
        Dim Dr1 As SqlDataReader = Cmd1.ExecuteReader()
        If Dr1.Read Then
            rNo = IIf(IsDBNull(Dr1(0)), 1000, Dr1(0))
        End If
        Conn.Close()
        TextBox1.Text = rNo

        Dim d1 As DateTime
        d1 = New DateTime(Val(DropDownList4.Text), Val(DropDownList3.Text), Val(DropDownList2.Text))
        Conn.Open()
        SqlStr = "insert into CorniaCollectionTab values("
        SqlStr = SqlStr & "" & rNo & ",'" & String.Format("{0:dd/MMM/yyyy}", d1) & "','" & DropDownList5.Text & "','" & TextBox2.Text & "'," & Val(TextBox3.Text) & ",'" & DropDownList1.Text & "','" & DropDownList6.Text & "','" & TextBox4.Text & "','N')"
        Dim Cmd2 As New SqlCommand(SqlStr, Conn)
        Cmd2.ExecuteNonQuery()
        Conn.Close()


        Conn.Open()
        SqlStr = "delete from eyedonarTab where custid='" & DropDownList7.Text & "'"
        Dim Cmd3 As New SqlCommand(SqlStr, Conn)
        Cmd3.ExecuteNonQuery()
        Conn.Close()


        MsgBox("Registration done successfully")
        Response.Redirect("AdminMainPage.aspx")
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

        End If
    End Sub
End Class
