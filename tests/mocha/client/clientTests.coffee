unless typeof MochaWeb is "undefined"
  MochaWeb.testOnly ->
    describe "Session", ->
      it "code_value should be undefined", ->
        chai.expect(Session.get("code_value")).to.be.an "undefined"
        return
      it "editor_value should be undefined ", ->
        chai.expect(Session.get("editor_value")).to.be.an "undefined"
      return
    return
