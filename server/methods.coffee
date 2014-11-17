Meteor.methods
  sendEmail: (to, from, subject, text) ->
    check [
      to
      from
      subject
      text
    ], [String]
    @unblock()
    Email.send
      to: to
      from: from
      subject: subject
      text: text
    return