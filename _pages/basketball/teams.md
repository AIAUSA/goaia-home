---
title: Basketball Competeing Teams
permalink: "/basketball/teams"
type: page
layout: page
menu: basketball
---
<div class="row">
<div class="span-12 cell"><div class="container">
<h2 class="title text mb30">International <span class="light first-color">Tours</span></h2>
<img class="col-md-6 pull-right" src="/uploads/basketball/team1.jpg" />
<b>For over 25 years, we’ve sent teams around the world to share the message of Jesus Christ through basketball.</b>

<p>Traveling on a tour will transform your life as you:</p>

<ul class="list-style list-disc">
<li>Grow in your relationship with Jesus Christ</li>
<li>Gain international playing experience</li>
<li>Learn to apply Biblical principles to competition</li>
<li>Learn how to share your faith</li>
<li>Experience making difference using your love for basketball</li>
</ul>
<br />
<p>Each summer athletes, coaches, athletic trainers and team administrators build their skills and experience through a tour. In 2016, our teams were making a difference in 12 countries, competing against National, University, and club teams. Check below for a list of our available opportunities</p>

<p>Get a glimpse of our tours at <a href="http://teamblogs.athletesinaction.org/section/global-sports/basketball">AIA Basketball's Teams Blog</a></p>
</div>
</div></div>
{% include plugins/video-callout.html image="/uploads/basketball/mo-coaching.jpg" text="What's a AIA Basketball Tour Like?" byLine="Check out this video recap from an AIA Basketball tour to the Philippines. <br />Want to join us this summer?" video="https://www.youtube.com/watch?v=evqlr_0AIzc" %}

<div class="row mt20">
<div class="span-12 cell"><div class="container">
<div class="col-md-4">
    <h2>Men's Tours</h2>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% assign sorted = site.teams | where: "type","Men" %}
        {% for post in sorted %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="c1ph{{forloop.index}}">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#c1pb{{forloop.index}}" aria-expanded="false" aria-controls="c1pb{{forloop.index}}" class="collapsed"> {{ post.title }} <span class="panel-icon"></span> </a></h4>
                </div>
                <div id="c1pb{{forloop.index}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="c1ph{{forloop.index}}" aria-expanded="false" style="height: 0px;">
                    <div class="panel-body">
                        <strong>Level:</strong> {{ post.level }}<br>
                        <strong>Director:</strong><a href="mailto:{{ post.director_email }}" target="_blank">{{ post.director }}</a> <br> 
                        <strong>Dates:</strong>{{ post.dates }} <br>
                        <strong>About:</strong>{{ post.content }}
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
<div class="col-md-4">
    <h2>Women's Tours</h2>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% assign sorted1 = site.teams | where: "type","Women" %}
        {% for post in sorted1 %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="c2ph{{forloop.index}}">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#c2pb{{forloop.index}}" aria-expanded="false" aria-controls="c2pb{{forloop.index}}" class="collapsed"> {{ post.title }} <span class="panel-icon"></span> </a></h4>
                </div>
                <div id="c2pb{{forloop.index}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="c2ph{{forloop.index}}" aria-expanded="false" style="height: 0px;">
                    <div class="panel-body">
                        <strong>Level:</strong> {{ post.level }}<br>
                        <strong>Director:</strong><a href="mailto:{{ post.director_email }}" target="_blank">{{ post.director }}</a> <br> 
                        <strong>Dates:</strong>{{ post.dates }} <br>
                        <strong>About:</strong>{{ post.content }}
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
<div class="col-md-4">
    <h2>Coaches's Tours</h2>
    <p>We are seeking to send coaches to host one week Coaching Clinics to accelerate the local AIA ministry in:</p>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% assign sorted2 = site.teams | where: "type","Coach" %}
        {% for post in sorted2 %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="c3ph{{forloop.index}}">
                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#c3pb{{forloop.index}}" aria-expanded="false" aria-controls="c3pb{{forloop.index}}" class="collapsed"> {{ post.title }} <span class="panel-icon"></span> </a></h4>
                </div>
                <div id="c3pb{{forloop.index}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="c3ph{{forloop.index}}" aria-expanded="false" style="height: 0px;">
                    <div class="panel-body">
                        <strong>Level:</strong> {{ post.level }}<br>
                        <strong>Director:</strong><a href="mailto:{{ post.director_email }}" target="_blank">{{ post.director }}</a> <br> 
                        <strong>Dates:</strong>{{ post.dates }} <br>
                        <strong>About:</strong>{{ post.content }}
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
</div>
</div></div>
<div class="row">
<div class="span-12 cell"><div class="container text-center">
<h3> For questions regarding AIA Basketball International Tours contact: <a href="mailto:Craig.Sladek@athletesinaction.org">Craig Sladek</a></h3>
</div></div>
{% include plugins/application-callout.html appLink="https://my.athletesinaction.org/Applications/Tour/Basketball/default.aspx" color="" %}