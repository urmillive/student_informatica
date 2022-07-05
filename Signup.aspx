<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Informatica</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
        crossorigin="anonymous">
        <script src="jquery.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Student Informatica</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>



    <form id="form1" runat="server">
        <div>

            <div class="container my-3">
                <div class="row">
                    <div class="offset-3"></div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="fn" class="form-label">FirstName</label>
                            <asp:TextBox type="text" class="form-control" ID="fn" runat="server" />
                            <asp:RequiredFieldValidator ID="rfv_fn" runat="server" ErrorMessage="* First Name is Required" CssClass="text-valid text-danger pl-2" ControlToValidate="fn" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="ln" class="form-label">LastName</label>
                            <asp:TextBox type="text" class="form-control" ID="ln" runat="server" />
                            <asp:RequiredFieldValidator ID="rfv_ln" runat="server" ErrorMessage="* Last Name is Required" CssClass="text-valid text-danger pl-2" ControlToValidate="ln" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="rbgenF" class="form-check-label m-3">Gender</label>
                            <asp:RadioButton runat="server" ID="male" Text="Male" CssClass="form-check-inline"
                                Checked="true" GroupName="g" />
                            <asp:RadioButton runat="server" ID="female" Text="Female" CssClass="form-check-inline"
                                Checked="true" GroupName="g" />
                            
                        </div>
                        <div class="mb-3">
                            <label for="contact" class="form-label">Contact</label>
                            <asp:TextBox type="text" class="form-control" ID="contact" runat="server" />
                            <asp:RequiredFieldValidator ID="contact_rfv" runat="server"
                                ErrorMessage="* Please Select Contact"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="contact" Display="Dynamic">
                            </asp:RequiredFieldValidator>

                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <asp:TextBox type="text" class="form-control" ID="email" runat="server" />
                            <asp:RequiredFieldValidator ID="email_rfv" runat="server"
                                ErrorMessage="* Please Select Email"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="email" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="m5" class="form-label">State</label>
                            <asp:DropDownList type="text" class="form-control" ID="ddlState" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="state_rfv" runat="server"
                                ErrorMessage="* Please Select State"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="ddlState" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">

                        
                        <div class="mb-3">
                            <label for="m6" class="form-label">City</label>
                            <asp:DropDownList type="text" class="form-control" ID="ddlCity" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="txt_student_city_rfv" runat="server"
                                ErrorMessage="* Please Select City"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="ddlCity" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="pincode">Pincode</asp:Label>
                            <asp:TextBox ID="pincode" CssClass="form-control" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="txt_student_pincode_rfv" runat="server"
                                ErrorMessage="* Please Select Pincode"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="pincode" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="username">Username</asp:Label>
                            <asp:TextBox ID="username" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="username_rfv" runat="server"
                                ErrorMessage="* Please Select Username"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="username" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="password">Password</asp:Label>
                            <asp:TextBox ID="password" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="password_rfv" runat="server"
                                ErrorMessage="* Please Select Password"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="password" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="conf_password">Confirm Password</asp:Label>
                            <asp:TextBox ID="conf_password" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="conf_password_rfv" runat="server"
                                ErrorMessage="* Password Not Match"
                                CssClass="text-valid text-danger pl-2"
                                ControlToValidate="conf_password" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <asp:Button runat="server" Text="Signup" CssClass="btn btn-success" OnClick="signup" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous">

        </script>
    <script>
        $(document).ready(function () {
            $("#<%= ddlCity.ClientID %> option[data-state!=0]").hide();
             $("#<%= ddlState.ClientID %>").change(function () {
                 console.log($(this).val());
                 $("#<%= ddlCity.ClientID %> option[data-state!=0]").hide();

                $("#<%= ddlCity.ClientID %> option[data-state=" + $(this).val() + "]").show();
            });
         });
    </script>
</body>
</html>
