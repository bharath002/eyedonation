<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminFaqAns1.aspx.vb" Inherits="AdminFaqAns1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>InstaNews Online News Publishing</title>
</head>
<body bgcolor="#ccccff" background="images/digital_eye_149-1920x1200.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 1px; position: absolute; top: 0px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 145px; position: absolute; top: 204px" 
            ForeColor="Green" Width="341px" Font-Size="X-Large">Questions 
        and Answers</asp:HyperLink>
        &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 103; left: 6px;
            position: absolute; top: 207px">Home</asp:HyperLink>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="White" BorderStyle="Ridge" 
            BorderWidth="2px" CellPadding="3"
            CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" Style="z-index: 108;
            left: 141px; position: absolute; top: 246px" Width="721px">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="qNo" HeaderText="qNo" SortExpression="qNo" />
                <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                <asp:BoundField DataField="qText" HeaderText="qText" SortExpression="qText" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringIncomeTax %>"
            SelectCommand="SELECT [qNo], [CatName], [qText] FROM [FAQTab] WHERE ([qNew] = @qNew) ORDER BY [qNo]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="qNew" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106;
            left: 750px; position: absolute; top: 588px" Text="Back" Width="113px" />
        &nbsp;
    
    </div>
    </form>
</body>
</html>
