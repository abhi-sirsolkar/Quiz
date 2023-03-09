<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%--Bootstrap css--%>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%--Datatables css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <%--Fontawsome.css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%--JQuery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--Popper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--Bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="images/imgs/generaluser.png" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Login</h3>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder ="Email ID" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email ID" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                               
                                   <div class="form-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder ="Password" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                   </div>

                                    <div class ="form-group">
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                        
                                    <div class ="form-group">

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <a href="Signup.aspx"><< New User? Click here...</a>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
