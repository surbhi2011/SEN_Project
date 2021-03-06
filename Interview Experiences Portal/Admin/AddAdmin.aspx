﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMainMaster.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Admin
       
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Advanced Elements</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="row">
            <div class="col-md-12">
                <asp:Panel ID="errormailer" runat="server" class="alert alert-error alert-dismissable fade in" Visible="false">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Opps!</strong> User Email or Password Invalied.
                </asp:Panel>
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Admin Form</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-6">
                            <label>First Name:</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <asp:TextBox ID="txtFirstName" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Last Name:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <asp:TextBox ID="txtLastName" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>EmailID:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <asp:TextBox ID="txtEmailID" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Contact Number:</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <asp:TextBox ID="txtContactNumber" runat="server" class="form-control pull-right"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group col-lg-12" style="margin-top: 20px;">
                            <div class="input-group pull-right">
                                <asp:Button ID="btnAddAdmin" runat="server" Text="Add Admin" class="btn btn-flat btn-primary" OnClick="btnAddAdmin_Click" />
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Active Admin List With Details</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                <%--<div class="row">
                                <div class="col-sm-6">
                                    <div class="dataTables_length" id="example1_length">
                                        <label>
                                            Show
                                            <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                                <option value="10">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>
                                            entries</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div id="example1_filter" class="dataTables_filter">
                                        <label>Search:<input type="search" class="form-control input-sm" placeholder="Hello" aria-controls="example1"></label>
                                    </div>
                                </div>
                            </div>--%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 182px;">Name</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 224px;">EmailID</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 199px;">Contact Number</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 156px;">Is Active</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Record Added By</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Added Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="rptAdmin" runat="server" OnItemCommand="rptAdmin_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("AdminID") %>' />
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("AdminID") %>' /></center>
                                                            </td>
                                                            <td>
                                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr role="row" class="even">
                                                            <td class="sorting_1">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("AdminID") %>' />
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("AdminID") %>' /></center>
                                                            </td>
                                                            <td>
                                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        </tr>
                                                    </AlternatingItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th rowspan="1" colspan="1">Name</th>
                                                    <th rowspan="1" colspan="1">EmailID</th>
                                                    <th rowspan="1" colspan="1">Contact Number</th>
                                                    <th rowspan="1" colspan="1">Is Active</th>
                                                    <th rowspan="1" colspan="1">Record Added By</th>
                                                    <th rowspan="1" colspan="1">Added Date</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">


                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Deactive Admin List With Details</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example3_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                <%--<div class="row">
                                <div class="col-sm-6">
                                    <div class="dataTables_length" id="example1_length">
                                        <label>
                                            Show
                                            <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                                <option value="10">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>
                                            entries</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div id="example1_filter" class="dataTables_filter">
                                        <label>Search:<input type="search" class="form-control input-sm" placeholder="Hello" aria-controls="example1"></label>
                                    </div>
                                </div>
                            </div>--%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="example3" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 182px;">Name</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 224px;">EmailID</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 199px;">Contact Number</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 156px;">Is Active</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Record Added By</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 112px;">Added Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="rptAdminDeactive" runat="server" OnItemCommand="rptAdminDeactive_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("AdminID") %>' />
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("AdminID") %>' /></center>
                                                            </td>
                                                            <td>
                                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr role="row" class="even">
                                                            <td class="sorting_1">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("AdminID") %>' />
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") + " " + Eval("LastName") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmailID") %>' /></td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>' /></td>
                                                            <td>
                                                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "img/" + Eval("IsActive") + ".png" %>' Width="20" Height="20" CommandName="tblAdmin" CommandArgument='<%# Eval("AdminID") %>' /></center>
                                                            </td>
                                                            <td>
                                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                                                                <asp:Literal ID="LtrCBy" runat="server"></asp:Literal></td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToDateTime(Eval("CreatedOn")).ToShortDateString() %>' /></td>
                                                        </tr>
                                                    </AlternatingItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th rowspan="1" colspan="1">Name</th>
                                                    <th rowspan="1" colspan="1">EmailID</th>
                                                    <th rowspan="1" colspan="1">Contact Number</th>
                                                    <th rowspan="1" colspan="1">Is Active</th>
                                                    <th rowspan="1" colspan="1">Record Added By</th>
                                                    <th rowspan="1" colspan="1">Added Date</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

        </section>



    </section>
    <!-- /.content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- DataTables -->
    <script src="Client Assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="Client Assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- page script -->
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging': true,
                'lengthChange': false,
                'searching': false,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
        $(function () {
            $('#example3').DataTable()
            $('#example4').DataTable({
                'paging': true,
                'lengthChange': false,
                'searching': false,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
    </script>
</asp:Content>

