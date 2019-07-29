<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AFAQList.aspx.vb" Inherits="AFAQList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>EyeBank Administration</title>
</head>
<body bgcolor="#cc99ff" background="images/Human%20Eye.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 101; left: 5px;
            position: absolute; top: 208px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            Style="z-index: 102; left: -4px; position: absolute; top: 1042px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" DataSourceID="SqlDataSource3"
            
            
            
            
            Style="z-index: 106; left: 57px; position: absolute; top: 285px; height: 680px; width: 936px; margin-right: 0px; margin-top: 1px;" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="Question" HeaderText="Question" 
                    SortExpression="Question" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" 
                    SortExpression="Answer" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            SelectCommand="SELECT [Question], [Answer] FROM [FAQTab] ORDER BY [qNo]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            SelectCommand="SELECT [Question], [Answer], [qNo] FROM [FAQTab] ORDER BY [qNo]">
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Forte"
            
            Style="z-index: 103; left: 475px; position: absolute; top: 203px; height: 39px; width: 124px;" 
            BackColor="#9933FF" Font-Size="XX-Large" ForeColor="White">FAQ List</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [qNo], [Question], [Answer] FROM [FAQTab] ORDER BY [qNo] DESC">
        </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 105;
            left: 177px; position: absolute; top: 597px" Text="Back" Width="109px" PostBackUrl="~/CustomerMainPage.aspx" />
     
    </div>
    </form>
</body>
</html>
