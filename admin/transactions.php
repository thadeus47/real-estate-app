<?php

include '../components/connect.php';

if(isset($_COOKIE['admin_id'])){
   $admin_id = $_COOKIE['admin_id'];
}else{
   $admin_id = '';
   header('location:login.php');
}

if(isset($_POST['delete'])){

   $delete_id = $_POST['delete_id'];
   $delete_id = filter_var($delete_id, FILTER_SANITIZE_STRING);

   $verify_delete = $conn->prepare("SELECT * FROM `messages` WHERE id = ?");
   $verify_delete->execute([$delete_id]);

   if($verify_delete->rowCount() > 0){
      $delete_bookings = $conn->prepare("DELETE FROM `messages` WHERE id = ?");
      $delete_bookings->execute([$delete_id]);
      $success_msg[] = 'Message deleted!';
   }else{
      $warning_msg[] = 'Message deleted already!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Valuation Transactions</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include '../components/admin_header.php'; ?>
<!-- header section ends -->

<!-- messages section starts  -->

<section class="grid">

   <h1 class="heading">valuation transactions</h1>

   <form action="" method="POST" class="search-form">
      <input type="text" name="search_box" placeholder="search valuation transactions..." maxlength="100" required>
      <button type="submit" class="fas fa-search" name="search_btn"></button>
   </form>

   <div class="box-container">

   <?php
      if(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
         $search_box = $_POST['search_box'];
         $search_box = filter_var($search_box, FILTER_SANITIZE_STRING);
         $select_transactions = $conn->prepare("SELECT * FROM `transactions` WHERE id LIKE '%{$search_box}%' OR customer_id LIKE '%{$search_box}%' OR amount LIKE '%{$search_box}%'");
         $select_transactions->execute();
      }else{
         $select_transactions = $conn->prepare("SELECT * FROM `transactions`");
         $select_transactions->execute();
      }
      if($select_transactions->rowCount() > 0){
         while($fetch_transaction = $select_transactions->fetch(PDO::FETCH_ASSOC)){
   ?>
   <div class="box">
      <p>transaction_id : <span><?= $fetch_transaction['id']; ?></span></p>
      <p>customer_id : <a href="mailto:<?= $fetch_transaction['customer_id']; ?>"><?= $fetch_transaction['customer_id']; ?></a></p>
      <p>product : <a href="tel:<?= $fetch_transaction['product']; ?>"><?= $fetch_transaction['product']; ?></a></p>
      <p>amount : <a href="tel:<?= $fetch_transaction['amount']; ?>"><?= $fetch_transaction['amount']; ?></a></p>
      <p>currency : <a href="tel:<?= $fetch_transaction['currency']; ?>"><?= $fetch_transaction['currency']; ?></a></p>
      <p>status : <a href="tel:<?= $fetch_transaction['status']; ?>"><?= $fetch_transaction['status']; ?></a></p>

      
    <br>
      
   </div>
   <?php
      }
   }elseif(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
      echo '<p class="empty">results not found!</p>';
   }else{
      echo '<p class="empty">you have no messages!</p>';
   }
   ?>

   </div>

</section>

<!-- messages section ends -->





<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<!-- custom js file link  -->
<script src="../js/admin_script.js"></script>

<?php include '../components/message.php'; ?>

</body>
</html>