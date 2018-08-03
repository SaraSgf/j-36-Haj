<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HAKATHON.MainPage" %>

<!DOCTYPE html>
<script runat="server">
    </script>
<html>
<head>
<style type="text/css">

@import url(https://fonts.googleapis.com/earlyaccess/amiri.css);


body{
	  font-family:'Amiri', serif;
      background-image:url('Body.jpg');
	 }
	 
#header{
	  background-color:white;
	  height:130px;
	  position: fixed;
		right: 0;
		top: 0;
		width: 100%;
		margin-bottom:500px;
	  
	
	  }


	  
#Box{
background-color:white;
background: rgba(255, 255, 255, 0.48);
   padding: 150px;
   margin-top: 200px;
   margin-right:-50px;
   margin-left: -50px;
   margin-bottom : -50px;
   height:200px;
   padding-top:50px;
    
}



#circle2 {

    width: 150px;
    height: 150px;
    -webkit-border-radius: 25px;
    -moz-border-radius: 25px;
    border-radius: 150px; 
	float:right;
	margin-right:390px;
	
}

#circle3 {

    width: 150px;
    height: 150px;
    -webkit-border-radius: 25px;
    -moz-border-radius: 25px;
    border-radius: 150px; 
	float:right;
	margin-right:170px;

	
}

#Box3{
background-color:Gray;
 background: rgba(128, 128, 128, 0.80);
   padding: 5px;
   margin-top: -50px;
   margin-right: 150px;
   float:left;
   height:30px;
    width: 1500px;
	padding-top:-30px;
	margin-left:-20px;
	text-align:center;
    }


input[type=submit] {
font-family:'Amiri', serif;
    width:15%;
    background-color:#808081;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
	float:right;
	margin-right:110px;
}
input[type=submit]:hover {
    background-color: ##FFFFFF;
}


	   
</style>

</head>

<body>

<div id="header">
<img src="LOGO.png" alt="Haram" align="right" style="width:150px; height:120px;">
<p style="color:white;"> ... </p>
</div>

<div  align="center" id="Box3" >

<div id="menubar" style="color:white;" >
    <span><a href='MainPage.aspx' style="color:white;" title="Go to the WebStore homepage.">الصفحة الرئيسية  |</a></span>
<span><a href='#About' style="color:white;" title="Go to the WebStore about us.">عـنّـا  |</a></span>
    <span><a href='#Cont' style="color:white;" title="Go to the WebStore contact.">للتواصل  |</a></span>

</div>
</div>



<div  align="center" id="Box">


    <br /><br />
<div id="circle2">

<img src="Hajj1.png" alt="KAU" align="center" style="width:150px;height:150px;">
</div>

<div id="circle3">

<img  src="Omra.png" alt="KAU" align="center" style="width:150px;height:150px;">
</div>



<div  style="margin-top:150px; margin-right:-10px; " align="center">

<form style="direction:rtl;">
 <form id="form1" runat="server">
    <div  style="margin-right:320px; "  align="center">

    <asp:Button ID="Button2" runat="server" Text="حــج"  OnClick="Button2_Click" />

        <asp:Button ID="Button3" runat="server" Text="عـمـرة" OnClick="Button3_Click"  />

        </div>
        </div>
        <div style="margin-right:-25px; "  align="center">

</div>
</form></form>

    <br /><br />
</div>
        <br /><br />
    <br /><br />
    <br /><br />

    <div  align="right" id="About" style="height:20px; margin-bottom:50px; background: rgba(128, 128, 128, 0.80); color:white; padding: 150px;
   margin-top: 200px;margin-right:-50px;margin-left: -50px;margin-bottom : -50px;padding-top:50px;">
      <br /><br />
        :عـنّــا 
        <br />
         (موقع إلكتروني لتسهيل إدارة الحشود في المشاعر المقدسة كـ ( منى , عرفة , مزدلفة , الحرم الشريف  <br />
        ليسهل على زائر بيت الله من حاج ومعتمر اختيار الوقت المناسب لإدائها   <br />
        خاصة لمريضي الربو وكبار السن الذين يصعب عليهم أداءها مع الزحام  
        <br /><br />
    </div>

    <br /><br /><br />
       <div  align="right" id="Cont" style="height:80px; margin-bottom:50px;background: rgba(128, 128, 128, 0.80); color:white; padding: 150px;
   margin-top: 200px;margin-right:-50px;margin-left: -50px;margin-bottom : -50px;padding-top:50px;">
             : تواصل معنا عن طريق 
            <br />
           Malaa@gmail.com :  البريد الإلكتروني 
           <br />
           الجوال : 0501382659
          <br />
         @Malaa : تويتر 

    </div>
</footer>
<footer>
    </footer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Malaa_ConnectionString %>" ProviderName="<%$ ConnectionStrings:Malaa_ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [all_columns]"></asp:SqlDataSource>
</body>
</html>