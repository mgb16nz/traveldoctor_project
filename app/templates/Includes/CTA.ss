<% if $ClassName.ShortName == 'UserDefinedForm' %>

<% else %>
<!-- Parallax with Contact Page link -->
    <section class="parallax fixed-images" style="background-image: url($SiteConfig.CtaImage.URL)">
        <div class="container context">
            <h1 class="header-red">$SiteConfig.CtaTitle</h1>
            <p class="">$SiteConfig.CtaText</p>
            <p><a href="$SiteConfig.CtaLink.Link" class="btn btn-theme">$SiteConfig.CtaLinkText <span class="fa fa-arrow-right fa-fw" aria-hidden="true"></span></a></p>
        </div>
    </section>
<% end_if %>
