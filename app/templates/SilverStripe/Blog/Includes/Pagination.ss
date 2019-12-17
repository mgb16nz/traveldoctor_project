<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<%--<% if $MoreThanOnePage %>--%>
<%--	<p class="pagination">--%>
<%--		<% if $NotFirstPage %>--%>
<%--			<a class="prev" href="{$PrevLink}">&larr;</a>--%>
<%--		<% end_if %>--%>

<%--		<% loop $PaginationSummary(4) %>--%>
<%--			<% if $CurrentBool %>--%>
<%--				<span>$PageNum</span>--%>
<%--			<% else %>--%>
<%--				<% if $Link %>--%>
<%--					<a href="$Link">$PageNum</a>--%>
<%--				<% else %>--%>
<%--					<span>...</span>--%>
<%--				<% end_if %>--%>
<%--			<% end_if %>--%>
<%--		<% end_loop %>--%>

<%--		<% if $NotLastPage %>--%>
<%--			<a class="next" href="{$NextLink}">&rarr;</a>--%>
<%--		<% end_if %>--%>
<%--	</p>--%>
<%--<% end_if %>--%>

<% if $MoreThanOnePage %>
    <nav aria-label="...">
        <ul class="pagination">
            <%-- Previous Page Chevron --%>
            <% if $NotFirstPage %>
                <li class="page-item">
                    <a class="page-link" href="{$PrevLink}" tabindex="-1" aria-label="Previous">
                        <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
                    </a>
                </li>
            <% end_if %>

            <%-- Pagiation Pages --%>
            <% loop $PaginationSummary(4) %>
                <% if $CurrentBool %>
                    <li class="page-item active">
                        <a class="page-link" href="$Link">$PageNum
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                <% else %>
                    <% if $Link %>
                        <li class="page-item">
                            <a class="page-link" href="$Link">$PageNum</a>
                        </li>
                    <% else %>
                        <span>...</span>
                    <% end_if %>
                <% end_if %>
            <% end_loop %>

            <%-- Next Page Chevron --%>
            <% if $NotLastPage %>
                <li class="page-item">
                    <a class="page-link" href="{$NextLink}" aria-label="Next">
                        <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                        <%--<span class="sr-only">Next</span>--%>
                    </a>
                </li>
            <% end_if %>
        </ul>
    </nav>
<% end_if %>
