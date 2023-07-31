---
layout: page
title: Multimedia
permalink: /multimedia/
---

## Marinillos por el Mundo

{% include powerbi.html %}

<div class="highlight">
    <h1 > Videos </h1>
    <div class="row">
        <div class="video-container">
            {% for video in site.data.videos %}
                <div class="column">
                    <div class="card" style="width: 100%; min-height: 10rem">
                        {% include videos.html video=video %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </div>
</div>
