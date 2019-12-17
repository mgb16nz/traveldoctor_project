<%--<% require css('silverstripe/blog: client/dist/styles/main.css') %>--%>

<section id="td-clinic" class="py-5 bg-theme-light">
    <div class="container">
        <article>
            <h1 class="header-red">$Title</h1>
            <% include SilverStripe\\Blog\\EntryMeta %>


            <% if $FeaturedImage %>
                <div class="post-image">
                    <img src="$FeaturedImage.URL" width="100%" height="100%"></div>
            <% end_if %>
            <br>

            <div class="content">$Content</div>

        </article>
    </div>
</section>

<%--<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">--%>
<%--	<article>--%>
<%--		<h1>$Title</h1>--%>

<%--		<% if $FeaturedImage %>--%>
<%--			<p class="post-image">$FeaturedImage.ScaleWidth(795)</p>--%>
<%--		<% end_if %>--%>

<%--		<div class="content">$Content</div>--%>

<%--		<% include SilverStripe\\Blog\\EntryMeta %>--%>
<%--	</article>--%>

<%--	$Form--%>
<%--	$CommentsForm--%>
<%--</div>--%>

<%--<% include SilverStripe\\Blog\\BlogSideBar %>--%>
