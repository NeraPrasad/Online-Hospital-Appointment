<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageSchedule.aspx.cs" Inherits="admin_CheckAppointment" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage User - Admin Royal Hospital PVT</title>

    <link href="style/dashboard.css" rel="stylesheet"/>
    <link href="style/DataTable.css" rel="stylesheet"/>
    <link href="style/btn.css" rel="stylesheet"/>


	<script src="style/bootstrap.bundle.min.js"></script>
    <script src="style/Chart.min.js"></script>
    <script src="style/font.js"></script>
    <script src="style/jquery-3.4.1.min.js"></script>
    <script src="style/scripts.js"></script>

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
        <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">Schedule/Manage</h1>
                        
                        
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>User List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                       <asp:GridView ID="GVAddSchedule" runat="server"  DataKeyNames="idSchedule" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowCancelingEdit="GVAddSchedule_RowCancelingEdit" OnRowDeleting="GVAddSchedule_RowDeleting" OnRowEditing="GVAddSchedule_RowEditing1" OnRowUpdating="GVAddSchedule_RowUpdating" Width="100%"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns> 
                                                    <asp:BoundField DataField="idSchedule" HeaderText="ID" ReadOnly="True" />
                                                    <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" />
                                                    <asp:BoundField DataField="monday" HeaderText="monday" />
                                                    <asp:BoundField DataField="tuesday" HeaderText="tuesday" />
                                                    <asp:BoundField DataField="wedneday" HeaderText="wedneday" />
                                                    <asp:BoundField DataField="thursday" HeaderText="thursday" />
                                                    <asp:BoundField DataField="friday" HeaderText="friday" />
                                                    <asp:BoundField DataField="saturday" HeaderText="saturday" />
                                                    <asp:BoundField DataField="sunday" HeaderText="sunday" /> 
                                                    

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
    </form>
</body>
</html>
