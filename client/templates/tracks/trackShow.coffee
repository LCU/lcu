Template.trackShow.helpers ->
  code: ->
    Session.set "editor_value", "hi"
    return Session.get 'editor_value'

  config: ->
    (editor) ->
      editor.setTheme "ace/theme/monokai"
      editor.getSession().setMode "ace/mode/ruby"
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
