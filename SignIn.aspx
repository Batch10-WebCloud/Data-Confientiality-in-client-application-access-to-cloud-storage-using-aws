<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="CloudWebStorage.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>

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
                        <li class ="active"> <a href ="SignIn.aspx">Sign In</a> </li>
                        <li> <a href ="SignUp.aspx">Sign Up</a> </li>
                    </ul>
                   
                   
                </div>

            </div>



            </div>

        </div>
<br />
                    <br />
                    <br />
        <div class ="center-page">
            <div class ="form-horizontal">
                <h2>Login Form</h2>
                <hr/>
                <div class ="form-group">
                 <asp:Label ID="Label1" CssClass ="col-md-2 control-label" runat="server" Text="Username"></asp:Label>
                 <div class ="col-md-11">
                     <asp:TextBox ID="txtUsername" CssClass ="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass ="text-danger" ErrorMessage="Enter Username" Font-Bold="True" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                 </div>
             </div>

                      <div class ="form-group">
            
                 <asp:Label ID="Label2" CssClass ="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                 <div class ="col-md-11">
                     <asp:TextBox ID="txtPass" CssClass ="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" CssClass ="text-danger" ErrorMessage="Enter Password" Font-Bold="True" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                 </div>
             </div>
                      <div class ="form-group">
                         
                          <div class ="col-md-6">
            
                 <asp:Label ID="Label3" CssClass = "control-label" runat="server" Text="Remember Me"></asp:Label>
                     <asp:CheckBox ID="CheckBox1" runat="server" />
                            
                 <div class ="col-xs-11">
            <br />
                    
                 <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" ></asp:Button>
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                 <br />
                     <asp:Label ID="lblError" CssClass ="text-danger" runat="server" ></asp:Label>
                 </div>
             </div>
                       
                 </div>
             </div>
                          

          
                </div>    
                   

                    </div>
                    <hr />
            <footer class="footer-pos">
            <div class ="container">
                <p class ="pull-right"><a href ="#">Back to top</a></p>
                <p>2021&copy;Cloud Web Storage.com &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About Us</a>&middot;</p>
            </div>
                
        </footer>

    </form>
</body>
</html>
