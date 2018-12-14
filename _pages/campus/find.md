---
title: Find AIA on Campus
permalink: "/campus/find"
layout: page
---

<div class="container col-md-10 col-md-offset-1">
<h2 class="title text-center">Find AIA <span class="first-color light">On Your Campus</span></h2>
<p>Athletes In Action has a presence on over 200 campuses across the country. Search for your school (below) to find out how you can get connected on or nearby your campus.</p>
<h4 id="searchbox">Search:&nbsp;<input id="schools" type="text"></h4>
</div>
<div class="row mt20">
<div class="container">
<div id="controls" class="col-md-10 col-md-offset-1 mb20"><div class="wrap_controls row"></div></div>
</div>
</div>
<div id="gmap" style="height: 500px; position: relative; overflow: hidden;"></div>
<div class="hidden">Alabama, Alaska, Arkansas, Arizona, California, Colorado, Connecticut, Delaware, Florida, Georgia, Hawaii, Iowa, Idaho, Illinois, Indiana, Louisiana, Maine, Massachusettes, Michigan, Minnesota, Missouri, Mississippi, Maryland, New Hampshire, New Jersey, New York, New Mexico, North Carolina, Nebraska, Nevada, Kentucky, Kansas, North Dakota, Oklahoma, Pennsylvannia, Ohio, Rhode Island, South Carolina, South Dakota, Tennessee, Oregon, Montana, Wyoming, Washington, Texas, Virginia, Vermont, West Verginia, Wisconsin, Utah</div>
<script type="text/javascript">// <![CDATA[
var html_checks = {
    //required: called by Maplace.js to activate the current voice on menu
    activateCurrent: function(index) {
        this.html_element.find("input[value='" + index + "']").attr('checked', true);
    },
    //required: called by Maplace.js to get the html of the menu
    getHtml: function() {
        var self = this,
            html = '';

        //if more than one location
        if(this.ln > 0) {
            html += '<div class="accordion panel-group ' + this.o.controls_cssclass + '" id="campusAccordion">';

            //check "view all" link
            //use ShowOnMenu(index) to know if a location has to appear on menu
            if(this.ShowOnMenu(this.view_all_key)) {
                html += '<label><input type="radio" name="gmap" value="'
                     + this.view_all_key + '"/>' + this.o.view_all_text + '</label>';
            }

            //iterate the locations
            for (var a = 0; a < this.ln; a++) {
                if(this.ShowOnMenu(a))
                  html += '<div class="panel col-md-6"><div class="panel-heading" style="background-color:#990000;">'
              			+ '<a class="collapse panel-toggle" data-toggle="collapse" data-parent="#campusAccordion" href="#collapse'+ a.toString() + '" style="color:#FFFFFF;">'
              			+ this.o.locations[a].title + '</a></div>';

      			   if (a === 0) {
              			html += '<div id="collapse' + a.toString() +'" class="panel-collapse collapse in"><div class="accordion-inner" style="background-color: #e5e5e5; padding:10px;">';
              			if (this.o.locations[a].aia.StaffType == "")	{
              				html += "We don't currently have a presence on this campus, but we have resources and coaches available to help you begin to <a href='/campus/sportlinc'>start AIA on this campus</a>."
              			} else {
              				html += checkSchoolTypeText(this.o.locations[a].aia, false)
              			}
          			} else {
          				html += '<div id="collapse' + a.toString() +'" class="panel-collapse collapse"><div class="accordion-inner" style="background-color: #e5e5e5;padding:10px;">'
          					+ checkSchoolTypeText(this.o.locations[a].aia, true);
          			}
          			html += '</div></div></div>';
            }
            html += '</div>';
        }

        this.html_element = $('<div class="wrap_controls row"></div>').append(html);

        //event on change
        //use ViewOnMap(index) to trigger the marker on map
        this.html_element.find('#campusAccordion').on('show.bs.collapse', function (e) {
    	    var $this = $(e.target).siblings('.panel-heading').find('.panel-toggle');

console.log($this);
		    var id = parseInt($this.context.id.substring(8))+1;
self.ViewOnMap(id);
})

        return this.html_element;
    }

};
function checkSchoolTypeText (aia, distance)
{
var html = '';
var email = '';
var web = '';
var twitter = '';

       if (aia.Email != "" && aia.Email != null ) { email = 'Contact: ' + aia.Contact + ' <a href="mailto:' + aia.Email + '">(Email)</a> | ';}
       if  (aia.Twitter != "" && aia.Twitter) { twitter = 'Twitter: <a href="http://twitter.com/' + aia.Twitter + '">@' + aia.Twitter + '</a> |';}
       if (aia.Website != null && aia.Website != "") { web = 'Website: <a href="' + aia.Website + '">' + aia.Website + '</a>'; }

       if (aia.StaffType == 'SportLinc') {html += '<p>This is student-led movement under the supervision of an AIA Staff member coaching them.</p>';}


    		 html += '<p>' + email + twitter + web + '</p>'

    		 if (distance==true) { html += '<p>This campus is approximatly ' + parseFloat(aia.Distance).toFixed(2).toString() + ' mi from the campus you searched for.'; }

    		 return html;
    	}

$(document).ready(function() {$.support.cors = true;
var apiURL = "https://api.athletesinaction.org/api/";
if (document.all && !window.atob) {
$('#searchbox').html("We're Sorry.  The campus locator doesn't work in this browser.  Please try a different browser.");
	}$('#schools').typeahead({
minLength: 3,
source: function(query, process) {
var schools = [];
var mapper = {};
$.ajax({
                        type: "GET",
                        url: apiURL + "campus?filtertype=name&filter="+ escape(query),
                        contentType: "application/json; charset=utf-8", // content type sent to server
                        dataType: "json", //Expected data format from server
                        success: function (result) {//On Successfull service call$.each(result, function(i, school) {
mapper[school.SchoolName] = school;
schools.push(school.SchoolName + " (" + school.SchoolCity + ", " + school.SchoolState + ")");
})
process(schools);
},
error: function (request, status, errorThrown) {
  
 alert(request + " " + status + " " + errorThrown);
} // When Service call fails
});
},
updater: function(item) {
\$.ajax({
type: "GET",
url: apiURL + "CampusLocator?SchoolName=" + escape(item) + "&Radius=20",
contentType: "application/json; charset=utf-8", // content type sent to server
dataType: "json", //Expected data format from server

    			      success: function (result) {//On Successfull service call
    			        //alert(result.SchoolName);
    			        schoolLocations = [
    			        	{
    				        	lat: result.Latitude,
    					        lon: result.Longititude,
    					        title: result.SchoolName,
    					        html: '<h4>' + result.SchoolName + ' - ' + result.City + '</h4>',
    					        icon: checkSchoolType(result.StaffType),
    					        zoom: 6,
    					        aia: result
    				        }
    			        ];

    			        var arrayd = (typeof result.NearBySchools) == 'string' ? eval('(' + result.NearBySchools + ')') : result.NearBySchools;
    					if (arrayd != null) {
    					     for (var i = 0; i < arrayd.length; i++) {
    					         //alert(', ' + arrayd[i].SchoolName);
    					         schoolLocations.push(
    					         	{
    					         		lat: arrayd[i].Latitude,
    							        lon: arrayd[i].Longititude,
    							        title: arrayd[i].SchoolName,
    							        html: '<h4>' + arrayd[i].SchoolName + ' - ' + arrayd[i].City + '</h4>',
    							        icon: checkSchoolType(arrayd[i].StaffType),
    							        zoom: 11,
    							        aia: arrayd[i]
    					         	}
    					         )
    					     }
    					}

    			        map.SetLocations(schoolLocations, true);
    			        map.Load();
    			        map.ViewOnMap(1);
    			      },
    			      error: function (request, status, errorThrown) {
    			        schools.push("There was an issue.  Please try again later.");
    			      } // When Service call fails
    			    });
    		    }
    		});


    	function checkSchoolType (StaffType)
    	{
    		 if(StaffType == 'Staffed') {return 'https://goaia.org/uploads/Campus/aiastaffpin.png';}
    		 else if (StaffType == 'SportLinc') {return 'https://goaia.org/uploads/Campus/aia-sportlinc-pin.png';}
    		 else if (StaffType == 'USCM Connect') {return 'https://goaia.org/uploads/Campus/crupin.png';}
    		 else {return 'https://goaia.org/uploads/Campus/no-presence.png';}

    	}
    	var map = new Maplace({
    		map_options: {
                set_center: [39.82, -98.57],
                zoom: 4
              },
       afterShow: function(index) { $('.in').removeClass('in');  $('#collapse' + index.toString()).addClass('in');}
        });

        map.AddControl('checks', html_checks);

        map.Load({
        	force_generate_controls: true,
        	controls_title: 'Schools',
            controls_type: 'checks',
            controls_on_map: false,
            view_all: false
        });





});
// ]]></script>

<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false&amp;libraries=geometry&amp;v=3.13&key=AIzaSyCsgds17jabTW6oyn9FO1W7EzCAdJl_tew"></script>
<script type="text/javascript" src="/uploads/Campus/maplace.min.js?v=0.2.5"></script>
<script type="text/javascript" src="/uploads/Campus/bootstrap3-typeahead.min.js"></script>
