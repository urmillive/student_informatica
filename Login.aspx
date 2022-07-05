<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Informatica</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container my-3">
            <div class="row">
                <div class="col-offset-2"></div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <asp:TextBox type="text" class="form-control" ID="username" runat="server" />
                        <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="* Username is Required" CssClass="text-valid text-danger pl-2" ControlToValidate="username" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                     <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox type="text" class="form-control" ID="password" runat="server" />
                         <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="* Password is Required" CssClass="text-valid text-danger pl-2" ControlToValidate="password" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Button runat="server" Text="Login" CssClass="btn btn-success" OnClick="login"/>
                        <a href="Signup.aspx">SignUp</a>
                    </div>
                </div>
                </div>
            </div>
    </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
