<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
        crossorigin="anonymous">
    <title>Student Informatica</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Student Informatica</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                    <button class="btn btn-outline-danger" onclick="location.href='Logout.aspx'" type="submit">
                        Logout</button>
                </form>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <asp:GridView ID="gv_details" runat="server" AutoGenerateColumns="false" OnRowEditing="gv_details_RowEditing">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("std_id")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Frist Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("std_fname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_fname" runat="server" Text='<%#Eval("std_fname")%>'></asp:TextBox>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_fname" runat="server" ControlToValidate="txt_fname" ErrorMessage="<br>Please Enter First Name" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_lname" runat="server" Text='<%#Eval("std_lname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_lname" runat="server" Text='<%#Eval("std_lname")%>'></asp:TextBox>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_lname" runat="server" ControlToValidate="txt_lname" ErrorMessage="<br>Please Enter Last Name" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("std_gender")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:RadioButton ID="rb_male" runat="server" GroupName="rbg_gender" Text="Male" Checked="true" />
                            <asp:RadioButton ID="rb_female" runat="server" GroupName="rbg_gender" Text="Female" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact">
                        <ItemTemplate>
                            <asp:Label ID="lbl_contact" runat="server" Text='<%#Eval("std_contact")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_contact" runat="server" Text='<%#Eval("std_contact")%>'></asp:TextBox>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_contact" runat="server" ControlToValidate="txt_contact" ErrorMessage="<br>Please Enter Contact Number" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("std_email")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_email" runat="server" Text='<%#Eval("std_email")%>'></asp:TextBox>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="<br>Please Enter Email Address" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lbl_state" runat="server" Text='<%#Eval("state_name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddl_state" runat="server">
                            </asp:DropDownList>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_state" runat="server" ControlToValidate="ddl_state" ErrorMessage="<br>Please Select State" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("city_name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddl_city" runat="server">
                            </asp:DropDownList>
                            <span style="color: red;">
                                <asp:RequiredFieldValidator ID="rfv_city" runat="server" ControlToValidate="ddl_city" ErrorMessage="<br>Please Select City"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pincode">
                        <ItemTemplate>
                            <asp:Label ID="lbl_pincode" runat="server" Text='<%#Eval("std_pin")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_pincode" runat="server" Text='<%#Eval("std_pin")%>'>
                            </asp:TextBox><span style="color: red;"><br />
                                <asp:RequiredFieldValidator ID="rfv_pincode" runat="server" ControlToValidate="txt_pincode" ErrorMessage="<br>Please Enter Pincode"></asp:RequiredFieldValidator>
                            </span>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="btn_edit" runat="server" Text="Edit" CommandName="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            
        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
     <script>
         $(document).ready(function () {
             $("#<%= ed_city %> option[data-state!=0]").hide();
            $("#<%= ed_state %>").change(function () {
                $("#<%= ed_city %>").val("");
                $("#<%= ed_city %> option[data-state!=0]").hide();
                $("#<%= ed_city %> option[data-state=" + $(this).val() + "]").show();
            });
        });
    </script>
</body>
</html>
