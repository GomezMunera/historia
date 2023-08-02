---
layout: page
title: Simbolos
permalink: /simbolos/
---

<!-- -->
<div class="highlight">
    <h1 > Simbolos </h1>
    <div class="row">
        <div class="video-container">
            {% for simbolo in site.data.simbolos %}
                <div class="column">
                    <div class="card" style="width: 100%; min-height: 10rem">
                        {% include simbolos.html simbolo=simbolo %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </div>
</div>