# Description:
#   Aí sim - Lucas Silvestre
#
# Commands:
#   ai sim - lucas silvestre's most famous quote as a meme

silvestre_meme = "http://f.cl.ly/items/46152V2x03392k3v2I2S/lucas-ai-sim.png"

module.exports = (robot) ->

  robot.hear /a(í|i) si+m/i, (msg) ->
    msg.send silvestre_meme
