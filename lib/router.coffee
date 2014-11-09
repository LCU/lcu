Router.configure layoutTemplate: "layout"

Router.route "/",
  name: "editor"

Router.route "/edit/:id", ->
  @render "customeditor",
    data:
      docId: @params.id
  return