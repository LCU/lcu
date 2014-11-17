Template.userShow.helpers ->
#  userData: ->
#    Meteor.users.findOne({username: "#{@user}"})
#    console.log @user.toString()
#
#  username: ->
#    @user.toString()