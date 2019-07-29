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
            
            Style="z-index: 101; left: -5px; position: absolute; top: 842px; width: 1201px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 102; left: 4px;
            position: absolute; top: 206px">Home</asp:HyperLink>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/CustomerMainPage.aspx" Style="z-index: 104; left: 834px; position: absolute;
            top: 658px" Text="Back" Width="160px" />
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [PackNo], [doc], [DoctorName], [CustName], [age] FROM [CorniaCollectionTab] WHERE ([Issued] = @Issued) ORDER BY [PackNo] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="N" Name="Issued" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 407px; position: absolute;
            top: 204px; right: 659px; width: 274px;" Text="Cornea Packet List"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource2" Style="z-index: 105;
            left: 148px; position: absolute; top: 280px" Width="847px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="PackNo" HeaderText="PackNo" SortExpression="PackNo" />
                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" 
                    SortExpression="BloodGroup" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" 
                    SortExpression="Condition" />
                <asp:BoundField DataField="Issued" HeaderText="Issued" 
                    SortExpression="Issued" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            SelectCommand="SELECT [PackNo], [doc], [CustName], [BloodGroup] FROM [CorniaCollectionTab] ORDER BY [PackNo]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            SelectCommand="SELECT [PackNo], [doc], [CustName], [BloodGroup], [Condition], [Issued] FROM [CorniaCollectionTab] ORDER BY [PackNo]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
