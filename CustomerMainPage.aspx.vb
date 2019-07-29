
Partial Class CustomerMainPage
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("custApplyHaj.aspx?var1=" & Application("CustVar"))
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("CustpayBasicFee.aspx?var1=" & Application("CustVar"))

    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Response.Redirect("CustCheckStatus.aspx?var1=" & Application("CustVar"))
    End Sub

End Class
