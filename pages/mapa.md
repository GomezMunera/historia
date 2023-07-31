---
layout: default
title: Mapa
permalink: /mapa/
---

<!-- styles -->
<style>
  .bar {
    fill: #a9a9a9;
    opacity: 0.5;
  }

  .bar:hover {
    fill: #ec008c;
    opacity: 0.5;
  }

  .series:hover .bar {
    fill: #ec008c;
    opacity: 1;
  }
</style>

<!-- styles end -->

<script type="text/javascript">

function color(x) {
  let elem = document.getElementById(x);
  displayName(x);

  if(x == 'Zona Urbana'){
    document.getElementById('ZU').src = '{{ site.baseurl }}/assets/urbana.svg';
    elem.style = 'fill:#0fb37c;fill-opacity:1;stroke:#fff;stroke-width:0;stroke-dasharray:none;stroke-opacity:0';
  }else{
    elem.style = 'fill:#ffa4a9;fill-opacity:1;stroke:#29352e;stroke-width:0.148823;stroke-dasharray:none;stroke-opacity:1';
  }
}

function cambiarcolor(x) {
  let elem = document.getElementById(x);

  displayName('');

  if(x == 'Zona Urbana'){
    document.getElementById('ZU').src = '';
    elem.style = 'fill:#F00;fill-opacity:1;color-interpolation:linearRGB;fill:#e5ed26;fill-opacity:1;stroke:#e5ed26;stroke-width:0.148823;stroke-dasharray:none;stroke-opacity:1';
  }else{
    elem.style = 'fill:#FFF;fill-opacity:1;stroke:#29352e;stroke-width:0.148823;stroke-dasharray:none;stroke-opacity:1';
  }
}

function displayName(name) {
    document.getElementById('vereda-nombre').firstChild.data = name;
}
</script>

{% include maps/marinilla.svg %}