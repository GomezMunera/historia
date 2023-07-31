---
layout: default
title: Recuerdos
permalink: /recuerdos/
---
<html>

    <!--ANIMACIÓN-->
    <h1 class="ml1">
      <span class="text-wrapper">
        <span class="line line1"></span>
        <span class="letters">{{ page.title }}</span>
        <span class="line line2"></span>
      </span>
    </h1>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script src="{{ site.baseurl }}/assets/JS/animacion.js"></script>

  <!--LLAMADO A LAS IMAGENES-->

    {% for image in site.static_files %}
      {% if image.path contains 'assets/img/recuerdos' %}
          <div class="gallery">
          <a href="#openModal{{ image.path }}">
            <img class="imagen-gallery" srcset="{{site.baseurl}}{{image.path}}" alt="Marinilla" style="width:200px">
          </a>
          </div>

          <div id="openModal{{ image.path }}" class="modalDialog">
            <div>
              <a href="#close" title="Close" class="close">X</a>
              <h2>Recuerdos</h2>
              <img class="imagen-gallery" srcset="{{site.baseurl}}{{image.path}}" alt="Marinilla" style="width:100%; max-height:40rem">
            </div>
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
