<!doctype html>

    <html lang="$ContentLocale">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <% base_tag %>
        $MetaTags(false)
        <title><% if $MetaTitle %>$MetaTitle<% else %>$SiteConfig.Title | $Title<% end_if %></title>

        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    </head>
    <body class="$ClassName">

        <% include TopBar%>
        <% include MainNav%>

        <% include Header%>
        <% include  BreadCrumbs %>

                $Layout

        <% include CTA %>

        <% include Footer %>

    </body>
</html>
