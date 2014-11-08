Template.editor.helpers
  config: ->
    return (editor) ->
      editor.setTheme 'ace/theme/monokai'
      editor.getSession().setMode 'ace/mode/javascript'
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      editor.getSession().setTabSize 2
      editor.getSession().setUseSoftTabs true
  docid: "home"