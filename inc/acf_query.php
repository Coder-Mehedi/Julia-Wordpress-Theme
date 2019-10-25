<?php 
// Banner Section
if( have_rows('banner_group','option') ): 
    while( have_rows('banner_group','option') ): the_row(); 
        $banner_image = get_sub_field('banner_image');
        $main_title = get_sub_field('main_title');
        $secondary_title = get_sub_field('secondary_title');
        $banner_button_text = get_sub_field('banner_button_text');
        $banner_button_link = get_sub_field('banner_button_link');
    endwhile;
endif;

// Service Section
if( have_rows('services_group','option') ): 
    while( have_rows('services_group','option') ): the_row(); 
        // Section One
        $section_one_title = get_sub_field('section_one_title');
        $download_button_text = get_sub_field('download_button_text');
        $download_button_url = get_sub_field('download_button_url');

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


