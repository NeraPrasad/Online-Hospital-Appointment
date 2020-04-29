<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageDoctorsProfile.aspx.cs" Inherits="admin_CheckAppointment" EnableEventValidation="false" %>


<%@ Register Src="~/include/navbatDoctor.ascx" TagPrefix="uc1" TagName="navbatDoctor" %>





<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage Doctor Profile - Doctor Royal Hospital PVT</title>

    <link href="../admin/style/dashboard.css" rel="stylesheet"/>
    <link href="../admin/style/DataTable.css" rel="stylesheet"/>
    <link href="../admin/style/btn.css" rel="stylesheet"/>
	
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
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
        
    <div id="layoutSidenav">
        <uc1:navbatDoctor runat="server" ID="navbatDoctor" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">Profile/Manage</h1>
    
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Profile Edit</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                       
                                    <asp:Panel ID="pnlDoctorInfo" runat="server">


                                        <asp:Image ID="imgDocPic" runat="server" />

                                        <br />

                                        
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label21" runat="server" Text="Doctor Name:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblDoctorName" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label15" runat="server" Text="Doctor Speciality:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblDocSpec" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label17" runat="server" Text="Doctor Hospital:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblDochos" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style18"></td>
                                                <td class="auto-style14">
                                                    <asp:Label ID="Label18" runat="server" Text="Doctor Fees:"></asp:Label>
                                                </td>
                                                <td class="auto-style15">
                                                    <asp:Label ID="lblDocfee" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style15"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label19" runat="server" Text="Doctor Gender:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblDocgen" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style17"></td>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label20" runat="server" Text="Doctor UserID:"></asp:Label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:Label ID="lblDocuid" runat="server"></asp:Label>
                                                </td>
                                                <td class="auto-style9"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style19"></td>
                                                <td class="auto-style3"></td>
                                                <td class="auto-style16"></td>
                                                <td class="auto-style16"></td>
                                            </tr>
                                        </table>
                                        
                                    </asp:Panel>

                                    <br />

                              
    


                                    

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
