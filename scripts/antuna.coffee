# Description:
#   Antunã's "Gente, Deixa o menino"
#
# Commands:
#   deixa o menino - laura antuña's most famous quote as a meme

antuna_meme = "http://f.cl.ly/items/0f112c0i2I323W0p0v33/laura-meme.png"

module.exports = (robot) ->

  robot.hear /dei?xa (a|o) menin(o|a)/i, (msg) ->
    msg.send antuna_meme
