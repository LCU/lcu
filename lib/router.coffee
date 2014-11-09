Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"

Router.route "/",
  name: "Home"

Router.route "/edit/:id", ->
  @render "aceEditor",
    data:
      docId: @params.id
  return