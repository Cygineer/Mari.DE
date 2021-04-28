<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Slick Slider Test</title>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css'><link rel="stylesheet" href="./style.css">
<style type="text/css">



.wrapper{
  width:100%;
  padding-top: 10px;
  text-align:center;
}
h2{
  font-family:sans-serif;
  color:#fff;
}
.carousel{
  width:70%;
  margin:0px auto;
}
.slick-slide{
  margin:10px;
}
.slick-slide img{
  width:112%;
  border: 2px solid #fff;
}


</style>
<!-- partial -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.js'></script><script  src="./script.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	  $('.carousel').slick({
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  dots:true,
	  centerMode: true,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  responsive: [
	        {
	          breakpoint: 1024,
	          settings: {
	            slidesToShow: 3,
	            slidesToScroll: 1
	          }
	        },
	        {
	          breakpoint: 600,
	          settings: {
	            slidesToShow: 2,
	            slidesToScroll: 1
	          }
	        },
	        {
	          breakpoint: 480,
	          settings: {
	            slidesToShow: 1,
	            slidesToScroll: 1
	          }
	        }
	      ]
	  });
	});

</script>
</head>
<body>



	<!-- partial:index.partial.html -->
	<div class="wrapper">
		<div class="carousel">
			<div>
				<img src="image/01.jfif">
			</div>

			<div>
				<a href="#"> <img src="image/02.png">
				</a>
			</div>
			<div>
				<img src="image/03.jfif">
			</div>
			<div>
				<img src="image/01.jfif">
			</div>
			<div>
				<img src="image/02.png">
			</div>
		</div>
	</div>



</body>
</html>
				                            