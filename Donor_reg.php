<?php
include("config.php");?>
 <!DOCTYPE html>
<html lang="en">
<head>
<?php include("head.php");?>
 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .panel {
            margin-top: 50px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</head>

 
<body>


<?php
include("top_nav.php");
?>
<?php
 
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $name = $_POST["NAME"];
    $father_name = $_POST["FATHER_NAME"];
    $gender = $_POST["GENDER"];
    
    // Convert date format from DD/MM/YYYY to YYYY-MM-DD
    $dob = DateTime::createFromFormat('d/m/Y', $_POST["DOB"])->format('Y-m-d');
    
    $blood = $_POST["BLOOD"];
    $body_weight = $_POST["BODY_WEIGHT"];
    $email = $_POST["EMAIL"];
    $state = $_POST["STATE"];
    $country = $_POST["COUNTRY"];
    $contact_1 = $_POST["CONTACT_1"];
    $new_donor = $_POST["NEW_DONOR"];
    $last_d_date = $_POST["LAST_D_DATE"];
    
    // Insert into the database
    $sql = "INSERT INTO blood_donor1 (NAME, FATHER_NAME, GENDER, DOB, BLOOD, BODY_WEIGHT, EMAIL, STATE, COUNTRY, CONTACT_1, NEW_DONOR, LAST_D_DATE)
            VALUES ('$name', '$father_name', '$gender', '$dob', '$blood', '$body_weight', '$email', '$state', '$country', '$contact_1', '$new_donor', '$last_d_date')";

    if ($con->query($sql) === TRUE) {
        // Trigger an alert after successful insertion
        echo "<script>alert('New donor added successfully.');</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}

// Close the database connection
if (isset($con)) {
    $con->close();
}
?>
<div class="text-center" style="margin-top: 20px;">
    <a href="Donor_reg.php" class="btn btn-success" style="margin: 10px;">Donor Registration</a>
    <a href="request_blood.php" class="btn btn-danger" style="margin: 10px;">Need Blood</a>
</div>
 
 

<div class="panel panel-default">
    <div class="panel-heading text-center">
        <h3>Add New Donor</h3>
    </div>

    <div class="panel-body">
        <form method="post" action="" autocomplete="off" role="form">
            <div class="form-group">
                <label class="control-label text-primary" for="NAME">Name</label>
                <input type="text" placeholder="Full Name" id="NAME" name="NAME" required class="form-control input-sm">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="FATHER_NAME">Father Name</label>
                <input type="text" placeholder="Father Name" id="FATHER_NAME" name="FATHER_NAME" required class="form-control input-sm">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="GENDER">Gender</label>
                <select id="gen" name="GENDER" required class="form-control input-sm">
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="DOB">D.O.B</label>
                <input type="text" placeholder="DD/MM/YYYY" required id="DOB" name="DOB" class="form-control input-sm">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="BLOOD">Blood Group</label>
                <select id="blood" name="BLOOD" required class="form-control input-sm">
                    <option value="">Select Blood</option>
                    <option value="A+">A+</option>
                    <option value="B+">B+</option>
                    <option value="O+">O+</option>
                    <option value="AB+">AB+</option>
                    <option value="A-">A-</option>
                    <option value="B-">B-</option>
                    <option value="O-">O-</option>
                    <option value="AB-">AB-</option>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="BODY_WEIGHT">Body Weight</label>
                <input type="text" required placeholder="Weight in Kgs" name="BODY_WEIGHT" id="BODY_WEIGHT" class="form-control input-sm">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="EMAIL">Email ID</label>
                <input type="email" required name="EMAIL" id="EMAIL" class="form-control" placeholder="Email Address">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="STATE">State</label>
                <input type="text" name="STATE" id="STATE" required class="form-control" placeholder="State">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="COUNTRY">Country</label>
                <input type="text" name="COUNTRY" id="COUNTRY" required class="form-control" placeholder="Country">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="CONTACT_1">Contact-1</label>
                <input type="text" required name="CONTACT_1" id="CONTACT_1" class="form-control" placeholder="Contact No-1">
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="NEW_DONOR">New Donor</label>
                <select name="NEW_DONOR" id="NEW_DONOR" required class="form-control input-sm">
                    <option value="">Select</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label text-primary" for="LAST_D_DATE">Last Blood Donated Date</label>
                <input type="text" name="LAST_D_DATE" value="0000/00/00" id="LAST_D_DATE" placeholder="YYYY/MM/DD" class="form-control input-sm">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit" name="submit">Register Now</button>
            </div>
        </form>
    </div>
</div>

</body>
 
</html>
