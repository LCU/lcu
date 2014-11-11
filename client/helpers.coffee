UI.registerHelper "setTitle", ->
  titlePrefix = "LCU"
  title = ""
  i = 0
  while i < arguments.length - 1
    title += arguments[i]
    ++i
  document.title = "#{titlePrefix} - #{title}"
  return
