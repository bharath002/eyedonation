<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustEditMember.aspx.vb" Inherits="CustEditMember" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
            
            Style="z-index: 101; left: -6px; position: absolute; top: 844px; width: 1173px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 102; left: 4px;
            position: absolute; top: 205px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 424px; position: absolute;
            top: 204px; width: 242px;" Text="Member Details"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/CustomerMainPage.aspx" Style="z-index: 104; left: 832px; position: absolute;
            top: 542px" Text="Back" Width="160px" />
       
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="CustId" DataSourceID="SqlDataSource1" 
            
            
            style="top: 299px; left: 149px; position: absolute; height: 133px; width: 845px" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="CustId" HeaderText="CustId" ReadOnly="True" 
                    SortExpression="CustId" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                    SortExpression="Firstname" />
                <asp:BoundField DataField="cAdd" HeaderText="cAdd" SortExpression="cAdd" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                    SortExpression="PhoneNo" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            DeleteCommand="DELETE FROM [CustomerTab] WHERE [CustId] = @CustId" 
            InsertCommand="INSERT INTO [CustomerTab] ([CustId], [Firstname], [cAdd], [PhoneNo], [email]) VALUES (@CustId, @Firstname, @cAdd, @PhoneNo, @email)" 
            SelectCommand="SELECT [CustId], [Firstname], [cAdd], [PhoneNo], [email] FROM [CustomerTab] WHERE ([CustId] = @CustId)" 
            UpdateCommand="UPDATE [CustomerTab] SET [Firstname] = @Firstname, [cAdd] = @cAdd, [PhoneNo] = @PhoneNo, [email] = @email WHERE [CustId] = @CustId">
            <SelectParameters>
                <asp:SessionParameter Name="CustId" SessionField="Cust1Var" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="CustId" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="cAdd" Type="String" />
                <asp:Parameter Name="PhoneNo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="CustId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CustId" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="cAdd" Type="String" />
                <asp:Parameter Name="PhoneNo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
       
    
    </div>
    </form>
</body>
</html>