subs = new SubsManager()
Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  waitOn: ->
    subs.subscribe "tracks"


# DOC: Track pageview on analytics
Iron.Router.hooks.analytics = ->
  setTimeout (->
    analytics.page @path if Session.equals("AnalyticsJS_loaded", true)
    return
  ), 5
  return

# DOC: After route accesed call analytics hook
Router.onAfterAction "analytics"

Router.map ->
  # DOC: Root route
  @route "Home",
    path: "/"
  # DOC: About route
  @route "About",
    path: "/about"
  # DOC: Route for ace editor, uses :id as document id
  @route "aceEditor",
    path: "/e/:id.:ext"
    action: ->
      @render "aceEditor",
        data:
          docId: @params.id
          ext: @params.ext

  # DOC: Show all the different tracks
  @route "trackList",
    path: "/tracks"

  # DOC: Show the track from :name
  @route "trackShow",
    path: "/t/:name"
    layoutTemplate: "trackLayout"
    data: ->
      track: TrackInfo.find({name: @params.name})
    waitOn: -> subs.subscribe "trackinfo", @params.name
    unload: -> subs.reset()

  # DOC: List all users on LCU instance
  @route "userList",
    path: "/users"
    data:
      users: -> Meteor.users.find()
    waitOn: -> subs.subscribe "users"

  # DOC: Show the user from :user url
  @route "userShow",
    path: "/u/:user"
    action: ->
      @render "userShow",
      data:
        user: Meteor.users.findOne({username: @params.user})
    waitOn: -> subs.subscribe "users"
