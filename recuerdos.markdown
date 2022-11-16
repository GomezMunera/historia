---
layout: default
title: Recuerdos
permalink: /recuerdos/
---
<html>

<h1>{{ "Recuerdos de Marinilla" | camelCase }}</h1>

    {% for image in site.static_files %}
      {% if image.path contains 'assets/img' %}
          <div class="gallery">
          <a target="_blank" href="{{site.baseurl}}{{image.path}}">
            <img src="{{site.baseurl}}{{image.path}}" alt="Forest" style="width:150px">
          </a>
          </div>
      {% endif %}
    {% endfor %}

</html>

<!--div>
  {% assign image_files = site.static_files | where: "image", true %}
    {% for myimage in image_files %}
      <img src="{{site.baseurl}}{{ myimage.path }}" alt="image" width="133">
    {% endfor %}
</div-->
