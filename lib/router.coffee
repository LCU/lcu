Router.configure
  layoutTemplate: "layout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  waitOn: ->
    Meteor.subscribe "tracks"

AnalyticsController = RouteController.extend(
  onAfterAction: ->
    analytics.page @path if Session.equals("AnalyticsJS_loaded", true)
    @next()
    return
)

Router.route "/", (->
  @render "Home"
  return
),
  name: "Home"
  controller: "AnalyticsController"

Router.route "/about", (->
  @render "About"
  return
),
  name: "About"
  controller: "AnalyticsController"

Router.route "/edit/:id.:ext", (->
  @render "aceEditor",
  data:
    docId: @params.id
    ext: @params.ext
  return
),
  name: "editor.ace"
  controller: "AnalyticsController"

Router.route "/tracks", (->
  @render "trackList"
  return
),
  name: "track.list"
  controller: "AnalyticsController"

Router.route "/track/:name", (->
  @render "trackShow",
  data:
    name: @params.name
  return
),
  name: "track.show"
  controller: "AnalyticsController"
