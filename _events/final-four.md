---
title: Final Four Events
location: Minneapolis, MN & Tampa, FL
image: "/uploads/basketball/finalfourEvents.png"
permalink: "/basketball/events/finalfour"
date: 2019-04-04
start_date: 'April 4th, 2019 '
end_date: April 7th, 2019
layout: no-title
alt_url: ''
short_description: AIA Basketball has various events, highlighted by the Legends of
  the Hardwood Breakfast at the Men's Final Four. Check out our events by going to
  the Final Four Events Page below.
sport: basketball
date: ''
final_four: ''

---
<div class="bg-image pt40 pb40 pb60-xs overlay-container fullwidth" data-bgattach="/uploads/basketball/basketballsonrack.jpg" style="background-image: url('/uploads/basketball/basketballsonrack.jpg');">
    <div class="overlay"></div>
    <div class="mb20"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-push-2" style="text-align: center;">
                <h2 class="title text-center mb30">Final Four <span class="light first-color">Events</span></h2>
                <a href="http://nabcministryevents.org/" class="btn btn-dark no-radius min-width">NABC Ministry Events Guide</a>
                <div class="mb20"></div>
            </div>
        </div>
    </div>
</div>
<div class="container mt20">
    {% assign sortedevents = site.events | where: "sport","final four" %}
        {% for post in sortedevents %}
            <article class="col-sm-6 col-xs-12 event">
                <h2 class="entry-title">
                    {% if post.alt_url %}
                        <a href="{{post.alt_url}}">{{ post.title }}</a>
                    {% else %}
                        <a href="{{post.url}}">{{ post.title }}</a>
                    {% endif %}
                </h2>
                <div class="entry-media">
                <figure>
                    {% if post.alt_url %}
                        <a href="{{post.alt_url}}">
                    {% else %}
                        <a href="{{post.url}}">
                    {% endif %}
                        <img src="{{ post.image }}" alt="event"> </a></figure>
                </div>
                <!-- End .entry-media -->
                <div class="event-meta">
                <div class="event-place event-meta-box"><span class="event-label"><i class="fa fa-map-marker fa-fw"></i>Venue:</span>{{ post.location }}</div>
                <!-- End .event-date -->
                <div class="event-date event-meta-box"><span class="event-label"><i class="fa fa-calendar fa-fw"></i>Date:</span>{{ post.start_date }} {% if post.end_date %}- {{ post.end_date }}{% endif %}</div>
                <!-- End .event-date --> <!-- end .event-meta -->
                <p><span>{{ post.short_description }}</span></p>
                {% if post.alt_url %}
                    <a href="{{ post.alt_url }}" class="btn btn-dark no-radius btn-block">Event Page</a>
                {% else %}
                    <a href="{{ post.url }}" class="btn btn-dark no-radius btn-block">Event Page</a>
                {% endif %}
                <footer class="entry-footer clearfix"></footer></div>
            </article>
    {% endfor %}
</div>