
<?php
   session_start();

   if(isset($_SESSION['user_id'])){
      $user_id = $_SESSION['user_id'];
      
   }
   
   include 'components/save_send.php';
   include 'access.php';
     ?>
<!-- header section starts  -->
<header class="header">

   <nav class="navbar nav-1">
      <section class="flex">
         <a href="home.php" class="logo"><i class="fa-solid fa-hotel"></i>E-Property</a>

         <!-- <ul>
            <li><a href="login.php">Login<i class="fas fa-paper-plane"></i></a></li>
            <li><a href="register.php">Register <i class="fas fa-paper-plane"></i></a></li>
         </ul> -->
      </section>
   </nav>

   <nav class="navbar nav-2">
      <section class="flex">
         <div id="menu-btn" class="fas fa-bars"></div>
    
     <br/>
     <?php 
      if(isset($_SESSION['name']))
      {
         echo $_SESSION['name'];
      }?>
         <div class="menu">
            <ul>
               <li><a href="#">my listings<i class="fas fa-angle-down"></i></a>
                  <ul>
                     <li><a href="dashboard.php">dashboard</a></li>
                     <li><a href="post_property.php">post property</a></li>
                     <li><a href="my_listings.php">my listings</a></li>
                  </ul>
               </li>
               <li><a href="#">options<i class="fas fa-angle-down"></i></a>
                  <ul>
                     <li><a href="search.php">filter search</a></li>
                     <li><a href="listings.php">all listings</a></li>
                  </ul>
               </li>
               <li><a href="#">help<i class="fas fa-angle-down"></i></a>
                  <ul>
                     
                     <li><a href="contact.php">contact us</a></i></li>
                    
                  </ul>
               </li>
            </ul>
            
         </div>
        
         <ul>
            <li><a href="saved.php">saved <i class="far fa-heart"></i></a></li>
            <li><a href="#">account <i class="fas fa-angle-down"></i></a>
               <ul>
                  <li><a href="login.php">login </a></li>
                  <li><a href="register.php">register </a></li>
                  
                  <li><a href="update.php">update profile</a></li>
                  <li><a href="components/user_logout.php" onclick="return confirm('logout from this website?');">logout</a>
                  </li>
               </ul>
            </li>
         </ul>
      </section>
   </nav>

</header>

<!-- header section ends -->