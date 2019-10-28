<?php 

if(function_exists('acf_add_local_field_group')){
// Banner Section
if( have_rows('banner_group','option') ): 
    while( have_rows('banner_group','option') ): the_row();
        
        $banner_image = get_sub_field('banner_image');
        $main_title = get_sub_field('main_title');
        $secondary_title = get_sub_field('secondary_title');
        $banner_action_button_link = get_sub_field('banner_action_button_link');

        if( have_rows('banner_background_group','option') ): 
            while( have_rows('banner_background_group','option') ): the_row();
                $banner_background_image = get_sub_field('banner_background_image')['url'];
                $banner_background_color = get_sub_field('banner_background_color');
                $banner_background = get_sub_field('banner_background') == 'Color' ? $banner_background_color : "url(" . $banner_background_image ."); background-size: cover" ;
            endwhile;
        endif;
    endwhile;
endif;
function banner_background_css() { 
    global $banner_background;
    ?>
        <style>
            .banner-area {background: <?php echo $banner_background; ?> }
        </style>
    <?php
}
add_action('wp_head', 'banner_background_css');

// Education and Experience
if( have_rows('education_and_experience_group','option') ): 
    while( have_rows('education_and_experience_group','option') ): the_row(); 
        $head_text = get_sub_field('head_text');
        $show_more_button = get_sub_field('show_more_button');
            
        if( have_rows('education_experiences','option') ): 
            while( have_rows('education_experiences','option') ): the_row(); 
                $add_educationexperience[] = ['text' => get_sub_field('add_educationexperience'),
                                            'url' => get_sub_field('add_link')];
            endwhile;
        endif;
    endwhile;
endif;

// Service Section
if( have_rows('services_group','option') ): 
    while( have_rows('services_group','option') ): the_row(); 
        // Section One
        $section_one_title = get_sub_field('section_one_title');
        $download_button_link = get_sub_field('download_button_link');

        // Section Two
        $section_two_title = get_sub_field('section_two_title');
        $section_two_link = get_sub_field('section_two_link');

        if( have_rows('section_two_list_options','option') ): 
            while(have_rows('section_two_list_options','option') ):the_row();
                $section_two_options[] = get_sub_field('section_two_option');
            endwhile;
        endif;
    

        // Section Three
        $section_three_title = get_sub_field('section_three_title');
        $section_three_link = get_sub_field('section_three_link');

        if( have_rows('section_three_list_options','option') ): 
            while( have_rows('section_three_list_options','option') ): the_row();
                $section_three_options[] = get_sub_field('section_three_option');
            endwhile;
        endif;

        // Section Four
        $section_four_title = get_sub_field('section_four_title');
        $section_four_link = get_sub_field('section_four_link');

        if( have_rows('section_four_list_options','option') ): 
            while( have_rows('section_four_list_options','option') ): the_row(); 
               $section_four_options[] = get_sub_field('section_four_option');
            endwhile;
        endif;

    endwhile;
endif;


    // Blog Section
    $blog_section_title = get_field('section_title', 'option');
    $blog_section_description = get_field('section_description', 'option');

    $posts = get_field('blog_posts_relation', 'option');


}