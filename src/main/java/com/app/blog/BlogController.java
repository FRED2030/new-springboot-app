package com.app.blog;

import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlogController {


    @GetMapping("/")
    public String getBlogList(Model model){
        return "index";
    }

    @GetMapping("/group-one-blog-details")
    public String getGroupOneBlogItem(Model model){
        return "group_one_blog_item";
    }

    @GetMapping("/group-two-blog-details")
    public String getGroupTwoBlogItem(Model model){
        return "group_two_blog_item";
    }

    @GetMapping("/group-three-blog-details")
    public String getGroupThreeBlogItem(Model model){
        return "group_three_blog_item";
    }

    @GetMapping("/group-four-blog-details")
    public String getGroupFourBlogItem(Model model){
        return "group_four_blog_item";
    }

    @GetMapping("/group-five-blog-details")
    public String getGroupFiveBlogItem(Model model){
        return "group_five_blog_item";
    }

    @GetMapping("/group-six-blog-details")
    public String getGroupSixBlogItem(Model model){
        return "group_six_blog_item";
    }

    @GetMapping("/group-seven-blog-details")
    public String getGroupSevenBlogItem(Model model){
        return "group_seven_blog_item";
    }

    @GetMapping("/group-eight-blog-details")
    public String getGroupEightBlogItem(Model model){
        return "group_eight_blog_item";
    }

    @GetMapping("/group-nine-blog-details")
    public String getGroupNineBlogItem(Model model){
        return "group_nine_blog_item";
    }

}
