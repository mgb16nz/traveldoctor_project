<!-- Blurb section  -->
<section class="bg-theme blurb">
    <div class="container context">
        <h1>$Title</h1>
        $Content
    </div>
</section>

<!-- Rescent Articles / Blogs -->
<section class="blog py-5 bg-theme-light text-center">
    <div class="container flex-content">

        <h1 class="header-red">Latest Blog/Articles</h1>
        <br>

        <div class="row row-flex row-flex-wrap">

            <% if $LatestBlogPost %>
                <% loop $LatestBlogPost %>

                <div class="col-md-4 td-article">
                    <article class="card mb-4 shadow-sm">
                        <% include SilverStripe\\Blog\\PostSummary %>
                    </article>
                </div>

                <% end_loop %>
            <% end_if %>
        </div>


        <%-- Blog Page Button Link --%>
            <div class="row">
                <div class="col-md-12">
                <a href="blogs" class="btn btn-theme">View More Blogs</a>
                </div>
            </div>


    </div>
</section>
