unless typeof MochaWeb is "undefined"
  MochaWeb.testOnly ->
    describe "Server initialization", ->
      it "There should be 3 tracks in the db", ->
        chai.assert(Tracks.find().count(), 3, 'There are 3 tracks')
        return
      return
    return