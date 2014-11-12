Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  waitOn: ->
    Meteor.subscribe "tracks"

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
  name: "editor.ace"

Router.route "/tracks", (->
  @render "trackList"
),
  name: "track.list"

Router.route "/track/:name", (->
  @render "trackShow",
  data:
    name: @params.name
),
  name: "track.show"
