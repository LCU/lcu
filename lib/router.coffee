Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
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
  name: "Editor.ace"

Router.route "/track", (->
  @render "trackList"
),
  name: "track.list"
