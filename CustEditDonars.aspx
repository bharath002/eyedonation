<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustEditDonars.aspx.vb" Inherits="CustEditDonars" %>

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
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="CustId" 
            DataSourceID="SqlDataSource1" 
            
            
            
            style="top: 286px; left: 141px; position: absolute; height: 254px; width: 844px">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                </asp:CommandField>
                <asp:BoundField DataField="CustId" HeaderText="CustId" ReadOnly="True" 
                    SortExpression="CustId" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" 
                    SortExpression="CustName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="problems" HeaderText="problems" 
                    SortExpression="problems" />
                <asp:BoundField DataField="Authority" HeaderText="Authority" 
                    SortExpression="Authority" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            DeleteCommand="DELETE FROM [EyeDonarTab] WHERE [CustId] = @CustId" 
            InsertCommand="INSERT INTO [EyeDonarTab] ([CustId], [CustName], [Address], [MobileNo], [problems], [Authority]) VALUES (@CustId, @CustName, @Address, @MobileNo, @problems, @Authority)" 
            SelectCommand="SELECT [CustId], [CustName], [Address], [MobileNo], [problems], [Authority] FROM [EyeDonarTab] WHERE ([uName] = @uName) ORDER BY [CustId]" 
            UpdateCommand="UPDATE [EyeDonarTab] SET [CustName] = @CustName, [Address] = @Address, [MobileNo] = @MobileNo, [problems] = @problems, [Authority] = @Authority WHERE [CustId] = @CustId">
            <SelectParameters>
                <asp:SessionParameter Name="uName" SessionField="Cust1Var" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="CustId" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="problems" Type="String" />
                <asp:Parameter Name="Authority" Type="String" />
                <asp:Parameter Name="CustId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CustId" Type="String" />
                <asp:Parameter Name="CustName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="problems" Type="String" />
                <asp:Parameter Name="Authority" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/Logo2.bmp"
            
            Style="z-index: 101; left: -26px; position: absolute; top: 843px; width: 1221px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 102; left: 4px;
            position: absolute; top: 207px; bottom: 326px;">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 441px; position: absolute;
            top: 204px; width: 214px;" Text="Donor Details"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/CustomerMainPage.aspx" Style="z-index: 104; left: 820px; position: absolute;
            top: 615px" Text="Back" Width="160px" />
       
    
     
    
  
       
    
     
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
       
    
     
    
  
       
    
     
    
    </div>
    </form>
</body>
</html>