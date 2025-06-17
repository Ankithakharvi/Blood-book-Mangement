<?php include("config.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Need Blood To Save Life</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<?php
include("top_nav.php");
?>
<div class="container" style='margin-top:70px;'>
    <!-- <div class="row">
        <div class="col-lg-12">
            <h3 class="text-primary">
                <i class='fa fa-heart'></i> Need Blood To Save Life
            </h3>
            <hr>
        </div>
    </div> -->
    <div class="text-center" style="margin-top: 20px;">
    <a href="Donor_reg.php" class="btn btn-success" style="margin: 10px;">Donor Registration</a>
    <a href="request_blood.php" class="btn btn-danger" style="margin: 10px;">Need Blood</a>
</div>

    <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title text-center" style="padding:5px;font-size:16px;font-weight:bold">
                        <span class="fa fa-envelope"> </span> Need Blood To Save Lives
                    </h3>
                </div>
                <div class="panel-body">
                    <p id="errorBox"></p>

                    <?php
                    if (isset($_POST["submit"])) {
                        foreach ($_POST as $key => $value) {
                            $_POST[$key] = mysqli_real_escape_string($con, $value);
                        }

                        $sql = "INSERT INTO request_blood(
                                    NAME, GENDER, BLOOD, BUNIT, HOSP, CITY, PIN, DOC, RDATE, 
                                    CNAME, EMAIL, CON1, CON2, REASON, CADDRESS)
                                VALUES(
                                    '{$_POST["NAME"]}', '{$_POST["GENDER"]}', '{$_POST["BLOOD"]}', 
                                    '{$_POST["BUNIT"]}', '{$_POST["HOSP"]}', '{$_POST["CITY"]}', 
                                    '{$_POST["PIN"]}', '{$_POST["DOC"]}', '{$_POST["RDATE"]}', 
                                    '{$_POST["CNAME"]}', '{$_POST["EMAIL"]}', '{$_POST["CON1"]}', 
                                    '{$_POST["CON2"]}', '{$_POST["REASON"]}', '{$_POST["CADDRESS"]}')";

                        if ($con->query($sql)) {
                            echo "<div class='alert alert-success fade in'>
                                <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                <strong>Success:</strong> Your blood request has been submitted successfully.
                            </div>";
                        } else {
                            echo "<div class='alert alert-danger fade in'>
                                <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                <strong>Error:</strong> Could not submit request. Please try again later.
                            </div>";
                        }
                    }
                    ?>

                    <form autocomplete="off" method="post" action="">
                        <div class="form-group">
                            <label class="control-label text-primary">Patient Name</label>
                            <input type="text" name="NAME" required class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Gender</label>
                            <select name="GENDER" required class="form-control input-sm">
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Required Blood Group</label>
                            <select name="BLOOD" required class="form-control input-sm">
                                <option value="">Select Blood</option>
                                <option>A+</option><option>B+</option><option>O+</option><option>AB+</option>
                                <option>A1+</option><option>A2+</option><option>A1B+</option><option>A2B+</option>
                                <option>A-</option><option>B-</option><option>O-</option><option>AB-</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Need Unit Of Blood</label>
                            <input type="text" name="BUNIT" required class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Hospital Name & Address</label>
                            <textarea name="HOSP" rows="3" required class="form-control" style="resize:none;"></textarea>
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">City</label>
                            <input type="text" name="CITY" required class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Pincode</label>
                            <input type="text" name="PIN" required class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Doctor Name</label>
                            <input type="text" name="DOC" class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">When Required</label>
                            <input type="text" name="RDATE" class="form-control input-sm" placeholder="MM/DD/YYYY">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Contact Name</label>
                            <input type="text" name="CNAME" class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Address</label>
                            <textarea name="CADDRESS" rows="3" required class="form-control" style="resize:none;"></textarea>
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Email ID</label>
                            <input type="email" name="EMAIL" class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Contact No-1</label>
                            <input type="text" name="CON1" class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Contact No-2</label>
                            <input type="text" name="CON2" class="form-control input-sm">
                        </div>

                        <div class="form-group">
                            <label class="control-label text-primary">Reason For Blood</label>
                            <textarea name="REASON" rows="3" required class="form-control" style="resize:none;"></textarea>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary" name="submit"><i class="fa fa-send"></i> Request Now</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function () {
        $("form").submit(function () {
            let unit = $("input[name='BUNIT']").val();
            if (isNaN(unit)) {
                $("#errorBox").html("<div class='alert alert-danger'><strong>Warning:</strong> Unit should be numeric.</div>");
                $("input[name='BUNIT']").focus();
                return false;
            }
        });
    });
</script>

</body>
</html>
