Template.editor.helpers
  config: ->
    (editor) ->
      editor.setTheme 'ace/theme/solarized_dark'
      editor.getSession().setMode 'ace/mode/plain_text'
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      editor.getSession().setTabSize 2
      editor.getSession().setUseSoftTabs true
      return
