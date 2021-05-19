<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/bootstrap.min.css">
<link rel="stylesheet" href="/lib/w3.css">
<script src="/lib/jquery-1.12.2.min.js"></script>
<script src="/lib/bootstrap.min.js"></script>
<style>
.mySlides {
	display:none
}
	
.w3-btn {
	border-radius:50px;
}	
.w3-section{
	position:relative;
	bottom: 210px;
}
.radio{
	position:relative;
	text-align:center;
	left:13px;
	bottom:50px;
}
#left{
	float: left;
	left: 30px;
}
#right{
	position:relative;
	left: 60px;	
}

</style>
<body>

<div class="w3-content" style="max-width:800px">
  <img class="mySlides" src="image/banner01.jpg" style="width:190%">
  <img class="mySlides" src="image/banner02.jpg" style="width:190%">
  <img class="mySlides" src="image/banner01.jpg" style="width:190%">
</div>

<div class="w3-center">
  <div class="w3-section">
     <a class="left carousel-control"><span id="left" class="glyphicon glyphicon-chevron-left" aria-hidden="true"  onclick="plusDivs(-1)"></span></a>
     <a class="right carousel-control"><span id="right" class="glyphicon glyphicon-chevron-right" aria-hidden="true"  onclick="plusDivs(1)"></span></a>
  </div>
   <form role="form">
    <div class="radio">
      <label><input type="radio" name="optradio" class="w3-btn demo" onclick="currentDiv(1)"></label>    
      <label><input type="radio" name="optradio" class="w3-btn demo" onclick="currentDiv(2)"></label>
      <label><input type="radio" name="optradio" class="w3-btn demo" onclick="currentDiv(3)"></label>
    </div>
  </form>
</div>


<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-red", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-red";
}
</script>

</body>
</html> 
