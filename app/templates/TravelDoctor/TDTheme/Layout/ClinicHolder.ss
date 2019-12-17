<%-- Travel Doctors Clinics in New Zealand --%>
<section id="td-list" class="clinic-locations py-5 bg-theme text-center">
    <div class="container context">
        <h1 class="display-4 header-white">$Title</h1>
    </div>

    <%-- North Island Clinics --%>
    <div id="td-ni" class="container td-content">

        <hr class="my-4">
        <h2 class="header-white">North Island</h2>
        <div class="row py-2">
            <%--  loop for North Island Clinics  --%>
            <% loop $AllChildren.sort('ID','ASC') %>
             <%--  Call for North Island Clinics  --%>
            <% if $ClinicLocation == '0' %>
                <div class="col-md-4">
                    <div class="td-clinics">
                        <h4 class="header-white">$ClinicName</h4>
                        <div class="location-link ">
                            <p>
                                <a href="$Link" class="btn btn-theme-white">View Clinic</a>
                            </p>
                        </div>
                    </div>
                </div>
                <% end_if %>
            <% end_loop %>
        </div>

    </div><%-- END North Island Clinics --%>

    <%-- South Island Clinics --%>
    <div id="td-si" class="container td-content">

        <hr class="my-4">
        <h2 class="header-white">South Island</h2>
        <div class="row py-2">
            <%--  loop for South Island Clinics  --%>
            <% loop $AllChildren.sort('ID','ASC') %>
                <%--  Call for South Island Clinics  --%>
                <% if $ClinicLocation == '1'  %>

                    <div class="col-md-4">
                        <div class="td-clinics">
                            <h4 class="header-white">$ClinicName</h4>
                            <div class="location-link">
                                <p>
                                    <a href="$Link" class="btn btn-theme-white">View Clinic</a>
                                </p>
                            </div>
                        </div>
                    </div>
                <% end_if %>
            <% end_loop %>
        </div>

    </div><%-- END South Island Clinics --%>

</section>
