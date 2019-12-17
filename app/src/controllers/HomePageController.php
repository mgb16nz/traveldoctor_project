<?php

namespace TravelDoctor\TDTheme;

use PageController;
use SilverStripe\Blog\Model\BlogPost;

class HomePageController extends PageController
{

    public function LatestBlogPost($count = 3)
    {
        return BlogPost::get()
//            ->sort('$PublishDate', 'DESC')
            ->limit($count);
    }

}
