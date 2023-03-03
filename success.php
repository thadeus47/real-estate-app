<?php
  if(!empty($_GET['tid'] && !empty($_GET['product']))) {
    $GET = filter_var_array($_GET, FILTER_SANITIZE_STRING);

    $tid = $GET['tid'];
    $product = $GET['product'];
  } else {
    header('Location: index.php');
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
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
     <form action="" method="" id="payment-form" >
     <h3>Thank you for the <?php echo $product; ?></h3>
     <hr>
     <h3>Your transaction ID is <?php echo $tid; ?></h3>
    <h3>Check your email for more info</h3>
    <h3><a href="home.php" class=" ">Go Back</a></h3>

  </div>
</section>




<?php include 'components/message.php'; ?>
</body>
</html>