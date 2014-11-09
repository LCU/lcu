Template.aceEditor.helpers
  config: ->
    extension = @ext.toString()
    (editor) ->
      editor.setTheme 'ace/theme/solarized_dark'
      editor.getSession().setMode ("ace/mode/" + extension)
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      editor.getSession().setTabSize 2
      editor.getSession().setUseSoftTabs true
      return

  mode: ->
    extension = @ext.toString()
    ("ace/mode/" + extension)
