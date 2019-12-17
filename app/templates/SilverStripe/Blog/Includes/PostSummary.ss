<div class="post-summary">

    <%-- Blogs Feature Image --%>
    <div class="post-image">
        <a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
           <img class="card-img-top" src="$FeaturedImage.Fill(348,225).URL" width="100%" height="225">
        </a>
    </div>

    <%-- Main Blog Body --%>
    <div class="card-body">

        <%-- Blog Header --%>
        <h4 class="card-title">
            <a class="header-red" href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                <% if $MenuTitle %>$MenuTitle
                <% else %>$Title<% end_if %>
            </a>
        </h4>

        <%-- Blog Meta Data -(Date, Tags, $Categories) --%>
        <% include SilverStripe\\Blog\\EntryMeta %>

        <hr class="boarder-theme">

        <%-- Blogs Summery --%>
        <% if $Summary %>
             <p class="article-text">
                $Summary
            </p>
        <% else %>
            <p>$Excerpt</p>
        <% end_if %>

        <%-- Blogs Link Button to Main Article --%>
        <a href="$Link" class="btn btn-theme">
            Read More
        </a>

    </div>


</div>
