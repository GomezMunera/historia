---
layout: page
title: Maleta
permalink: /maleta/
---

{% include pasaporte.html %}
Pasaporte realizado en la investigación, para invitar a conocer la ESPARTA COLOMBIANA

<!-- -->
<div class="highlight">
    <h1 > Postales </h1>
    <div class="row">
        <div class="video-container">
            {% for maleta in site.data.maleta.postales %}
                <div class="column">
                    <div class="card" style="width: 100%; min-height: 10rem">
                        {% include maleta.html maleta=maleta %}
                    </div>
                </div>
            {% endfor %}
        </div>
    </div>
</div>