<section class="album py-5 bg-theme-light text-center">
    <div class="container">

<%--        $Content--%>

        <div class="row">

            <!-- With Theme Background and Clinic Header Colour -->
            <% loop $Clinics %>
                <div class="col-md-6 card-deck">
                    <div class="card boarder-theme mb-3 shadow-sm">
                        <div class="card-body bg-theme">
                            <h4 class="card-title" style="color: #fff">TravelDoctor $Title</h4>
                            <h5 style="color: #fff">$ClinicName</h5>
                            <p style="color: #fbfcfc">

                            <% if $Address1 %>
                                    $Address1,
                                    <br>
                                <% else %>
                                <% end_if %>
                                $Address2
                                <br>
                                $Suburb
                                <br>
                                $City $PostCode
                                <br>
                                $Country
                            </p>
                            <p style="color: #fbfcfc">Phone: $Contact
                                <br>
                                Fax: $Fax
                            </p>
                            <p style="color: #fbfcfc">Email: <a href="mailto:$Email">$Email</a></p>
                        </div>
                        <div class="embed-responsive embed-responsive-4by3">
                            <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d16009.928593224073!2d$Longitude!3d$Latitude!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d$Latitude!2d$Longitude!5e0!3m2!1sen!2snz!4v1507289623737" width="224" height="192" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            <% end_loop %>

        </div>
    </div>
</section>
