<?php  

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

include 'components/save_send.php';

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <!-- font awesome cdn link  -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
      
 
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/style.css" />
    <title>E-Property</title>
  </head>
  <body>
    <!-- header -->
    <?php include 'components/user_header.php'; ?>
  
    <section class="property-form">
       <div class="container">
       <?php

$userId = $_SESSION['control']["user_id"];

$spot_tenant_res = $conn->query("SELECT `tenant_house`.userid, `tenant_house`.`houseid`, `myusers`.email FROM `tenant_house` LEFT JOIN `myusers` ON (`myusers`.id = `tenant_house`.userid) WHERE `tenant_house`.userid = '$userId' AND `myusers`.usertype = 'Tenant'");

$spot_tenant_row = $spot_tenant_res->fetch_assoc();


?>
           
           <form action="./charge.php" method="post" id="payment-form" >
           <h3 >Property Payment</h3>
             <div class="form-row">
             <div class="box">
        
             <input type="text" name="1" class="input" value="<?php print $_SESSION['control']["name"]; ?>" disabled >
             </div>
             <div class="box">
      
             <input type="text" name="2" class="input" value="Property: <?php print $spot_property_row["propertyid"]; ?>" disabled >
             </div>
             <div class="box">
             <input type="email" name="3" class="input" value="<?php print $_SESSION['control']["email"]; ?>" disabled>
             </div>
             <div class="box">
                 <input type="text" name="amount"  placeholder="enter payment amount" class="input">
             </div>
               <div id="card-element" class="form-control">
                 <!-- a Stripe Element will be inserted here. -->
               </div>

               <!-- Used to display form errors -->
               <div id="card-errors" role="alert"></div>
             </div>

             <button class="btn">Submit Payment</button>
           </form>
         </div>
    </section>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://js.stripe.com/v3/"></script>
  <script src="./js/charge.js"></script>
     
    



     <!-- Footer -->
     <?php include 'components/footer.php'; ?>

     <?php include 'components/message.php'; ?>
  </body>
  
  <script src="js/script.js"></script>
</html>