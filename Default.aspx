<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CloudWebStorage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cloud Web Storage</title>
    
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
                        <li class ="active"><a href ="Default.aspx">Home</a></li>
                        <li> <a href ="SignIn.aspx">Sign In</a> </li>
                        <li> <a href ="SignUp.aspx">Sign Up</a> </li>
                    </ul>
                   
                   
                </div>

            </div>



            </div>

            <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/sea-sound.jpg" alt="We will secure your data" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/sea-sound123.jpg" alt="Distributed system" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/index_slide13.jpg" alt="We will be watch over the data" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        </div>

        <footer>
            <div class ="container">
                <p class ="pull-right"><a href ="#">Back to top</a></p>
                <p>2021&copy;Cloud Web Storage.com &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About Us</a>&middot;</p>
            </div>

        </footer>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
   
</body>
</html>
