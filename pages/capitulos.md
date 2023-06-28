---
layout: page # mirar si colocar tipo post
title: Capítulos
---

<div class="row">
{%- assign pdfs = site.static_files | where_exp: "file", "file.path contains 'capitulos'" -%}
{%- assign images = site.static_files | where_exp: "file", "file.path contains 'img/img_cap'" -%}   
{% for pdf in pdfs %}
    {% for image in images%}
        {% if image.path contains 'assets/img/img_cap' %}
            {% if image.basename == pdf.basename %}
            <div class="column">
                <div class="flex-container">
                    <div class="card" style="width: 100%; height: 500px">
                    <a href="{{site.baseurl}}{{ pdf.path }}"><img src="{{site.baseurl}}{{ image.path }}"></a>
                        <div class="container">
                            <h4><b>{{ pdf.basename | slice: 0,120 }}
                            {% if pdf.basename.size > 120  %}...{% endif %}
                            </b></h4>
                        <p> <button style="margin:0px"><a href="{{site.baseurl}}{{ pdf.path }}">Archivo</a></button></p>
                        </div>  
                    </div>
                </div>   
            </div>
            {% endif %}
        {% endif %}
    {% endfor %}
{% endfor %}
</div>

<div class="row">
    Link de migraciones para ver el mapa de Marinillos en el mundo <a href ="{{ site.baseurl }}/assets/pages/marinillos.html">Link</a> 

    <a href ="{{ site.baseurl }}/">referencia a la prueba</a> 

    <center>
    <iframe title="normativa" width="800" height="500" src="https://app.powerbi.com/view?r=eyJrIjoiNjhmZjlhZjktMTk1Yy00N2RjLWIyZGUtOTMwZWFjOGQ4NjE2IiwidCI6Ijk5ZTFlNzIxLTcxODQtNDk4ZS04YWZmLWIyYWQ0ZTUzYzFjMiIsImMiOjR9" frameborder="0" allowFullScreen="true"></iframe>
    </center>
</div>