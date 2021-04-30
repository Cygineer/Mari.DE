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
  width:90%;
  padding-top: 0px;
  text-align:center;
}
h2{
  font-family:sans-serif;
  color:#fff;
}
.carousel{
  width:107%;
  height:110%;
  margin:0px auto;
  left: 28px;
}
carousel.div{
	bottom: 20px;
}

.slick-slide{
  margin:10px;
}
.slick-slide img{
  width:130%;
  height:500px;
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
				<a href="#"> <img src="image/01.jfif">
				</a>
			</div>

			<div>
				<a href="#"> <img src="image/02.png">
				</a>
			</div>
			<div>
				<a href="#"> <img src="image/03.jfif">
				</a>
			</div>
			<div>
				<a href="#"> <img src="image/04.jfif">
				</a>
			</div>
			<div>
				<a href="#"> <img src="image/05.png">
				</a>
			</div>
			<div>
				<a href="#"> <img src="image/06.jfif">
				</a>
			</div>
		</div>
	</div>



</body>
</html>
				                            