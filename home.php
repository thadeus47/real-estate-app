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
    
    <?php include 'components/user_header.php'; 
    
    ?>
  
   <!-- home section  -->
   <div class="home">
     <section class="center">
        <form action="search.php" method="post">
          <h3>find your perfect home</h3>
           <div class="box">
             <p>enter location <span>*</span></p>
             <input type="text" name="h_location" required maxlength="100" placeholder="enter city name" class="input">
           </div>
            <div class="flex">
            <div class="box">
               <p>property type <span>*</span></p>
               <select name="h_type" class="input" required>
                  <option value="flat">flat</option>
                  <option value="house">house</option>
                  <option value="building">building</option>
                  <!-- <option value="bangalow">bangalow</option>
                  <option value="building">building</option>
                  <option value="flat">flat</option>
                  <option value="Maisonette">Maisonette</option> -->
               </select>
            </div>
            <div class="box">
               <p>offer type <span>*</span></p>
               <select name="h_offer" class="input" required>
                  <option value="sale">sale</option>
                  <option value="lease"> lease</option>
                  <option value="rent"> rent</option>
               </select>
            </div>

             </div>
           <input type="submit" value="search property" name="h_search" class="btn">
        </form>
      </section>
   </div>


<!-- services section -->

<section class="services">

   <h1 class="heading">our services</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/icon-1.png" alt="">
         <h3>buy property</h3>
         <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, incidunt.</p>
      </div>

      

      <div class="box">
         <img src="images/icon-3.png" alt="">
         <h3>sell property</h3>
         <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, incidunt.</p>
      </div>

      <div class="box">
         <img src="images/icon-4.png" alt="">
         <h3>lease property</h3>
         <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque, incidunt.</p>
      </div>

   </div>

</section>

<!-- listings section   -->

<section class="listings">

   <h1 class="heading">latest listings</h1>

   <div class="box-container">
      <?php
         $total_images = 0;
         $select_properties = $conn->prepare("SELECT * FROM `property` ORDER BY creation_time DESC");
         $select_properties->execute();
         if($select_properties->rowCount() > 0){
            while($fetch_property = $select_properties->fetch(PDO::FETCH_ASSOC)){

            $property_id = $fetch_property['id'];
               
            $select_user = $conn->prepare("SELECT * FROM `users` ");
            $select_user->execute([$fetch_property['user_id']]);
            $fetch_users = $select_user->fetch(PDO::FETCH_ASSOC);

            if(!empty($fetch_property['image_02'])){
               $image_02 = 1;
            }else{
               $image_02 = 0;
            }
            if(!empty($fetch_property['image_03'])){
               $image_03 = 1;
            }else{
               $image_03 = 0;
            }


            $total_images = (1 + $image_02 + $image_03 );

            $select_saved = $conn->prepare("SELECT * FROM `saved` WHERE property_id = ? AND user_id = ?") ;
            $select_saved->execute([$property_id, $user_id]);

      ?>
      <form action="" method="POST">
         <div class="box">
            <input type="hidden" name="property_id" value="<?= $property_id; ?>">
           
            <?php
               if($select_saved->rowCount() > 0){
            ?>
            <button type="submit" name="save" class="save"><i class="fas fa-heart"></i><span>saved</span></button>
            <?php
               }else{ 
            ?>
            <button type="submit" name="save" class="save"><i class="far fa-heart"></i><span>save</span></button>
            <?php
               }
            ?>
            
            <div class="thumb">
               <p class="total-images"><i class="far fa-image"></i><span><?= $total_images; ?></span></p> 
               <img src="uploaded_files/<?= $fetch_property['image_01']; ?>" alt="">
            </div>
            <div class="admin">
            <h3><?= substr($fetch_users['name'], 0, 1); ?></h3>
               <div>
                  <p><?= $fetch_users['name']; ?></p>
                  <span><?= $fetch_property['creation_time']; ?></span>
               </div>
            </div>
         </div>
         <div class="box">
            <div class="price"><i class="fa fa-usd"></i><span><?= $fetch_property['price']; ?></span></div>
            <h3 class="name"><?= $fetch_property['property_name']; ?></h3>
            <p class="location"><i class="fas fa-map-marker-alt"></i><span><?= $fetch_property['address']; ?></span></p>
            <div class="flex">
               <p><i class="fas fa-house"></i><span><?= $fetch_property['type']; ?></span></p>
               <p><i class="fas fa-tag"></i><span><?= $fetch_property['offer']; ?></span></p>
               <p><i class="fas fa-trowel"></i><span><?= $fetch_property['status']; ?></span></p>
               <p><i class="fas fa-couch"></i><span><?= $fetch_property['furnished']; ?></span></p>

            </div>
            <div class="flex-btn">
               <a href="view_property.php?get_id=<?= $fetch_property['id']; ?>" class="btn">view </a>
               <input type="submit" value="send enquiry" name="send" class="btn">
               
            </div>
         </div>
      </form>
      <?php
         }
      }else{
         echo '<p class="empty">no properties added yet! <a href="post_property.php" style="margin-top:1.5rem;" class="btn">add new</a></p>';
      }
      ?>
      
   </div>

   <div style="margin-top: 2rem; text-align:center;">
      <a href="listings.php" class="inline-btn">view all</a>
   </div>

</section>

<!-- listings section ends -->

     <!-- Footer -->
     <?php include 'components/footer.php'; ?>

     <?php include 'components/message.php'; ?>
  </body>
  
  <script src="js/script.js"></script>
</html>