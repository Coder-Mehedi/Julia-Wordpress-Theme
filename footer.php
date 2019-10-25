<?php
if( have_rows('footer_group','option') ): 
    while( have_rows('footer_group','option') ): the_row(); 
        $copyright_text = get_sub_field('copyright_text');

        if( have_rows('company_logos','option') ): 
            while( have_rows('company_logos','option') ): the_row(); 
                $company_logos[] = get_sub_field('logo');
            endwhile;
        endif;

    endwhile;
endif;
?>

<?php 

if( have_rows('social_icon_settings','option') ): 
    while( have_rows('social_icon_settings','option') ): the_row(); 
        $facebook_profile_link = get_sub_field('facebook_profile_link');
        $twitter_profile_link = get_sub_field('twitter_profile_link');
        $instagram_profile_link = get_sub_field('instagram_profile_link');
        $linkedin_profile_link = get_sub_field('linkedin_profile_link');

        $show_in_top_header = get_sub_field('show_in_top_header');
        $show_in_footer = get_sub_field('show_in_footer');
    endwhile;
endif;

?>

   <!-- ========== Footer Area Start   ============-->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-flex">
                        <div class="footer-logo">
                            <img src="<?php echo get_template_directory_uri() ?>/assets/img/footer-logo.png" alt="footer-logo.png">
                        </div>
                        
                            <?php dynamic_sidebar('footer-1'); ?>
                            <?php dynamic_sidebar('footer-2') ?>
                            <?php dynamic_sidebar('footer-3') ?>
                            <?php dynamic_sidebar('footer-4') ?>
                    <?php if($show_in_footer): ?>
                        <div class="footer-menu-2">
                            
                            <h5>Contact </h5>
                            <ul class="footer-socail">
                            <?php if($facebook_profile_link): ?>
                                <li><a href=""><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/facebook.png" alt="facebook"></a></li>
                            <?php endif; ?>
                            <?php if($twitter_profile_link): ?>
                                <li><a href=""><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/twitter.png" alt="twitter"></a></li>
                            <?php endif; ?>
                            <?php if($instagram_profile_link): ?>
                                <li><a href=""><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/instagram.png" alt="instagram"></a></li>
                            <?php endif; ?>
                            <?php if($linkedin_profile_link): ?>
                                <li><a href=""><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/linkedin.png" alt="linkedin"></a></li>
                            <?php endif; ?>
                            </ul>
                        </div>
                    <?php endif; ?>
                    </div>
                </div>
                <div class="col-12">
                    <div class="copy-right">
                        <div class="copy-content">
                            <p><?php echo $copyright_text; ?></p>
                        </div>
                        <div class="copy-card">
                    <?php if($company_logos): ?>
                        <?php foreach($company_logos as $company_logo): ?>
                            <a href=""><img src="<?php echo $company_logo; ?>" alt="amazon"></a>
                        <?php endforeach; ?>
                    <?php endif; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- ========== Footer Area End ============-->

    <!--    <script src="assets/js/main.js"></script>-->
    <script>
        // SmartMenus init
        jQuery(function() {
            jQuery('#main-menu').smartmenus({
                mainMenuSubOffsetX: -1,
                mainMenuSubOffsetY: 4,
                subMenusSubOffsetX: 6,
                subMenusSubOffsetY: -6
            });
        });

        // SmartMenus mobile menu toggle button
        jQuery(function() {
            var jQuerymainMenuState = jQuery('#main-menu-state');
            if (jQuerymainMenuState.length) {
                // animate mobile menu
                jQuerymainMenuState.change(function(e) {
                    var jQuerymenu = jQuery('#main-menu');
                    if (this.checked) {
                        jQuerymenu.hide().slideDown(250, function() {
                            jQuerymenu.css('display', '');
                        });
                    } else {
                        jQuerymenu.show().slideUp(250, function() {
                            jQuerymenu.css('display', '');
                        });
                    }
                });
                // hide mobile menu beforeunload
                jQuery(window).bind('beforeunload unload', function() {
                    if (jQuerymainMenuState[0].checked) {
                        jQuerymainMenuState[0].click();
                    }
                });
            }
        });

    </script>
    <?php wp_footer() ?>
</body>

</html>
