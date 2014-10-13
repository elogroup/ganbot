# Description:
#   Randomly picks the next barista.
#
# Commands:
#   hubot quero cafe - Picks the next barista.

barista_candidates = [
  "Octavio",
  "Artur",
  "Ganine",
  "Moretti",
  "Georges",
  "Carol"
]

module.exports = (robot) ->

  robot.respond /(who will make coffee|quem vai fazer caf(e|é)|que+ro+ caf(e|é)+)( me)?/i, (msg) ->
    msg.send "#{msg.random barista_candidates} vai fazer café!"
