<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hajj.aspx.cs" Inherits="HAKATHON.Hajj" %>

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
      background: rgba(255, 255, 255, 0.60);

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
   padding-top:50px;  
   height:900px;
}

#circle1 {
background-color:gray;
 background: rgba(128, 128, 128, 0.80);
    width: 300px;
    height: 400px;
  border-radius:10px;
	float:right;
	margin-right:120px;
	
}

#circle2 {
background-color:gray;
 background: rgba(128, 128, 128, 0.80);
    width: 300px;
    height: 400px;
  border-radius:10px;
	float:right;
	margin-right:120px;
}

#circle3 {
background-color:gray;
 background: rgba(128, 128, 128, 0.80);
    width: 300px;
    height: 400px;
  border-radius:10px;
	float:right;
	margin-right:120px;
	
}

#circle4 {
background-color:gray;
 background: rgba(128, 128, 128, 0.80);
    width: 300px;
    height: 400px;
  border-radius:10px;
	float:right;
	margin-right:120px;
	
}
	
#Box3{
background-color:Gray;
 background: rgba(128, 128, 128, 0.48);
   padding: 5px;
   margin-top: -50px;
   margin-right: 200px;
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

<body  background="Body.JPG">

<div id="header">
<img src="LOGO.png" alt="KAU" align="right" style="width:150px;height:130px;">
<p style="color:white;"> ... </p>
</div>

<div  align="center" id="Box3" >

<div id="menubar" style="color:white; width:100%;" >
<span><a href='MainPage.aspx' style="color:white;" title="Go to the WebStore homepage.">الصفحة الرئيسية  |</a></span>
<span><a href='#About' style="color:white;" title="Go to the WebStore about us.">عـنّـا  |</a></span>
    <span><a href='#Contact' style="color:white;" title="Go to the WebStore contact.">للتواصل  |</a></span>

</div>
</div>



<div  align="center" id="Box">
    <div  style="height:500px; color:white;" >
<div  id="circle1">
<br />
    منى
<br />

<asp:Chart ID="Chart1" runat="server" Height="230px" width="200px" Palette="SeaGreen">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    <br />
   
        عدد الحجاج في الدور الاول من الجمرات  : 2000 حاج 
          <br />
       
    عدد الحجاج في الدور الثاني من الجمرات  : 2000 حاج
      <br />
</div>
    <div  id="circle2">
        <br />
    مزدلفة 

<br />
<asp:Chart ID="Chart2" runat="server" Height="230px" width="200px" Palette="SeaGreen">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
         <br />
   
        عدد الحجاج في وسط مزدلفة  : 10000 حاج 
          <br />
       
    عدد الحجاج في أطراف مزدلفة  : 2000 حاج
      <br />
</div>
    <div  id="circle3">
<br />
    عرفة 

<br />
<asp:Chart ID="Chart3" runat="server" Height="230px" width="200px" Palette="SeaGreen">
       
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
           <br />
   
        عدد الحجاج في جبل الرحمة  : 60000 حاج 
          <br />
       
      <br />
</div>
</div>
  <!-- <div >
    <div  id="circle4">
<br>
<asp:Chart ID="Chart4" runat="server" Height="230px" width="200px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</div>
   <div  id="circle4">
<br>
<asp:Chart ID="Chart5" runat="server" Height="230px" width="200px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</div>
       <div  id="circle4">
<br>
<asp:Chart ID="Chart6" runat="server" Height="230px" width="200px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</div>
</div>
<div  style="margin-top:150px; margin-right:-10px; " align="center">

<form style="direction:rtl;">
 <form id="form1" runat="server">
 
        </div>

        </div>
        <div style="margin-right:-25px; "  align="center">

</div>
</form></form>


</div>*/ -->
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
       <div  align="right" id="Contact" style="height:20px; margin-bottom:50px;background: rgba(128, 128, 128, 0.80); color:white; padding: 150px;
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
</body>
</html>
