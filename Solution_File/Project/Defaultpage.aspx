<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Defaultpage.aspx.cs" Inherits="Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Shopper Dell</h3>
                    <strong>SD</strong>

                </div>

                <ul class="list-unstyled components" id="cus">
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-credit-card"></i>
                            Customer
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="EditCustomer.aspx">Add Customer</a></li>
                            <li><a href="AllCustomer.aspx"> View Customer</a></li>
                        </ul>
                    </li>

                     <li class="active">
                        <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-bullhorn"></i>
                            Employee
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu1">
                            <li><a href="#">Add Employee</a></li>
                            <li><a href="#">View View Employee</a></li>
                            <li><a href="#">Update Customer</a></li>
                        </ul>
                    </li>
                        <li class="active">
                        <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-bullhorn"></i>
                            Products
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu2">
                            <li><a href="#">Add Products</a></li>
                            <li><a href="#">View Products</a></li>
                       </ul>
                    </li>

                     <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-credit-card"></i>
                            Suppliers
                        </a>
                        <ul class="collapse list-unstyled" id="#homeSubmenu2">
                            <li><a href="Supplier.aspx">Add Suppliers</a></li>
                            <li><a href="AllCustomer.aspx"> View Suppliers</a></li>
                        </ul>
                    </li>
                    <li>
                           <a href="#">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            Reports
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-link"></i>
                            Category
                        </a>
                    </li>
                  
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-send"></i>
                            Contact
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Dashboard</span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="Account/Login.aspx">Login</a></li>
                                <li><a href="Account/Register.aspx">Register</a></li>
                                <li><a href="Account/ManageLogins.aspx">Manage Login</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="row">
                            <div class="col-sm-12">
                                <h4 class="pull-left page-title">Welcome !</h4>
                                <ol class="breadcrumb pull-right">
                                    <li><a href="https://www.facebook.com/romansheikhbd">Roman</a></li>
                                    <li class="active">Dashboard</li>
                                </ol>
                            </div>
                        </div>
             

                <div class="line"></div>

                <h2>Lorem Ipsum Dolor</h2>

              
                <div class="line"></div>

               

                <div class="line"></div>

                <h3>Lorem Ipsum Dolor</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>





        <!-- jQuery CDN -->
          <script src="Scripts/jquery-3.4.1.min.js"></script>
         <!-- Bootstrap Js CDN -->

    <script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/bootstrap.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
         </script>

      

  

</asp:Content>
