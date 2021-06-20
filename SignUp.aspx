<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CloudWebStorage.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8" />
    <meta name="viewport" content ="width=device-width", initialscale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

              <div class="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container">
                <div class="navbar-header">
                  <button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class ="sr-only">Toggle Navigation</span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>
                      </button>
                    <a class="navbar-brand" href ="Default.aspx"><span><img src="images/logo.png" alt="Cloud Web Storage" height="30" /></span>Cloud Web Storage</a>
                </div>

                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a></li>
                        <li> <a href ="SignIn.aspx">Sign In</a> </li>
                        <li class ="active"> <a href ="SignUp.aspx">Sign Up</a> </li>
                    </ul>
                   
                   
                </div>

            </div>



            </div>

        </div>
        <div class="center-page">

            <label class="col-xs-11">Username:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" CssClass="form-control" placeholder="Enter Your Correct Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Full Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your Full name"></asp:TextBox>
            </div>
            <label class="col-xs-11">Email :</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email Id" TextMode="Email"></asp:TextBox>
            </div>
            <br />
            <br />
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="txtSignup" Class="btn btn-success" runat="server" Text="Submit" OnClick="txtSignup_Click" />
                
                <asp:Label ID="lblMsg" runat="server" ></asp:Label>
                
            </div>
            </div>
        <br />
        <br />
        <br />
            <footer class="footer-pos">
            <div class ="container">
                <p class ="pull-right"><a href ="#">Back to top</a></p>
                <p>2021&copy;Cloud Web Storage.com &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About Us</a>&middot;</p>
            </div>

        </footer>
    </form>
</body>
</html>
