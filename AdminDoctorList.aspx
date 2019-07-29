<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminDoctorList.aspx.vb" Inherits="AdminDoctorList" %>

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
            
            Style="z-index: 101; left: -4px; position: absolute; top: 838px; width: 1280px; height: 36px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 102; left: 3px;
            position: absolute; top: 209px" Font-Size="X-Large">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#FF6600" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 453px; position: absolute;
            top: 204px; " Text="Doctor List"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server"  Style="z-index: 104;
            left: 137px; position: absolute; top: 281px"  AllowPaging="True" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" Width="852px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            >
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" 
                    SortExpression="DoctorName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            
       
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>" 
            SelectCommand="SELECT [DoctorName], [Address], [MobileNo], [eMail], [Gender] FROM [DoctorTab] ORDER BY [DoctorName]">
        </asp:SqlDataSource>
   
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 106; left: 828px; position: absolute;
            top: 689px" Text="Back" Width="160px" />
    
    </div>
    </form>
</body>
</html>
