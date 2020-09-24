<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/popper.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <title></title>
    <style>
        body{
            background-color: cornflowerblue;
        }
        #form2 {
        border-radius:25px 0px;
        height: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <br /><br />
      <div class="card col-8 offset-4" style="width: 20rem;" id="form2">
  <img class="card-img-top" src="images/slide01 copy.jpg" alt="Card image cap">
  <div class="card-body">
      <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="User Name "></asp:TextBox> <br />
      <asp:TextBox ID="password" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password"></asp:TextBox>
      <hr />
      <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn-block alert-dark" OnClick="login_Click" />
  </div>
</div>
    </form>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</body>
</html>
