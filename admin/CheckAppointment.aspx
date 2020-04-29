<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckAppointment.aspx.cs" Inherits="admin_CheckAppointment" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>CheckAppointment - Admin Royal Hospital</title>

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
                        <h1 class="mt-4">Appointment/Check</h1>

                        <asp:DropDownList ID="DDlDoctor" runat="server" CssClass="form-control" Width="25%" AppendDataBoundItems="true"></asp:DropDownList>
                        <asp:Button ID="btnsrh" runat="server" Text="Search" OnClick="btnsrh_Click" CssClass="btn"></asp:Button>

                        <asp:Button ID="btnRefesh" runat="server" Text="Refesh" CssClass="btn" OnClick="btnRefesh_Click"/>



                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Appontment List</div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <asp:GridView ID="GVCheckAppoinment" runat="server"  DataKeyNames="idappointment" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowCancelingEdit="GVCheckAppoinment_RowCancelingEdit" OnRowDeleting="GVCheckAppoinment_RowDeleting" OnRowEditing="GVCheckAppoinment_RowEditing" OnRowUpdating="GVCheckAppoinment_RowUpdating" Width="100%" OnRowDataBound="GVCheckAppoinment_RowDataBound" OnRowCommand="GVCheckAppoinment_RowCommand"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="idappointment" HeaderText="ID" />
                                                    <asp:BoundField DataField="patientName" HeaderText="Name" />
                                                    <asp:BoundField DataField="mobileNumber" HeaderText="Mobile Number" />
                                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                                    <asp:BoundField DataField="address" HeaderText="Address" />
                                                    <asp:BoundField DataField="doctor" HeaderText="Doctor" />
                                                    <asp:BoundField DataField="DateTime" HeaderText="DateTime" />
                                                    <asp:TemplateField HeaderText="Number">
                                                        <ItemTemplate>
                                                            <asp:DropDownList ID="DDLNumber" runat="server">

                                                            <asp:ListItem>- Select Number -</asp:ListItem>
                                                            
                                                            </asp:DropDownList>
                                                        </ItemTemplate>
                                                       
                                                    </asp:TemplateField>


                                                    <asp:ButtonField HeaderText="Send SMS" Text="Send" ButtonType="Button" CommandName="Sms" >
                                                    <ControlStyle BackColor="#FF3300" ForeColor="White" />
                                                    </asp:ButtonField>

                                                    <asp:ButtonField ButtonType="Button" CommandName="Email" HeaderText="Send Email" Text="Send">
                                                    <ControlStyle BackColor="#FF3399" />
                                                    </asp:ButtonField>

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
