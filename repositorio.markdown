---
layout: default
title: Repositorio
permalink: /repositorio/
---

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
