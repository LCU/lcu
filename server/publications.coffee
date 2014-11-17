Meteor.publish "tracks", ->
  Tracks.find()

Meteor.publish "users", ->
  Meteor.users.find()