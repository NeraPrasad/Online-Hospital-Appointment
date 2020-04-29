<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarIndex.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

    <link href="style/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/font.css" rel="stylesheet"/>
	
	<link href="style/css/custom.css" rel="stylesheet"/>
	<link href="style/css/slide.css" rel="stylesheet"/>
	<link rel="icon" type="image/ico" href="img/other/logo.png" />
	
	<script src="style/js/jquery1.js"></script>
	<script src="style/js/popper.js"></script>
	<script src="style/js/boot.js"></script>
    <script src="style/js/jquery-1.11.3.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
	<script src="style/js/ie10-viewport-bug-workaround.js"></script>
	<script src="style/js/holder.min.js"></script>
	<script src="style/js/topbutton.js"></script>

</head>
<body>
    
    <div>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.aspx"> <span><asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/Clinic.png" Width="30px" /></span> ROYAL HOSPITAL   </a> 
            </div>
			
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="../index.aspx">Home</a>
                    </li>
                    <li>
                       
                        <asp:HyperLink ID="HyperlinkLogin" runat="server" NavigateUrl="~/DoctorList.aspx">Find Doctor</asp:HyperLink>
                        <asp:HyperLink ID="HyperlinkManual" runat="server" NavigateUrl="~/DoctorListManual.aspx">Find Doctor</asp:HyperLink>
                    </li>
					  <li>
                        <asp:HyperLink ID="HyperlinkApp" runat="server" NavigateUrl="~/AppointmentManual.aspx">Appointment</asp:HyperLink>
                    </li>
					  <li>
                        <a href="../Schedule.aspx">Schedule</a> 
                    </li>
                    <li>
                         <asp:HyperLink ID="HyperlinkFeedBack" runat="server" NavigateUrl="~/Feedback.aspx">Feedback</asp:HyperLink>
                    </li>

                    <li style="margin-left:100px;">

                        
                        <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btn" OnClick="btnProfile_Click1" />
                        <asp:Button ID="btnlogin" runat="server" Text="Log In" CssClass="btn" OnClick="btnlogin_Click" />
                        <asp:Button ID="btnSingIn" runat="server" Text="Register" CssClass="btn" OnClick="btnSingIn_Click"/>
                        <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click" />
                    </li>  
                    <li style="margin-left:20px;">
                        
                        <asp:Label ID="lblHello" runat="server" Text="Hello" ForeColor="White"></asp:Label>
                    </li>

                </ul>

			
            </div>
        </div>
    </nav>
    </div>
  
</body>
</html>
