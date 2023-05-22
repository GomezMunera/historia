---
layout: default
title: Repositorio
permalink: /repositorio/
---


<div class="highlight">
<center>
  <h1> Estudio Monográfico </h1>
  <h2> Marinilla 1967-2014 </h2>
</center>

  <div class="row">
    {%- assign pdfs = site.static_files | where_exp: "file", "file.path contains 'monografia'" -%}  
    {% for pdf in pdfs %}
      <div class="column">
        <div class="flex-container">
          <div class="card" style="width: 400px; height: 280px;">
          <a href="{{site.baseurl}}{{ pdf.path }}"><img src="{{site.baseurl}}/assets/img/img_mono/imagen_mono.png"></a>
            <div class="container">
              <h4><b>{{ pdf.basename | slice: 0,120 }}
              {% if pdf.basename.size > 120  %}...{% endif %}
              </b></h4>
              <p> <button><a href="{{site.baseurl}}{{ pdf.path }}">Archivo</a></button></p>
            </div>  
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
</div>


<div class="highlight">
  <h1 > Tesis </h1>
  <div class="row">
    {%- assign pdfs = site.static_files | where_exp: "file", "file.path contains 'PDF'" -%}  
    {% for pdf in pdfs %}
      <div class="column">
        <div class="card" style="width: 320px; height: 280px;">
          <h4><b>{{ pdf.basename | slice: 0,120 }}
          {% if pdf.basename.size > 120  %}...{% endif %}
          </b></h4>
          <p>Leer <a href="{{site.baseurl}}{{ pdf.path }}">Archivo</a>.</p>
        </div>
      </div>
    {% endfor %}
  </div>
</div>
