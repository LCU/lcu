Template.trackShow.helpers
  code: ->
    Session.get 'editor_value'

  config: ->
    (editor) ->
      editor.setTheme "ace/theme/solarized_dark"
      editor.getSession().setMode "ace/mode/html"
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      editor.getSession().setTabSize 2
      editor.getSession().setUseSoftTabs true
      return

Template.trackShow.events
  'keyup #editor': (e) ->
    Session.set 'editor_value', ace.edit("editor").getSession().getValue()


window.console.log = (msg) ->
  document.querySelector('.console').innerHTML += msg+"\n"
