Template.aceEditor.helpers
  config: ->
    if @ext isnt `undefined`
      switch @ext.toString()
        when "js"
          lang = "javascript"
        when "html"
          lang = "html"
        when "css"
          lang = "css"
        when "coffee"
          lang = "coffee"
        when "rb"
          lang = "ruby"
        when "c"
          lang = "c_cpp"
        when "cpp"
          lang = "c_cpp"
        when "cc"
          lang = "c_cpp"
        when "cxx"
          lang = "c_cpp"
        when "py"
          lang = "python"
        when "md"
          lang = "markdown"
        when "json"
          lang = "json"
        when "go"
          lang = "golang"
        when "dart"
          lang = "dart"
        when "txt"
          lang = "plain_text"
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
    if @ext isnt `undefined`
      switch @ext.toString()
        when "js"
          lang = "javascript"
        when "html"
          lang = "html"
        when "css"
          lang = "css"
        when "coffee"
          lang = "coffee"
        when "rb"
          lang = "ruby"
        when "c"
          lang = "c_cpp"
        when "cpp"
          lang = "c_cpp"
        when "cc"
          lang = "c_cpp"
        when "cxx"
          lang = "c_cpp"
        when "py"
          lang = "python"
        when "md"
          lang = "markdown"
        when "json"
          lang = "json"
        when "go"
          lang = "golang"
        when "dart"
          lang = "dart"
        when "txt"
          lang = "plain_text"

  code: ->
    Session.get 'code_value'

Template.aceEditor.events
  'keyup #editor': (e) ->
    Session.set 'code_value', ace.edit("editor").getSession().getValue()