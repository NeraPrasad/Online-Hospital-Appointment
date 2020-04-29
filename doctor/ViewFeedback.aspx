<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="admin_CheckAppointment" %>


<%@ Register Src="~/include/navbatDoctor.ascx" TagPrefix="uc1" TagName="navbatDoctor" %>





<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage Doctor Profile - Doctor Royal Hospital PVT</title>

    <link href="../admin/style/dashboard.css" rel="stylesheet"/>
    <link href="../admin/style/DataTable.css" rel="stylesheet"/>
    <link href="../admin/style/btn.css" rel="stylesheet"/>

    <link href="style/profileimage.css" rel="stylesheet"/>
	
	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>

    <style>
        .btn{
            margin-top:50px;
            margin-bottom: 20px;
        }

        .form-control{
           float:left;
           position:absolute;
        }
        .auto-style1 {
            width: 100%;
            border: 1px solid #0062CC;
        }
        .auto-style3 {
            width: 300px;
            height: 3px;
        }
        .auto-style6 {
            width: 301px;
            height: 3px;
        }
        .auto-style7 {
            width: 348px;
            height: 45px;
        }
        .auto-style8 {
            width: 300px;
            height: 45px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style13 {
            width: 301px;
            height: 46px;
        }
        .auto-style14 {
            width: 300px;
            height: 46px;
        }
        .auto-style15 {
            height: 46px;
        }
        .auto-style16 {
            height: 3px;
        }
        .auto-style17 {
            width: 278px;
            height: 45px;
        }
        .auto-style18 {
            width: 278px;
            height: 46px;
        }
        .auto-style19 {
            width: 278px;
            height: 3px;
        }
        .repeter{
            position:center;
            margin-left:30%;
            margin-right:30%;
        }

        .box{
            border:1px solid black;
            margin-top:5%;

            padding-right:3%;
            padding-top:3%;
            padding-bottom:3%;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
        
    <div id="layoutSidenav">
        <uc1:navbatDoctor runat="server" ID="navbatDoctor" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                    <h1 class="mt-4">Feedback/View</h1>
    
        <asp:DropDownList ID="DDLDoctor" runat="server" CssClass="form-control" Width="468px">
                      <asp:ListItem>-- Select Doctor --</asp:ListItem>
                  </asp:DropDownList>
                  <asp:Button ID="btnsrh" runat="server" Text="Search" CssClass="btn" OnClick="btnsrh_Click"></asp:Button>

                        <asp:Button ID="btnRefesh" runat="server" Text="Refesh" CssClass="btn" />
                        <br />
                        <br />

                     

       <div class="container-fluid">
            
                       
                        
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Feedback List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                       <asp:GridView ID="GVFeedBack" runat="server"  DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  AutoGenerateColumns="False" Width="100%">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="CUserName" HeaderText="User Name" />
                                                    <asp:BoundField DataField="CDocotrName" HeaderText="Doc Name" />
                                                    <asp:BoundField DataField="CDescription" HeaderText="Description" />
                                                    <asp:BoundField DataField="CTime" HeaderText="Time" />

                                                </Columns>

                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                
                
            </div>
    </div>
    </div>
    </form>

     
</body>
</html>
