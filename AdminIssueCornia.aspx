<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminIssueCornia.aspx.vb" Inherits="AdminIssueCornia" %>

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
            
            Style="z-index: 101; left: -1px; position: absolute; top: 840px; width: 1287px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 102; left: 3px;
            position: absolute; top: 207px">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" BackColor="#FF6600" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 321px; position: absolute;
            top: 205px; width: 435px; right: 584px;" 
            Text="Available Cornea Packet List"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 818px; position: absolute;
            top: 704px" Text="Back" Width="160px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource1" Style="z-index: 105;
            left: 147px; position: absolute; top: 280px; height: 393px; width: 831px;">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PackNo" HeaderText="PackNo" SortExpression="PackNo" />
                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" />
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" Style="z-index: 107; left: 147px; position: absolute;
            top: 716px; width: 387px;" Text="Click On Select To Issue To A Patient" 
            ForeColor="Yellow" Font-Bold="True" Font-Size="Large" 
            Font-Underline="True"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [PackNo], [doc], [DoctorName], [CustName], [age] FROM [CorniaCollectionTab] WHERE ([Issued] = @Issued) ORDER BY [PackNo] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="N" Name="Issued" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>