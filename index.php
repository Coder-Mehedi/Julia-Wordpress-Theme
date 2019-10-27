<?php require_once 'inc/acf_query.php'; ?>
<?php get_header() ?>

    <!-- ==========Banner area start ========== -->
    <section class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="banner-items">
                        <div class="banner-img">
                            <img src="<?php echo $banner_image['url'] ?>" alt="<?php echo $banner_image['alt'] ?>">
                        </div>
                        <div class="banner-content">
                            <h2><?php echo $main_title ?></h2>
                            <h5><?php echo $secondary_title ?></h5>
                            <div class="theme-btn"><a href=""><?php echo $banner_button_text ? $banner_button_text : '' ?></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ============= Banner area end =========== -->


    <!-- ========= Image-gallery Area  start =========== -->
    <section class="gallary-area">
        <div class="image-gallary">
            <div class="image-gallary-content">
                <h2>Julia Ivy</h2>
                <div class="card-text"><span><i class="fas fa-check-circle"></i></span>
                    <p>Ph.D. Psychology & Ph.D. Management (Strategy)</p>
                </div>
                <div class="card-text"><span><i class="fas fa-check-circle"></i></span>
                    <p>Expert in personal strategy for multidimensional
                        professionals</p>
                </div>
                <div class="card-text"><span><i class="fas fa-check-circle"></i></span>
                    <p>Consultant for universities and businesses in
                        crafted employment and employability</p>
                </div>
            </div>
            <div class="image-gallary-items">
                <div class="g-i img-block">
                    <!-- <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/bg-img1.jpg" alt=""> -->
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-1.jpg" alt="">
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-2.jpg" alt="">
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-3.jpg" alt="">
                </div>
            </div>

            <div class="image-gallary-items flex-start">
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-4.jpg" alt="">
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-5.jpg" alt="">
                </div>
                <div class="g-i img-block">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-6.jpg" alt="">
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-7.jpg" alt="">
                </div>
                <div class="g-i img-block">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-8.jpg" alt="">
                </div>
            </div>

            <div class="image-gallary-items flex-start">
                <div class="g-i img-block">
                    <!-- <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/bg-img2.jpg" alt=""> -->
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-9.jpg" alt="">
                </div>
                <div class="g-i">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/gallery-10.jpg" alt="">
                </div>
                <div class="g-i more-photos">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/about/bg-img3.jpg" alt="">
                    <a href="" class="showMore-btn">Show More</a>
                </div>
            </div>

        </div>
    </section>
    <!-- ========= Image-gallery Area  End =========== -->

    <!-- ========= Card Area  start =========== -->
    <section class="card-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card-items">
                        <div class="card-item card-item-1">
                            <div class="card-block">
                                <h3><?php echo $section_one_title ?></h3>
                                <div class="theme-btn"><a href="<?php echo $download_button_url; ?>"><?php echo $download_button_text; ?></a></div>
                            </div>
                        </div>

                        <a href="<?php echo $section_two_link; ?>" class="card-item card-item-2">
                            <div class="card-block">
                                <h3><?php echo $section_two_title; ?></h3>
                            <?php foreach($section_two_options as $section_two_option): ?>
                                <div class="card-content">
                                    <div class="card-text">
                                        <span><i class="fas fa-check-circle"></i></span>
                                        <p><?php echo $section_two_option; ?></p>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                
                            </div>
                        </a>


                        <a href="<?php echo $section_three_link; ?>" class="card-item card-item-3">
                            <div class="card-block">
                                <h3><?php echo $section_three_title; ?></h3>
                                <div class="card-content">
                    <?php foreach($section_three_options as $section_three_option): ?>
                                    <div class="card-text"><span><i class="fas fa-check-circle"></i></span>
                                        <p><?php echo $section_three_option; ?></p>
                                    </div>
                    <?php endforeach; ?>

                                </div>
                            </div>
                        </a>
 
                        <a href="<?php echo $section_four_link; ?>" class="card-item card-item-2">
                            <div class="card-block">
                                <h3>BUSINESSES</h3>
                                <div class="card-content">
                        <?php foreach($section_four_options as $section_four_option): ?>
                                    <div class="card-text"><span><i class="fas fa-check-circle"></i></span>
                                        <p><?php echo $section_four_option; ?></p>
                                    </div>
                            <?php endforeach; ?>
                            
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========= metus Area  start =========== -->
    <section class="metus-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <h2>In varius <strong> metus sed</strong></h2>
                    <p>Aliquam laoreet sem magna, sed ornare ligula maximus non. Praesent vehicula odio quam, nec finibus nisl elementum
                        a. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                </div>
            </div>
            <div class="row">

<?php 
$blog_post = new WP_Query(['post_type' => 'blog', 'posts_per_page' => 3]);
    if ( $blog_post->have_posts()):
        while ($blog_post->have_posts()) : $blog_post->the_post(); ?>
<?php $author_name = get_the_author_meta('display_name', 1) ? get_the_author_meta('display_name', 1) : get_the_author_meta('first_name', 1); ?>


                <div class="col-md-4">
                    <a href="#" class="metus-item">
                        <div class="metus-img">
                            <div class="zoom">
                                <img src="<?php the_post_thumbnail_url(); ?>" alt="">
                            </div>
                            <div class="metus-logo">
                                <img src="<?php the_field('company_logo') ?>" alt="">
                            </div>
                        </div>
                        <div class="metus-content">
                        <?php if(get_field('heading')): ?>
                            <p><?php the_field('heading'); ?></p>
                        <?php endif; ?>
                        </div>
                        <div class="client-item">
                            <div class="zoom">
                                <?php echo get_avatar( get_the_author_meta('ID')) ?>
                            </div>
                            <?php $review = get_field('review_comment'); ?>
                            <div class="client-content">
                                <p><?php echo $review; ?></p>



                                <h5><?php echo $author_name; ?></h5>
                            </div>
                        </div>
                    </a>
                </div>
                
        <?php endwhile; ?>      
    <?php endif; ?>
            </div>
        </div>
    </section>
    <!-- ========= metus Area  start =========== -->
<?php get_footer() ?>