<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

    <!--<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>-->

<?php wp_head(); ?>

<body <?php body_class(); ?>>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="<?php echo STYLE_DIRECTORY_URI; ?>/images/avatar_hat.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>Jane Doe</h2>
          </div>
        </div>
        <div class="w3-container">
          <?php 
              
              if(is_field_empty('basic_details')):
                  foreach(get_field_acf('basic_details') as $val):
                      echo '<p><i class="'.$val['basic_details_icon'].' fa-fw w3-margin-right w3-large w3-text-teal"></i>'.$val['your_basic_info'].'</p>';
                  endforeach;
              endif;
             
          ?>
          
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
          
          <?php 
              
              if(is_field_empty('skill_listing')):
                  foreach(get_field_acf('skill_listing') as $skill): ?>
                      <p><?php echo $skill['your_skill']; ?></p>
                      <div class="w3-light-grey w3-round-xlarge w3-small">
                        <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width: <?php echo $skill['skill_rating'].'%'; ?>"><?php echo $skill['skill_rating'].'%'; ?></div>
                      </div>
                  <?php endforeach;
              endif;
             
          ?>

          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
          
          <?php 
              
              if(is_field_empty('languages')):
                  foreach(get_field_acf('languages') as $language): ?>
                      <p><?php echo $language['language_name']; ?></p>
                      <div class="w3-light-grey w3-round-xlarge">
                        <div class="w3-round-xlarge w3-teal" style="height:24px;width:<?php echo $language['language_rating'].'%'; ?>"> 
                            <span style="float:right;"><?php echo $language['language_rating'].'%'; ?></span>
                        </div>
                      </div>
                  <?php endforeach;
              endif;
             
          ?>

          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>
