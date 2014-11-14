Template.trackShow.helpers ->
  Track: ->
    console.log(@name.toString())
# todo: query trackinfo collection for the track data
    TrackInfo.find({name: @name.toString()})
