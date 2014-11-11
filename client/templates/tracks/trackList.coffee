Template.trackList.helpers
  track: ->
    Tracks.find()
  count: ->
    if Tracks.find().count() is 1
      sent = "1 Track"
    else
      sent = Tracks.find().count() + " Tracks"
    return sent