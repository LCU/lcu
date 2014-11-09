Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"

Router.route "/", ->
  @render "Home"

Router.route "/about", ->
  @render "About"

Router.route "/edit/:id", ->
  @render "aceEditor",
    data:
      docId: @params.id
