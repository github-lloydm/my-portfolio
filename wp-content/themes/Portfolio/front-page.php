<?php get_header(); ?>



    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
        
        <?php 
            if(is_field_not_empty('work_experience')):
                foreach( get_field_acf('work_experience') as $work): 
                    $years_experience = count_experience($work['start_date'], $work['end_date']);
                ?>
                    <div class="w3-container">
                      <h5 class="w3-opacity"><b><?php echo $work['job_position']; ?> / <?php echo $work['company_name']; ?></b></h5>
                      <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><?php echo $work['start_date']; ?> - <?php echo $work['end_date'].' , '.$years_experience; ?></h6>
                      <div><?php echo $work['job_description']; ?></div>
                      <hr>
                    </div>
                <?php endforeach;
              
            endif;
        ?>
        
      </div>

      <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
        <?php 
            if(is_field_not_empty('educations')):
                foreach( get_field_acf('educations') as $edu): ?>
                    <div class="w3-container">
                      <h5 class="w3-opacity"><b><?php echo $edu['university_name']; ?></b></h5>
                      <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><?php echo $edu['edu_start']; ?> - <?php echo $edu['date_end']; ?></h6>
                      <div><?php echo $edu['description']; ?></div>
                      <hr>
                    </div>
                <?php endforeach;
            
            endif;
        ?>
        
      </div>

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<?php get_footer(); ?>