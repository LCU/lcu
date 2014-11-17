AnalyticsController = undefined
Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  waitOn: ->
    Meteor.subscribe "tracks"


Iron.Router.hooks.analytics = ->
  setTimeout (->
    analytics.page @path if Session.equals("AnalyticsJS_loaded", true)
    return
  ), 10
  return

Router.onAfterAction "analytics"

Router.route "/", (->
  @render "Home"
  return
),
  name: "Home"

Router.route "/about", (->
  @render "About"
  return
),
  name: "About"

Router.route "/e/:id.:ext", (->
  @render "aceEditor",
  data:
    docId: @params.id
    ext: @params.ext
  return
),
  name: "editor.ace"

Router.route "/tracks", (->
  @render "trackList"
  return
),
  name: "track.list"

Router.route "/t/:name", (->
  @layout "trackLayout"
  @render "trackShow",
  data:
    name: @params.name
  return
),
  name: "track.show"

Router.route "/users", (->
  @render "userList",
  data:
    users: Meteor.users.find()
),
  name: "user.list"

Router.route "/u/:user", (->
  @render "userShow",
  data:
    user: Meteor.users.findOne({username: @params.user})
),
  name: "user.show"
