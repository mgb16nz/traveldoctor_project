<!-- Breadcrumbs -->
<% if $ClassName.ShortName == "HomePage" %>

<% else %>
<section>
    <nav id="Breadcrumbs" class="breadcrumb">

        <% if $URL = 'home' %>
        <% else %>
            <a href="$URL">Home</a>
            &raquo;
        <% end_if %>
        $Breadcrumbs(20, false, false, true)

    </nav>
</section>
<% end_if %>
