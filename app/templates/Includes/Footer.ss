<footer id="footer">
    <div class="container">
        <div class="row">

            <!-- Footer Links -->
            <section class="col-md-4 footer-widget">
                <h4>Links</h4>
                <hr class="footer-divider">
                <ul class="footer-site">
                    <!-- Staff Link for Travel Doctor Webmail -->
                    <li><a href="#" title="Staff Login">Staff Login</a></li>
                    <!-- Staff Link for Travel Doctor Extranet -->
                </ul>
            </section>

            <!-- Footer Site Map -->
            <section class="col-md-4 footer-widget">
                <h4>Site Map</h4>
                <hr class="footer-divider">
                <ul class="footer-links">
                    <% loop $Menu(1) %>
                        <li><a href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
            </section>

            <!-- Footer Social Icons Link -->
            <section class="col-md-4 footer-widget">
                <h4>Follow Us</h4>
                <hr class="footer-divider">
                <ul class="footer-social">
                    <% with $SiteConfig %>
                        <% if $FacebookLink %>
                            <li><!-- Facebook Icon -->
                                <a href="$FacebookLink" title="follow TravelDoctor on FaceBook" alt="facebook" target="_blank">
                                    <i class="fab fa-facebook"></i>
                                </a>
                            </li>
                        <% end_if %>
                        <% if $InstagramLink %>
                            <li><!-- Instagram Icon -->
                                <a href="$InstagramLink" title="follow TravelDoctor on Instagram" alt="instagram" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                        <% end_if %>
                    <% end_with%>
                </ul>
            </section>
        </div>
<%--        <hr class="footer-divider">--%>
<%--        <div class="row copyright">--%>
<%--            <p class="col-sm-6 col-md-6 col-xs-12 footer-copyright">Copyright &copy; $Now.Year <a href="$AbsoluteBaseURL">$SiteConfig.Title</a>, All Rights Reserved </p>--%>
<%--            <p class="col-sm-6 col-md-6 col-xs-12 footer-right"><a href="https://www.snapwebdesigns.co.nz/" target="_blank">Designed & Developed By SNAP Web Designs</a></p>--%>
<%--        </div>--%>
    </div>
</footer>

<section class="copyright">
    <div class="container">
    <div class="row">
        <p class="col-sm-6 col-md-6 col-xs-12 footer-copyright">&copy; Copyright <a href="$AbsoluteBaseURL">$SiteConfig.Title</a> $Now.Year, All Rights Reserved </p>
        <p class="col-sm-6 col-md-6 col-xs-12 footer-right">Designed & Developed By <a href="https://www.snapwebdesigns.co.nz/" target="_blank">SNAP Web Designs</a></p>
    </div>
    </div>
</div>
</section>
