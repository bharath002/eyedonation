<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminEditDoctor.aspx.vb" Inherits="AdminEditDoctor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
            
            Style="z-index: 101; left: -2px; position: absolute; top: 840px; width: 1282px; height: 38px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 102; left: 4px;
            position: absolute; top: 210px" Font-Size="Medium">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#FF6600" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 351px; position: absolute;
            top: 202px; width: 293px;" Text="Edit Doctor Details"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
     
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="DoctorName" DataSourceID="SqlDataSource1" 
            
            
            
            
            
            style="top: 314px; left: 53px; position: absolute; height: 133px; width: 938px" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" ReadOnly="True" 
                    SortExpression="DoctorName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="WorkingAt" HeaderText="WorkingAt" 
                    SortExpression="WorkingAt" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
     
        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 105; left: 828px; position: absolute;
            top: 720px" Text="Back" Width="160px" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            DeleteCommand="DELETE FROM [DoctorTab] WHERE [DoctorName] = @DoctorName" 
            InsertCommand="INSERT INTO [DoctorTab] ([DoctorName], [Address], [MobileNo], [eMail], [Gender], [WorkingAt]) VALUES (@DoctorName, @Address, @MobileNo, @eMail, @Gender, @WorkingAt)" 
            SelectCommand="SELECT * FROM [DoctorTab] ORDER BY [DoctorName]" 
            UpdateCommand="UPDATE [DoctorTab] SET [Address] = @Address, [MobileNo] = @MobileNo, [eMail] = @eMail, [Gender] = @Gender, [WorkingAt] = @WorkingAt WHERE [DoctorName] = @DoctorName">
            <DeleteParameters>
                <asp:Parameter Name="DoctorName" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="eMail" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="WorkingAt" Type="String" />
                <asp:Parameter Name="DoctorName" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="DoctorName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="eMail" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="WorkingAt" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>