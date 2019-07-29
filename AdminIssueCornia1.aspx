<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminIssueCornia1.aspx.vb" Inherits="AdminIssueCornia1" %>

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
            
            Style="z-index: 101; left: -4px; position: absolute; top: 839px; width: 1256px; height: 34px;" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Copperplate Gothic Bold"
            ForeColor="#FFFFCC" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 102; left: 5px;
            position: absolute; top: 210px">Home</asp:HyperLink>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1"
            Height="171px" Style="z-index: 104; left: 251px; position: absolute; top: 296px"
            Width="517px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="PackNo" HeaderText="PackNo" SortExpression="PackNo" />
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            </Fields>
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:Button ID="Button3" runat="server" Height="36px" Style="z-index: 110; left: 450px;
            position: absolute; top: 644px" Text="Issue Cornia Packet" Width="197px" />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/AdminPatientList.aspx" Style="z-index: 105;
            left: 694px; position: absolute; top: 551px" Text="Patient List" 
            Width="104px" />
        <asp:Label ID="Label1" runat="server" BackColor="#FF6600" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Names="Forte" Font-Size="XX-Large"
            ForeColor="White" Height="42px" Style="z-index: 103; left: 442px; position: absolute;
            top: 205px; width: 201px; right: 697px;" Text="Issue Cornea"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [PackNo], [DoctorName], [CustName], [BloodGroup], [Condition] FROM [CorniaCollectionTab] WHERE ([PackNo] = @PackNo)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PackNo" QueryStringField="pvar" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="35px"
            PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 107; left: 805px; position: absolute;
            top: 650px" Text="Back" Width="160px" />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="CustId" DataValueField="CustId" Style="z-index: 109; left: 483px;
            position: absolute; top: 552px; right: 205px;" Width="197px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EyeBankConnectionString %>"
            SelectCommand="SELECT [CustId] FROM [EyePatientTab] WHERE ([Issued] = @Issued) ORDER BY [CustId]">
            <SelectParameters>
                <asp:Parameter DefaultValue="N" Name="Issued" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
    
        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Style="z-index: 108; left: 243px;
            position: absolute; top: 549px" Text="Packet is Issued to" 
            ForeColor="Yellow" Font-Bold="True" Font-Italic="True" 
            Font-Overline="False" Font-Size="Large" Font-Underline="True"></asp:Label>
   
    
    </div>
    </form>
</body>
</html>