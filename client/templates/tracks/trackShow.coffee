Template.trackShow.helpers ->
  Track: ->
    console.log(@name.toString())
    TrackInfo.find({name: @name.toString()})
# Y U NO WERK COFFEESCIRIPT
