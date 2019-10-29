<?php require_once 'inc/header_acf_query.php'; ?>


<!DOCTYPE html>
<html class="no-js" lang="la">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Julia</title>
    <link rel="shortcut icon" type="image/png" href="assets/img/logo/favicon.ico">
    <?php wp_head() ?>
</head>

<body>
    <!-- ============ Header area start ============-->
    <header class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav" role="navigation">
                        <!-- Mobile menu toggle button (hamburger/x icon) -->
                        <input id="main-menu-state" type="checkbox" />
                        <label class="main-menu-btn" for="main-menu-state">
                            <span class="main-menu-btn-icon"></span>
                        </label>
                        <div class="nav-brand">
                            <a href="<?php bloginfo( 'url' ) ?>">
                    <?php if(!empty($site_logo['url'])): ?>
                            <img src="<?php echo $site_logo['url'] ? $site_logo['url'] : ''; ?>" alt="logo">
                    <?php elseif(bloginfo( 'name' )): ?>
                        <?php echo bloginfo( 'name' ); ?>
                    <?php endif; ?>
                            </a>
                        </div>
                        <!-- Sample menu definition -->

                        <?php wp_nav_menu( array(
                            'theme_location'  => 'menu-1',
                            'menu_class'      => 'menu sm sm-clean text-center',
                            'menu_id'         => 'main-menu',
                          
                        ) ); ?>
                    <?php if($show_in_top_header): ?>
                        <div class="social-menu">
                        <?php if($facebook_profile_link): ?>
                            <a href="<?php echo $facebook_profile_link; ?>"><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/facebook.png" alt="facebook"> </a>
                        <?php endif; ?>
                        <?php if($twitter_profile_link): ?>
                            <a href="<?php echo $twitter_profile_link; ?>"><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/twitter.png" alt="twitter"> </a>
                        <?php endif; ?>
                        <?php if($instagram_profile_link): ?>
                            <a href="<?php echo $instagram_profile_link ?>"><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/instagram.png" alt="instagram"> </a>
                        <?php endif; ?>
                        <?php if($linkedin_profile_link): ?>
                            <a href="<?php echo $linkedin_profile_link; ?>"><img src="<?php echo get_template_directory_uri() ?>/assets/img/icon/linkedin.png" alt="linkedin"> </a>
                        <?php endif; ?>
                        </div>
                    <?php endif; ?>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!--========= header area end ========== -->
