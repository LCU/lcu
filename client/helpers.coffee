UI.registerHelper "setTitle", ->
  titlePrefix = "LCU"
  title = ""
  i = 0
  while i < arguments.length - 1
    title += arguments[i]
    ++i
  document.title = "#{titlePrefix} - #{title}"
  return

UI.registerHelper "pluralize", (n, thing) ->
  if n is 1
    "1 #{thing}"
  else
    "#{n} #{thing}s"
