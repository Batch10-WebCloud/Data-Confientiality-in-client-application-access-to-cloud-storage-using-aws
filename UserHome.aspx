<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="CloudWebStorage.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>

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
                        <li> <a href ="SignIn.aspx">Sign In</a> </li>
                        <li> <a href ="SignUp.aspx">Sign Up</a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass ="btn btn-default navabar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click" />

                        </li>
                   
                    </ul>
                   
                   
                </div>

            </div> 
                       <asp:Label ID="lblSuccess" runat="server" CssClass ="text-success" ></asp:Label>        
            </div>
                         
        </div>
             </div>
             
                  <div class ="center-page">
            
                <br />
                      <br />
                      <br />
                      <br />
                      
                 <div class ="col-xs-11">
                     <asp:Label ID="Label1" runat="server" Text="Upload and Download:"></asp:Label>
                     <asp:Button ID="Button1" runat="server" Text="Click Here" OnClick="Button1_Click" />

                        
                        
                 </div>
                      <br />
                     
                     
                  
          

             

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
