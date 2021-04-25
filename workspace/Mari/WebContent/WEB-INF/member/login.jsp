<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> 
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700');

.login{
   font-family: 'Josefin Sans', sans-serif;
   background: #f4f4f4; 
   padding:70px 0px;
}

h1{
    font-weight:600;
    font-family: 'Josefin Sans', sans-serif;
    text-transform:capitalize;
    text-align:center;
    color:#FFF;
    background:orange;
    padding:25px 0px;
}


label{
    font-weight:400;
    font-size:15px;
}
.form-control {
    background-color: white;
    box-shadow: none;
    color: #565656;
    font-size:14px;
    padding:30px 10px;
    margin-bottom:30px;
    border: 1px solid #f1f1f1;
}


.btn{ 
    background: #72d6f5;
    color: #FFF;
    border-radius: 6px;
    margin: 0 auto;
    height: 48px;
    line-height: 38px;
    display: table;
    font-size: 15px;
    width: 100%;
}

.btn:hover{
    background:#FFF;
    border:2px solid #24acb3;
}

.forgot{
    text-align:center;
    margin-top:30px;
    font-size:16px;
}









</style>
</head>
<body>

<div class="login">
   <div class="container">
       <div class="col-lg-6 col-lg-offset-3">
           <div class="inner-form">
            
                <h1>MARIN.DE</h1> 
            
               <form role="form">
        		   <div class="row">
        		          
    			    	<div class="col-lg-12 col-xs-12">
    			    	    <label>Email</label>
    			    	    <div class="form-group">
    			    			<input type="email" name="email" id="email" class="form-control" placeholder="">
    			    		</div>
    			    	</div>
    			    	
    			    	<div class="col-lg-12 col-xs-12">
    			    	    <label>Password</label>
    			    	    <div class="form-group">
    							<input type="password" name="password" id="password" class="form-control" placeholder="">
    			    		</div>
    			    	</div>
    			    	
    					<div class="col-lg-12 col-xs-12">
    					    <button type="submit" class="btn btn-default">
    							<span>LOGIN</span>
    						</button>
    					</div>
    					
    					<div class="col-lg-12 col-xs-12">
        					<div class="forgot">
        				    	<p>Forgot Password or Email ?</p>
        					</div>
    					</div>
    						
        			 </div>
        	     </form>
    	    
            </div> <!-- inner-form -->
		</div>   
	</div>   
</div> 


</body>
</html>