---
title: Basketball Camps
permalink: "/basketball/camps"
type: page
layout: page
---
<div class="container">
<h2 class="title text mb30">Summer <span class="light first-color">Youth Camps</span></h2>
<div class="row">
<img class="col-md-6 pull-right" src="/uploads/basketball/camp1.jpg" />
<p>
AIA’s youth basketball camps provide a great introduction to the game of basketball.  The focus is on learning basic fundamentals in an encouraging, enthusiastic environment.  No competitive games are played.  Gain the skills to improve your game while the competition takes a break!
</p>
<h3> Two Camps are available:</h3>
<b>Lil’ Dribbler Camps (LD) – $95</b> for boys and girls entering grades 1-4 from 9am until Noon

<b>High Performance Camps (HP) – $115</b> for boys and girls entering grades 4-9 from 1PM - 5 PM (end 4:30 on Friday)
</div>
<h2 class="title text-center mb30">2018 <span class="light first-color">Locations</span></h2>
</div>
<div class="container">
<div class="row mt20">
<div class="col-md-6">
    <h2>Little Dribblers Camps (Grades 1-4)</h2>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% assign sorted = (site.camps | where: "type","Little Dribbler") %}
        {% for post in sorted %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="c1ph{{forloop.index}}">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#c1pb{{forloop.index}}" aria-expanded="false" aria-controls="c1pb{{forloop.index}}" class="collapsed"> {{ post.title }} ( {{ post.location }}<span class="panel-icon"></span> </a></h4>
                </div>
                <div id="c1pb{{forloop.index}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="c1ph{{forloop.index}}" aria-expanded="false" style="height: 0px;">
                    <div class="panel-body">
                        <strong>Dates:</strong>{{ post.start_date }} - {{post.end_date}} <br>
                        <strong>Address:</strong>{{ post.address }} 
                        <strong>Details:</strong>{{ post.content }}
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
<div class="col-md-6">
    <h2>High Performance Camps (Grades 4-9)</h2>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% assign sorted1 = (site.camps | where: "type","High Performance") %}
        {% for post in sorted1 %}
                       <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="c1ph{{forloop.index}}">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#c1pb{{forloop.index}}" aria-expanded="false" aria-controls="c1pb{{forloop.index}}" class="collapsed"> {{ post.title }} ( {{ post.location }}<span class="panel-icon"></span> </a></h4>
                </div>
                <div id="c1pb{{forloop.index}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="c1ph{{forloop.index}}" aria-expanded="false" style="height: 0px;">
                    <div class="panel-body">
                        <strong>Dates:</strong>{{ post.start_date }} - {{post.end_date}} <br>
                        <strong>Address:</strong>{{ post.address }} 
                        <strong>Details:</strong>{{ post.content }}
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
</div>
</div>
<div class="max-width callout no-border larger no-margin ">
<div class="container">
<div class="callout-wrapper">
<div class="callout-left">
<h2 class="callout-title">Registration</h2>
<p class="callout-desc">A $10 discount is available for each camper who registers with siblings or with three other campers. If you are registering online with a group, email <a href="mailto:aia.basketballcamps@athletesinaction.org" target="_blank">aia.basketballcamps@athletesinaction.org</a>&nbsp;with the names in the group. There is also a $10 discount if you attend more than one camp. Indicate your discount on the registration if applicable.&nbsp;</p>
<p class="callout-desc">Due to great response in past camps, we encourage you to register ASAP to secure a spot. Upon receipt of your application, information will be mailed to you specific to your camp.</p>
</div>
<!-- End .callout-left -->
<div class="callout-right"><a id="cl1" data-toggle="collapse" data-parent="#accordion" href="#cpb1" aria-expanded="false" aria-controls="cpb1" class="btn btn-dark no-radius min-width">Register Today!</a></div>
<!-- End .callout-right --></div>
<!-- End .callout-wrapper -->
<div id="cpb1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="cl1">
<div class="panel-body"><iframe width="100%" height="2700px" src="https://my.athletesinaction.org/public/forms/little-dribblers.aspx" seamless="seamless" frameborder="0"></iframe></div>
</div>
</div>
</div>

{% include plugins/video-callout.html image="/uploads/basketball/camp2.jpg"                text="A great indroduction to the game of basketball" byLine="Check out this video recap from past AIA Summer Youth Camps<br />Register today! Spaces are limited!" video="https://www.youtube.com/watch?v=grBxHVT20cw" %}