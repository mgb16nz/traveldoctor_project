<% require css('silverstripe/blog: client/dist/styles/main.css') %>



<!-- Blurb section  -->
<section class="bg-theme blurb">
    <div class="container context">
        <h1>
            <% if $ArchiveYear %>
                <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                <% if $ArchiveDay %>
                    $ArchiveDate.Nice
                <% else_if $ArchiveMonth %>
                    $ArchiveDate.format('MMMM, y')
                <% else %>
                    $ArchiveDate.format('y')
                <% end_if %>
            <% else_if $CurrentTag %>
                <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
            <% else_if $CurrentCategory %>
                <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
            <% else %>
                $Title
            <% end_if %>
        </h1>
        $Content
    </div>
</section>
<%-- Blog Section --%>
<section class="album py-5 bg-theme-light text-center">
    <div class="container flex-content">

        <div class="row row-flex row-flex-wrap">

            <% if $PaginatedList.Exists %>
                <% loop $PaginatedList %>

                    <div class="col-md-4">

                <div class="card-deck td-article">
                    <article class="card mb-4 shadow-sm">

                                <% include SilverStripe\\Blog\\PostSummary %>

                    </article>
                </div>
                    </div>

                <% end_loop %>
            <% else %>
            <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
            <% end_if %>

        </div>

        <!-- blog pagination -->
        <div class="row blog-pagination justify-content-center">
            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
        </div>

    </div>
</section>
