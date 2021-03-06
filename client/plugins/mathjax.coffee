window.plugins.mathjax =
  emit: (div, item) ->
    typeset = ->
      window.MathJax.Hub.Typeset div.get(0)
    wiki.getScript 'http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'
    div.append "<p>#{wiki.resolveLinks(item.text)}</p>"
    setTimeout typeset, 1000
  bind: (div, item) ->
    div.dblclick -> wiki.textEditor div, item


