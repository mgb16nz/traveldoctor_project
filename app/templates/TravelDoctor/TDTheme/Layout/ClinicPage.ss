<%-- Clinics Information and Details --%>
<section id="td-info" class="container-fluid">
    <div class="row">

        <%-- Clinics Address --%>
        <div class="col-md-4 td-info td-info-red">
            <i class="fa fa-home fa-3x"></i>
            <h3>Address</h3>
            <p>$ClinicDetails</p>
        </div>

        <%-- Clinics Buisness Hours --%>
        <div class="col-md-4 td-info td-info-light">
            <i class="fa fa-clock fa-3x"></i>
            <h3>Clinic Hours</h3>
            $ClinicHours
        </div>

        <%-- Clinics Contact Number and Fax --%>
        <div class="col-md-4 td-info td-info-red">
            <i class="fa fa-phone-alt fa-3x"></i>
            <h3>Phone</h3>
            <p>Phone: $ClinicContact
                <br>
                Fax: $ClinicFax
            </p>
        </div>

    </div>
</section>

<%-- Clinic Page --%>
<section id="td-clinic" class="py-5 bg-theme-light">
    <div class="container">
        <h1 class="header-red">$ClinicName</h1>
        $Content
    </div>
</section>

<%-- Google Map--%>
<section id="td-map" class="container-fluid">
    <div class="row">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d16009.928593224073!2d$Longitude!3d$Latitude!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d$Latitude!2d$Longitude!5e0!3m2!1sen!2snz!4v1507289623737"
            width="100%" height="600px" frameborder="0" style="border:0" allowfullscreen>
        </iframe>
    </div>
</section>

<% if $Staff %>
<section id="td-staff" class="py-5 bg-theme-white">
    <div class="container">
        <div class="profile-header">
        <h1 class="header-red">$StaffTitle</h1>
        <% if $StaffContent%>
            $StaffContent
        <% end_if %>
        </div>
    </div>
</section>
<%--        <br>--%>
<section class="py-5 bg-theme-light">
    <div class="container flex-content">
        <div class="row row-flex row-flex-wrap">

            <% loop $Staff %>
            <div id="td-profile" class="col-md-4 profile">
                <div class="card mb-4 shadow-sm">
                    <% if $StaffImage %>
                    <img class="card-img-top" src="$StaffImage.CropHeight(425).URL" width="100%" height="232">
                    <% end_if %>
                    <div class="card-body">
                        <h4 class="card-title header-red">$Title
                            <% if $StaffTitle %>
                                <br><small class="text-muted">
                                $StaffTitle
                                </small>
                            <% end_if %>
                        </h4>
                        <% if $Credentials %>
                            <em>
                                $Credentials
                            </em>
                        <% end_if %>
                        <div>
                            <p class="article-text">$StaffBio</p>
                        </div>
                    </div>
                </div>
            </div>
            <% end_loop %>

        </div>
    </div>
</section>
<% end_if %>

