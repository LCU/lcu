Meteor.publish "tracks", ->
  Tracks.find()

Meteor.publish "users", ->
  Meteor.users.find()

Meteor.publish "trackinfo", (name) ->
  check name, String
  TrackInfo.find({name: name})