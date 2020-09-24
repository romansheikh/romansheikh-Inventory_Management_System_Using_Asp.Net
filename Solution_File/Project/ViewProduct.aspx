<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Project.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container col-10 offset-1">
        <h1 class="card-header text-center">All Product Informaition</h1>
        <hr />
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-success" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Productid" DataSourceID="ProductDS">
            <Columns>
                <asp:BoundField DataField="Productid" HeaderText="Productid" InsertVisible="False" ReadOnly="True" SortExpression="Productid" />
                <asp:TemplateField HeaderText="Category" SortExpression="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="PurchasePrice" HeaderText="PurchasePrice" SortExpression="PurchasePrice" />
                <asp:BoundField DataField="SalesPrice" HeaderText="SalesPrice" SortExpression="SalesPrice" />
                <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:DynamicField DataField="Images" HeaderText="Images" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProductDS" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Product] WHERE [Productid] = @Productid" InsertCommand="INSERT INTO [Product] ([Category], [ProductName], [PurchasePrice], [SalesPrice], [Supplier], [Quantity], [Images]) VALUES (@Category, @ProductName, @PurchasePrice, @SalesPrice, @Supplier, @Quantity, @Images)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Category] = @Category, [ProductName] = @ProductName, [PurchasePrice] = @PurchasePrice, [SalesPrice] = @SalesPrice, [Supplier] = @Supplier, [Quantity] = @Quantity, [Images] = @Images WHERE [Productid] = @Productid">
            <DeleteParameters>
                <asp:Parameter Name="Productid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="PurchasePrice" Type="Decimal" />
                <asp:Parameter Name="SalesPrice" Type="Decimal" />
                <asp:Parameter Name="Supplier" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Images" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="PurchasePrice" Type="Decimal" />
                <asp:Parameter Name="SalesPrice" Type="Decimal" />
                <asp:Parameter Name="Supplier" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Images" Type="Object" />
                <asp:Parameter Name="Productid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
