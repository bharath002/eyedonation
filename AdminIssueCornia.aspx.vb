
Partial Class AdminIssueCornia
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Response.Redirect("AdminIssueCornia1.aspx?pvar=" & GridView1.SelectedRow.Cells(1).Text)
    End Sub
End Class
