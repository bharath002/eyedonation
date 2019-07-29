<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ApplicantFAQ.aspx.vb" Inherits="ApplicantFAQ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Webbased Recruitment System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#0000C0" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#8080FF" Style="z-index: 105;
            left: 219px; position: absolute; top: 203px" Width="555px">View FAQ</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            Style="z-index: 102; left: 1px; position: absolute; top: 610px" />

        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/applicantMainPage.aspx" Style="z-index: 103; left: 4px;
            position: absolute; top: 208px">Home</asp:HyperLink>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84"
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
            DataSourceID="SqlDataSource1" Height="281px" Style="z-index: 104; left: 90px;
            position: absolute; top: 274px" Width="868px" AllowPaging="True">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="Question" SortExpression="Question" />
                <asp:BoundField DataField="Answer" SortExpression="Answer" />
            </Fields>
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitmentConnectionString %>"
            SelectCommand="SELECT Question, Answer FROM [FAQTab] ORDER BY question DESC">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
