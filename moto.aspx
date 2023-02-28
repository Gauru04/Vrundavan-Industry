<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage1.master" AutoEventWireup="true" CodeFile="moto.aspx.cs" Inherits="User_moto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="moto">

        
    <div class="moto1">

        
                  <style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
                      .auto-style1 {
                          width: 100%;
                      }
                      .auto-style2 {
                          height: 161px;
                      }
                      .auto-style3 {
                          height: 62px;
                      }
                      .auto-style4 {
                          height: 161px;
                          width: 603px;
                      }
                      .auto-style5 {
                          height: 62px;
                          width: 603px;
                      }
                      .auto-style6 {
                          height: 161px;
                          width: 349px;
                      }
                      .auto-style7 {
                          height: 62px;
                          width: 349px;
                      }
                  </style>
</head>
<body>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
    <img src="../Product/moto%20shaft%202.jpg"style="width:100%" />
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
    <img src="../Product/moto%20shaft.jpg" style="width:100%"/>
  <div class="text">Caption Two</div>
</div>


<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>




    </div>

        
    <div class="moto2" style="font-family: Arial; font-size: 20px">

        

        <br />
        <br />
        Moto shaft :<br />
        <br />
&nbsp;The shaft in a motor is a cylindrical component that extrudes out from the motor and its housing. The purpose of the shaft is to convert energy from themotor into the end use application. Precision pins and shafts operate as a function of speed vs torque. When no load is applied to the shaft, it will run at its fastest speed for that voltage with near zero torque. When enough load is applied to the shaft that it stops spinning entirely and its speed becomes zero, it will generate the maximum amount of torque for that voltage and is said to be operating at stall torque. DC motors are designed to run under low torque and are considered to exhibit optimal performance when the shaft is running at the medium between zero load and stall torque.

        

    </div>


    </div>
    
    <div class="sug5">

        

        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="20pt" Text="Related Products"></asp:Label>
        <br />
        <br />
&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image11" runat="server" Height="153px" ImageUrl="~/Product/helical gear5.jpg" Width="269px" />
                </td>
                <td class="auto-style6">
                    <asp:Image ID="Image12" runat="server" Height="161px" ImageUrl="~/Product/output shaft 6.jpg" Width="238px" />
                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image13" runat="server" Height="157px" ImageUrl="~/Product/Internal And External Super Gear2.jpg" Width="276px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink8" runat="server" Font-Names="Arial" Font-Size="15pt" Font-Underline="False" ForeColor="Black" NavigateUrl="~/User/hel.aspx">Helical Gear</asp:HyperLink>
                </td>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink9" runat="server" Font-Names="Arial" Font-Size="15pt" Font-Underline="False" ForeColor="Black" NavigateUrl="~/User/out.aspx">Output Shaft</asp:HyperLink>
                </td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink10" runat="server" Font-Names="Arial" Font-Size="15pt" Font-Underline="False" ForeColor="Black" NavigateUrl="~/User/super.aspx">Internal And External Super Gear</asp:HyperLink>
                </td>
            </tr>
        </table>

        

    </div>


</asp:Content>

