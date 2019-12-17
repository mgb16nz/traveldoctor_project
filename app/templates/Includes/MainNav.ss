<nav class="navbar navbar-expand-md sticky-top navbar-theme bg-nav">

    <a class="navbar-brand" href="$AbsoluteBaseURL">$SiteConfig.LogoImage</a>

    <!-- Mobile Menu Dropdown -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span>
    </button>

    <!-- Main Menu -->
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <hr class="d-md-none">
        <ul class="navbar-nav ml-auto">

            <%-- Navbar Menu Loop  --%>
            <% loop $Menu(1) %>
                <li class="nav-item <% if $LinkingMode = 'current' %>active<% end_if %>">
                    <a class="nav-link" href="$Link" title="$Title">$MenuTitle<% if $LinkingMode = 'current' %><span class="sr-only"> (current)</span><% end_if %></a>
                </li>
            <% end_loop %>
        </ul>
    </div>
</nav>
