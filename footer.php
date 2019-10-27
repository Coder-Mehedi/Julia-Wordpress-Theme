<?php require_once 'inc/footer_acf_query.php'; ?>


   <!-- ========== Footer Area Start   ============-->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-flex">
                        <div class="footer-logo">
                        <?php if($logo_show_in_footer): ?>
                            <img src="<?php echo $footer_logo['url']; ?>" alt="footer-logo.png">
                        <?php endif; ?>
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

<?php if( have_rows('footer_group','option') ): 
    while( have_rows('footer_group','option') ): the_row(); 
        $copyright_text = get_sub_field('copyright_text');
             ?>
                <div class="col-12">
                    <div class="copy-right">
                        <div class="copy-content">
                            <p><?php echo $copyright_text; ?></p>
                        </div>
                        <div class="copy-card">
    <?php if( have_rows('company_logos','option') ): 
            while( have_rows('company_logos','option') ): the_row();  ?>
                            <a href="<?php the_sub_field('company_website_link'); ?>"><img src="<?php the_sub_field('logo'); ?>" alt="amazon"></a>
    <?php endwhile;
        endif; ?>
                        </div>
        
                    </div>
                </div>

    <?php endwhile;
        endif ?>
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
