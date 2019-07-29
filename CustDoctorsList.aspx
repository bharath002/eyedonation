<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/Human%20Eye.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 101; left: -7px; position: absolute; top: 843px; width: 1169px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 102; left: 5px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 255px; position: absolute;
            top: 203px; width: 560px;" Text="List of Doctors call for eye collection"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/CustomerMainPage.aspx" Style="z-index: 104; left: 835px; position: absolute;
            top: 659px" Text="Back" Width="160px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource1" Style="z-index: 106;
            left: 146px; position: absolute; top: 282px" Width="847px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="WorkingAt" HeaderText="WorkingAt" SortExpression="WorkingAt" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [DoctorName], [Address], [MobileNo], [eMail], [Gender], [WorkingAt] FROM [DoctorTab] ORDER BY [DoctorName]">
        </asp:SqlDataSource>
   
    
    </div>
    </form>
</body>
</html>

