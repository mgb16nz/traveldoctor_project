<%-- Customised template version from silverstripe/cms/templates/BreadcrumbsTemplate.ss --%>
<% if $Pages %>
    <% loop $Pages %>
        <% if $Last %>$MenuTitle.XML<% else %>
            <a href="$Link" class="breadcrumb-$Pos">$MenuTitle.XML</a>
         $Up.Delimiter.RAW <% end_if %>
    <% end_loop %>
<% end_if %>
