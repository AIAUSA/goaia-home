---
title: Events
permalink: "/basketball/events/"
type: page
layout: page
menu: basketball
---

<div class="container mt20">
    {% assign sortedevents = site.events | where: "sport","basketball" %}
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
                {% if post.alt_url and post.alt_url != '' %}
                    <a href="{{ post.alt_url }}" class="btn btn-dark no-radius btn-block">Event Page</a>
                {% else %}
                    <a href="{{ post.permalink }}" class="btn btn-dark no-radius btn-block">Event Page</a>
                {% endif %}
                <footer class="entry-footer clearfix"></footer></div>
            </article>
    {% endfor %}
</div>