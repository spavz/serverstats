<html>
<head>
<link rel="stylesheet" href="login.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>

<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form action="MainActivity.jsp" method="post"  role="login">
          <img src="http://iaadhaar.com/wp-content/uploads/sites/20/376x258xaadhaar-logo.png.pagespeed.ic.1UhD0rW_sO.png" class="img-responsive" alt="" />
          <input type="email" name="email" placeholder="Email" required class="form-control input-lg" value="vishak@gmail.com" />
          
          <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="" />
          
          
          <div class="pwstrength_viewport_progress"></div>
          
          
          <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
          <div>
            <a href="#"> Administrator login. Java mini-Project 2017 </a>
          </div>
          
        </form>
        
        <div class="form-links">
          <a href="#">github.com/spavz</a>
        </div>
      </section>  
      </div>
      
      <div class="col-md-4"></div>
      

  </div>
  
  <p>
    <br>
    <br>
    
  </p>     
  
</div>
<script type="text/javascript" src="login.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>