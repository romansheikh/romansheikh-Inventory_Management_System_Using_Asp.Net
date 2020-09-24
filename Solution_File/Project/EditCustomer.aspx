<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="Project.EditCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="card-body text-center">Customer Input Form</h1>
        <hr />
        <div class="table table-bordered col-8 offset-2" style="background-color: ActiveCaption">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Name</label>
                    <asp:TextBox ID="name" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label>Phone Number</label>
                    <asp:TextBox ID="phonenumber" runat="server" TextMode="Number" CssClass="form-control" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Date of Birth</label>
                    <asp:TextBox ID="dob" runat="server" CssClass="form-control" />
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="dob" />

                </div>
                <div class="form-group col-md-6">
                    <label>Gender</label>
                    <asp:DropDownList ID="ddlgender" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" value="Female"/>
                        <asp:ListItem Text="Others" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Address</label>
                    <asp:TextBox ID="address" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label>Email Address</label>
                    <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="form-control" />

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>City</label>
                    <asp:TextBox ID="city" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Insert Info" CssClass="btn btn-secondary btn-lg btn-block" OnClick="Button1_Click" />
                </div>
            </div>
            <asp:Label ID="lblmgs" runat="server" Text="" Visible="false"></asp:Label>

        </div>

    </div>
</asp:Content>
