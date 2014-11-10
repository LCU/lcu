Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"

Router.route "/", ->
  @render "Home"

Router.route "/about", ->
  @render "About",
  name: "About"

#Router.route "/edit/:id", ->
#  @render "editor"
#  data:
#    docId: @params.id

Router.route "/edit/:id.:ext", ->
  @render "aceEditor",
  data:
    docId: @params.id
    ext: @params.ext