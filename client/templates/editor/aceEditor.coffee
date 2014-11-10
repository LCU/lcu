Template.aceEditor.helpers
  config: ->
    if @ext.toString() is "js"
      lang = "javascript"
    else if @ext.toString() is "html"
      lang = "html"
    else if @ext.toString() is "css"
      lang = "css"
    else if @ext.toString() is "coffee"
      lang = "coffee"
    else if @ext.toString() is "rb"
      lang = "ruby"
    else if @ext.toString() is "c"
      lang = "c_cpp"
    else if @ext.toString() is "cpp"
      lang = "c_cpp"
    else if @ext.toString() is "py"
      lang = "python"
    else if @ext.toString() is "md"
      lang = "markdown"
    else if @ext.toString() is "json"
      lang = "json"
    else if @ext.toString() is "plain"
      lang = "plain_text"
    else
      lang = ""
    (editor) ->
      editor.setTheme 'ace/theme/solarized_dark'
      editor.getSession().setMode "ace/mode/"+lang
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      editor.getSession().setTabSize 2
      editor.getSession().setUseSoftTabs true
      editor.commands.addCommand
        name: "execute"
        bindKey:
          win: "Ctrl-enter"
          mac: "Command-enter"
        exec: (editor) ->
          try
            r = eval(editor.getCopyText() or editor.getValue())
          catch e
            r = e
          console.dir r
          return

  mode: ->
    if @ext.toString() is "js"
      lang = "javascript"
    else if @ext.toString() is "html"
      lang = "html"
    else if @ext.toString() is "css"
      lang = "css"
    else if @ext.toString() is "coffee"
      lang = "coffee"
    else if @ext.toString() is "rb"
      lang = "ruby"
    else if @ext.toString() is "c"
      lang = "c_cpp"
    else if @ext.toString() is "cpp"
      lang = "c_cpp"
    else if @ext.toString() is "py"
      lang = "python"
    else if @ext.toString() is "md"
      lang = "markdown"
    else if @ext.toString() is "plain"
      lang = "plain_text"
    else
      lang = ""

  code: ->
    Session.get 'code_value'

Template.aceEditor.events
  'keyup #editor': (e) ->
    Session.set 'code_value', ace.edit("editor").getSession().getValue()
