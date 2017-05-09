<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="validate.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>

<div class="head">
    <h1>New Aadhaar Enrollment Form <style> h1 	{text-align: center}  </style> </h1>
</div>

<div class="container">
    <div class="row">
        <div class="board">
            <ul class="nav nav-tabs">
                <div class="liner"></div>
                <li rel-index="0" class="active">
                    <a href="#step-1" class="btn" aria-controls="step-1" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-user"></i></span>
                    </a>
                </li>
                <li rel-index="1">
                    <a href="#step-2" class="btn disabled" aria-controls="step-2" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-heart"></i></span>
                    </a>
                </li>
                <li rel-index="2">
                    <a href="#step-3" class="btn disabled" aria-controls="step-3" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-plus"></i></span>
                    </a>
                </li>
                <li rel-index="3">
                    <a href="#step-4" class="btn disabled" aria-controls="step-4" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-ok"></i></span>
                    </a>
                </li>
            </ul>
        </div>
        <form action="insert.jsp" method="post">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="step-1">
                
                <div class="col-md-12">
                    <h3>Personal Information</h3>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Full Name</label>
                            <input name="fname" maxlength="100" type="text" required="required" class="form-control"  placeholder="Enter Name"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Date of Birth</label>
                            <input name="dob" maxlength="10" type="text" required="required" class="form-control" placeholder="dd-mm-yyyy"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="subject">
                                Gender</label>
                            <select id="subject" name="gender" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option>Male</option>
                                <option>Female</option>              
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label  class="control-label">Proof Of Identity (POI) Ex: PAN Card</label>
                            <input name="poi" maxlength="100" type="text"  class="form-control" placeholder="Driving Licence" />
                        </div>
                    </div> 
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Full Address</label>
                            <input name="addr"  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Address"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">City</label>
                            <input name="city"  maxlength="40" type="text" required="required" class="form-control" placeholder="Enter City"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">PIN</label>
                            <input name="pin"  maxlength="6" type="text" required="required" class="form-control" placeholder="Enter PIN Code"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">State</label>
                            <input name="state" maxlength="10" type="text" required="required" class="form-control" placeholder="Enter State"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Mobile Number</label>
                            <input name="phone"  maxlength="14" type="text" required="required" class="form-control" placeholder="9035192568"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Email</label>
                            <input name="email"  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Email"  />
                        </div>
                    </div>
                
                    <button id="step-1-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            </form>
            <div role="tabpanel" class="tab-pane" id="step-2">
                <div class="col-md-12">
                    <button id="step-2-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="step-3">
                <div class="col-md-12">
                    <button id="step-3-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="step-4">
                <div class="col-md-12">
                    <button id="step-4-next" class="btn btn-lg btn-primary pull-right">Continue</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="validate.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>