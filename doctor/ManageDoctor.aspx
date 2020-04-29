<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageDoctor.aspx.cs" Inherits="admin_CheckAppointment"  EnableEventValidation="false" %>

<%@ Register Src="~/include/navbatDoctor.ascx" TagPrefix="uc1" TagName="navbatDoctor" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage Doctor - Admin Royal Hospital</title>

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
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    <div id="layoutSidenav">
       <uc1:navbatDoctor runat="server" ID="navbatDoctor" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">Prifile Edit</h1>

                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Doctor Information</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVAddDocNew" runat="server" AutoGenerateColumns="False" DataKeyNames="idDoctor" OnRowCancelingEdit="GVAddDocNew_RowCancelingEdit" OnRowEditing="GVAddDocNew_RowEditing" OnRowUpdating="GVAddDocNew_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GVAddDocNew_RowDeleting" Width="100%">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="idDoctor" HeaderText="Doctor ID" ReadOnly="True" />
                                                    <asp:BoundField DataField="DoctorName" HeaderText="Name" />
                                                    <asp:BoundField DataField="DoctorSpeciality" HeaderText="Speciality" />
                                                    
                                                    <asp:BoundField DataField="DoctorHospital" HeaderText="Hospital" />
                                                    <asp:BoundField DataField="DoctorFees" HeaderText="Fees" />
                                                    

                                           

                                                    <asp:BoundField DataField="DoctorGender" HeaderText="Gender" />

                                                    <asp:BoundField DataField="DoctorUserID" HeaderText="User ID" />
                                                    <asp:BoundField DataField="DoctorPassword" HeaderText="Password" />
                                                
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/icon/Edit.png" CommandName="Edit" ToolTip="Edit" runat="server" Width="30px" Height="30px" />
                                                            <asp:ImageButton ImageUrl="~/image/icon/RecrylDelete.png" CommandName="Delete" ToolTip="Delete" runat="server" Width="30px" Height="30px" />
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/icon/Save.png" CommandName="Update" ToolTip="Update" runat="server" Width="30px" Height="30px" />
                                                            <asp:ImageButton ImageUrl="~/image/icon/Cancel.png" CommandName="Cancel" ToolTip="Cancel" runat="server" Width="30px" Height="30px" />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                              
                                                    
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
                                        <div>
                                            
        </div>
        
        
        
    </form>
</body>
</html>
