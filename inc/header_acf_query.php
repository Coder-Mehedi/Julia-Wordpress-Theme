<?php 
if(function_exists('acf_add_local_field_group')){
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

    if( have_rows('site_logo_group','option') ): 
        while( have_rows('site_logo_group','option') ): the_row(); 
            $site_logo = get_sub_field('site_logo');
        endwhile;
    endif;
}