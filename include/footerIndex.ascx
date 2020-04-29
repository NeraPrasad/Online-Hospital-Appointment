<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footerIndex.ascx.cs" Inherits="include_footerIndex" %>

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
    <footer>
		<div class="footer-blurb">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 footer-blurb-item">
						<h3><span><asp:Image ID="Image3" runat="server" ImageUrl="~/image/icon/Link.png" Width="30px" /></span> Quick Links</h3>
						
						<a href="http://www.health.gov.lk/moh_final/english/gazzete_notification.php">Gazette Notice</a> <br>
						<a href="http://www.nhsl.health.gov.lk/">The National Hospital of Sri Lanka</a> <br>
						<a href="https://lankainformation.lk/directory-2/health/government-hospitals">Government Hospitals </a> <br>
						
						
					</div>
					<div class="col-sm-3 footer-blurb-item">
						<h3><span><asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/Sheriff.png" Width="30px" /></span> Our Vision</h3>
						<p> "A healthier nation that contributes to its economic, social, mental and spiritual development."</p>

						
						
					</div>
					<div class="col-sm-3 footer-blurb-item">
						<h3><span><asp:Image ID="Image1" runat="server" ImageUrl="~/image/icon/Globe.png" Width="30px" /></span> Our Mission</h3>
						<p>"To contribute to social and economic development of Sri Lanka by achieving the highest attainable health status through promotive"</p>
						<a href="../reg/AdminLogin.aspx">Admin</a> <br>
						<a href="../reg/DoctorsLogin.aspx">Doctor</a>
					</div>
					
					<div class="col-sm-3 footer-blurb-item">
						<h3><span><asp:Image ID="imgcontct" runat="server" ImageUrl="~/image/icon/Online Support.png" Width="30px" /></span> Contact Us</h3>
        
						
						
                        <asp:ImageButton ID="imgbtnfb" runat="server" ImageUrl="~/image/icon/Facebook.png" Width="35px" />
						<asp:ImageButton ID="imgbtnTwitter" runat="server" ImageUrl="~/image/icon/Twitter.png" Width="35px" />
                        <asp:ImageButton ID="imgbtnGmail" runat="server" ImageUrl="~/image/icon/Gmail.png" Width="35px" />
						<asp:ImageButton ID="imgbtnPhone" runat="server" ImageUrl="~/image/icon/Phone.png" Width="35px" />
						
					</div>

				</div>
              
				<!-- /.row -->	
			</div>
        </div>
        
        
		
	</footer>
    </div>
  
</body>
</html>