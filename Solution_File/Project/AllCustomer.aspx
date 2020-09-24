<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllCustomer.aspx.cs" Inherits="Project.AllCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="card-body col-10 offset-1 text-center">Customer Informations</h1>
        <hr />
        <div class="table active">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" ForeColor="Green" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="ProjectDatabaseDS">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:TemplateField HeaderText="Customer Name" SortExpression="CustomerName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth" SortExpression="DoB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DoB") %>'></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DoB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" SortExpression="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-default" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ProjectDatabaseDS" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerName], [PhoneNumber], [DoB], [Gender], [Address], [email], [City]) VALUES (@CustomerName, @PhoneNumber, @DoB, @Gender, @Address, @email, @City)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CustomerName] = @CustomerName, [PhoneNumber] = @PhoneNumber, [DoB] = @DoB, [Gender] = @Gender, [Address] = @Address, [email] = @email, [City] = @City WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DoB" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DoB" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div> 
        <asp:Button ID="Button1" runat="server" Text="Back to Default Page" CssClass="btn btn-block bg-primary" PostBackUrl="~/Default.aspx" />
    </div>
   
</asp:Content>
