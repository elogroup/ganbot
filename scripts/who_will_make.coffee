candidates = [
  "Gabriel",
  "Octavio",
  "Bátima",
  "Artur",
  "Braz",
  "Ganine",
  "Moretti",
  "Laura"
]

say_who = (msg) ->
  who = msg.random candidates
  msg.send "#{who} vai fazer café!"

module.exports = (robot) ->
  robot.hear /(who will make coffee?|quem vai fazer caf(e|é)?|quero caf(e|é)*)/i, (msg) ->
    say_who(msg)