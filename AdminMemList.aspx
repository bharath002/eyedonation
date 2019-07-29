<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/digital_eye_149-1920x1200.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 101; left: -3px; position: absolute; top: 840px; width: 1247px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 102; left: 3px;
            position: absolute; top: 208px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#FF6600" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 351px; position: absolute;
            top: 205px; width: 362px;" Text="Registered Members List"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server"  Style="z-index: 104;
            left: 120px; position: absolute; top: 291px" DataSourceID="SqlDataSource1" 
            AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4" Width="852px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" SelectCommand="SELECT [CustId], [Firstname], [cAdd], [PhoneNo], [email] FROM [CustomerTab] ORDER BY [Firstname]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106; left: 812px; position: absolute;
            top: 702px" Text="Back" Width="160px" />
    
    </div>
    </form>
</body>
</html>