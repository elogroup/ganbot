# Description:
#   Everybody ganining!!
#
# Commands:
#   ganinar - generate a random ganine jargon.
#   selo ganine - puts the ganine seal in the room.

ganine_jargons = [
  "ehh",
  "pode ser",
  "naum",
  "não não",
  "tipo",
  "sim sim",
  "eeeeehh"
]

ganine_seal = "http://cdn.imghack.se/images/4e89eb72c2378123627354909cd9e13f.png"

module.exports = (robot) ->

  robot.hear /^ganinar$/i, (msg) ->
    jargons = Math.floor(Math.random() * (6) + 2)
    random_jargons = (jargon for jargon in (msg.random ganine_jargons for [1..jargons]))
    msg.send random_jargons.join ' '

  robot.hear /(ganine seal|selo ganine)/i, (msg) ->
    msg.send ganine_seal
