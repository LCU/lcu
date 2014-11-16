UI.registerHelper "setTitle", ->
  titlePrefix = "LCU"
  title = ""
  i = 0
  while i < arguments.length - 1
    title += arguments[i]
    ++i
  document.title = "#{titlePrefix} - #{title}"
  Meta.set "twitter:title", "#{titlePrefix} - #{title}"
  Meta.set "og:title", "#{titlePrefix} - #{title}"
  return

UI.registerHelper "overTitle", ->
  title = ""
  i = 0
  while i < arguments.length - 1
    title += arguments[i]
    ++i
  document.title = title
  Meta.set "twitter:title", title
  Meta.set "og:title", title
  return

UI.registerHelper "pluralize", (n, thing) ->
  if n is 1
    "1 #{thing}"
  else
    "#{n} #{thing}s"

UI.registerHelper "meta", (type, content) ->
  Meta.set type, content