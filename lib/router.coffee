subs = new SubsManager()
Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  waitOn: ->
    subs.subscribe "tracks"


Iron.Router.hooks.analytics = ->
  setTimeout (->
    analytics.page @path if Session.equals("AnalyticsJS_loaded", true)
    return
  ), 10
  return

Router.onAfterAction "analytics"

Router.map ->
  @route "Home",
    path: "/"

  @route "About",
    path: "/about"

  @route "aceEditor",
    path: "/e/:id.:ext?"
    data:
      docId: -> @params.id
      ext: -> @params.ext

  @route "trackList",
    path: "/tracks"

  @route "trackShow",
    path: "/t/:name"
    layoutTemplate: "trackLayout"
    data:
      name: -> @params.name

  @route "userList",
    path: "/users"
    data:
      users: -> Meteor.users.find()
    waitOn: -> subs.subscribe "users"

  @route "userShow",
    path: "/u/:user"
    data:
      user: -> Meteor.users.findOne({username: @params.user})