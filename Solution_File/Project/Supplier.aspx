<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="Project.Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container col-10 offset-1">
        <h1 class="card-header text-center">Add Supplier Informaition</h1>
        <asp:DetailsView ID="DetailsView1" CssClass="table table-borderless" runat="server" AutoGenerateRows="False" DataKeyNames="SupplierID" DataSourceID="SupplierDS">
            <Fields>
                <asp:TemplateField HeaderText="Supplier ID" InsertVisible="False" SortExpression="SupplierID">
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier Name" SortExpression="SupplierName" ControlStyle-CssClass="form-control">
               
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SupplierName") %>'></asp:TextBox>
                    </InsertItemTemplate>
            
<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier Phone" SortExpression="SupplierPhone" ControlStyle-CssClass="form-control">
              
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SupplierPhone") %>' TextMode="Number"></asp:TextBox>
                    </InsertItemTemplate>
          

<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier Address" SortExpression="SupplierAddress" ControlStyle-CssClass="form-control">
              
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SupplierAddress") %>'></asp:TextBox>
                    </InsertItemTemplate>
      

<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier Email" SortExpression="SupplierEmail" ControlStyle-CssClass="form-control">
           
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SupplierEmail") %>' TextMode="Email"></asp:TextBox>
                    </InsertItemTemplate>
  
<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Shop Name" SortExpression="ShopName" ControlStyle-CssClass="form-control">
          
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ShopName") %>'></asp:TextBox>
                    </InsertItemTemplate>
          
<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="City" ControlStyle-CssClass="form-control">
               
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    </InsertItemTemplate>
   
<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier Type" SortExpression="SupplierType" ControlStyle-CssClass="form-control">
               
                    <InsertItemTemplate>
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" SelectedValue='<%# Bind("SupplierType") %>'>
                            <asp:ListItem Text="WholeSeller" Value="WholeSeller" />
                            <asp:ListItem Text="Retailer" Value="Retailer" />
                            <asp:ListItem Text="Seassion" Value="Seassion" />
                        </asp:DropDownList>
                    </InsertItemTemplate>
   

<ControlStyle CssClass="form-control"></ControlStyle>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" ControlStyle-CssClass="btn btn-block btn-dark col-6 offset-3">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>

<ControlStyle CssClass="btn btn-block btn-dark col-6 offset-3"></ControlStyle>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SupplierDS" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Suppliers] WHERE [SupplierID] = @SupplierID" InsertCommand="INSERT INTO [Suppliers] ([SupplierName], [SupplierPhone], [SupplierAddress], [SupplierEmail], [ShopName], [City], [SupplierType]) VALUES (@SupplierName, @SupplierPhone, @SupplierAddress, @SupplierEmail, @ShopName, @City, @SupplierType)" SelectCommand="SELECT * FROM [Suppliers]" UpdateCommand="UPDATE [Suppliers] SET [SupplierName] = @SupplierName, [SupplierPhone] = @SupplierPhone, [SupplierAddress] = @SupplierAddress, [SupplierEmail] = @SupplierEmail, [ShopName] = @ShopName, [City] = @City, [SupplierType] = @SupplierType WHERE [SupplierID] = @SupplierID">
            <DeleteParameters>
                <asp:Parameter Name="SupplierID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="SupplierPhone" Type="String" />
                <asp:Parameter Name="SupplierAddress" Type="String" />
                <asp:Parameter Name="SupplierEmail" Type="String" />
                <asp:Parameter Name="ShopName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="SupplierType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="SupplierPhone" Type="String" />
                <asp:Parameter Name="SupplierAddress" Type="String" />
                <asp:Parameter Name="SupplierEmail" Type="String" />
                <asp:Parameter Name="ShopName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="SupplierType" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <hr />
    </div>
</asp:Content>
