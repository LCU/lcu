Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"

Router.route "/", (->
  @render "Home"
),
  name: "Home"

Router.route "/about", (->
  @render "About"
),
  name: "About"

Router.route "/edit/:id.:ext", (->
  @render "aceEditor",
  data:
    docId: @params.id
    ext: @params.ext
),
  name: "Editor.ace"
