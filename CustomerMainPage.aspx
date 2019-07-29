<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerMainPage.aspx.vb" Inherits="CustomerMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Eye Bank Administration</title>
</head>
<body bgcolor="#ccccff" background="images/blue_eye_1680x1050.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: -496px; position: absolute; top: -527px" />
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Copperplate Gothic Bold"
            ForeColor="White" NavigateUrl="~/SiteMainPage.aspx" Style="z-index: 101; left: 4px;
            position: absolute; top: 208px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Logo2.bmp" 
            Style="z-index: 102;
            left: -28px; position: absolute; top: 842px; width: 1203px; height: 35px;" />
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calisto MT"
            Font-Size="X-Large" Style="z-index: 103; left: 170px; position: absolute;
            top: 329px; width: 280px; height: 30px;" 
            PostBackUrl="~/CustCorniaList.aspx" Font-Italic="True" ForeColor="White">View Cornea Availability</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" BackColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calisto MT"
            Font-Size="X-Large" Style="z-index: 109; left: 170px; position: absolute;
            top: 471px; width: 280px; height: 30px; bottom: 204px;" 
            PostBackUrl="~/CustDoctorsList.aspx" Font-Italic="True" ForeColor="White">List Doctors to Call</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calisto MT"
            Font-Size="X-Large" Style="z-index: 107; left: 170px; position: absolute;
            top: 401px; width: 280px; height: 30px;" 
            PostBackUrl="~/CustEyePatientDetails.aspx" Font-Italic="True" 
            ForeColor="White">Register Eye Patient Details</asp:LinkButton>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calisto MT"
            NavigateUrl="~/CustEyeDonationform.aspx" Style="z-index: 110; left: 171px; position: absolute;
            top: 257px; width: 280px; height: 30px; right: 521px;" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="White">Register for Eye Donation</asp:HyperLink>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calisto MT"
            NavigateUrl="~/AFAQList.aspx" Style="z-index: 113; left: 170px; position: absolute;
            top: 534px; width: 280px; height: 30px;" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="White">FAQ List</asp:HyperLink>
    
    </div>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="Black" Font-Bold="True"
            Font-Names="Calisto MT" NavigateUrl="~/CustEditDonars.aspx"
            
        Style="z-index: 111; left: 685px; position: absolute; top: 324px; height: 30px; width: 250px;" 
        Font-Italic="True" Font-Size="X-Large" ForeColor="White" 
        BorderColor="White" BorderStyle="Solid" BorderWidth="1px">Edit Donor Details</asp:HyperLink>
    
    <p>
    
        <asp:HyperLink ID="HyperLink6" runat="server" BackColor="Black" Font-Bold="True"
            Font-Names="Calisto MT" NavigateUrl="~/CustEditPatient.aspx"
            
            Style="z-index: 111; left: 683px; position: absolute; top: 388px; height: 30px; width: 250px;" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="White" 
            BorderColor="White" BorderStyle="Solid" BorderWidth="1px">Edit Patient Details</asp:HyperLink>
    
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="Black" Font-Bold="True"
            Font-Names="Calisto MT" NavigateUrl="~/CustEditMember.aspx"
            
            Style="z-index: 111; left: 682px; position: absolute; top: 255px; width: 250px; height: 30px;" 
            Font-Italic="True" Font-Size="X-Large" ForeColor="White" 
            BorderColor="White" BorderStyle="Solid" BorderWidth="1px">Edit Member Details</asp:HyperLink>
    
    </p>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Calisto MT"
            NavigateUrl="~/SiteMainPage.aspx" Style="z-index: 111; left: 170px; position: absolute;
            top: 617px; width: 280px; height: 30px;" BackColor="Black" 
            BorderStyle="Solid" BorderWidth="1px" Font-Italic="True" 
        Font-Size="X-Large" ForeColor="White">Logout</asp:HyperLink>
    </form>
</body>
</html>
