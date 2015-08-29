---
---

exts = [{% for x in site.data.extensions %}
  "{{ x }}"{% endfor %}
]

convert = ->
  ext1 = exts[Math.floor(Math.random() * exts.length)]
  ext2 = exts[Math.floor(Math.random() * exts.length)]
  document.getElementById("converter").innerHTML = ".#{ext1} to .#{ext2} converter"

window.addEventListener 'load', (_) ->
  convert()
  document.getElementById("gen").addEventListener 'click', (__) ->
    convert()

