<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustEditPatient.aspx.vb" Inherits="CustEditPatient" %>

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
            
            Style="z-index: 101; left: -3px; position: absolute; top: 843px; width: 1230px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="#C04000" NavigateUrl="~/CustomerMainPage.aspx" Style="z-index: 102; left: 4px;
            position: absolute; top: 207px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#9933FF" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 426px; position: absolute;
            top: 203px; width: 230px;" Text="Patient Details"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
       
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="CustId" 
            DataSourceID="SqlDataSource1" 
            
            
            style="top: 300px; left: 149px; position: absolute; height: 209px; width: 845px">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" 
                    SortExpression="CustName" />
                <asp:BoundField DataField="CustId" HeaderText="CustId" ReadOnly="True" 
                    SortExpression="CustId" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="problems" HeaderText="problems" 
                    SortExpression="problems" />
                <asp:BoundField DataField="requirement" HeaderText="requirement" 
                    SortExpression="requirement" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            DeleteCommand="DELETE FROM [EyePatientTab] WHERE [CustId] = @CustId" 
            InsertCommand="INSERT INTO [EyePatientTab] ([CustName], [CustId], [Address], [MobileNo], [problems], [requirement]) VALUES (@CustName, @CustId, @Address, @MobileNo, @problems, @requirement)" 
            SelectCommand="SELECT [CustName], [CustId], [Address], [MobileNo], [problems], [requirement] FROM [EyePatientTab] WHERE ([uName] = @uName)" 
            UpdateCommand="UPDATE [EyePatientTab] SET [CustName] = @CustName, [Address] = @Address, [MobileNo] = @MobileNo, [problems] = @problems, [requirement] = @requirement WHERE [CustId] = @CustId">
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
                <asp:Parameter Name="requirement" Type="String" />
                <asp:Parameter Name="CustId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CustName" Type="String" />
                <asp:Parameter Name="CustId" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="problems" Type="String" />
                <asp:Parameter Name="requirement" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>

        
       
    
    </div>
    </form>
</body>
</html>
