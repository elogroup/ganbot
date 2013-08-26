# Description:
#   Batman 
#
# Commands:
#   batman - como ele é.

batman_meme = "http://f.cl.ly/items/0s2l06412m2Y3H1o0l1D/batman.gif"

module.exports = (robot) ->

  robot.hear /batman|batmanvem/i, (msg) ->
    msg.send batman_meme
