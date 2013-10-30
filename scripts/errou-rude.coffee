# Description:
#   Generates random expressions for doing the number two
#
# Commands:
#   errou-rude - generates random answers for old arrogance

answers = [
  "Errou feio, errou rude!",
  "Aí, para com essa arrogância de #old cara.",
  "O #old de hoje era o #new de ontem.",
  "O que é old pra você pode ser new para alguém, pense nisso."
  "Geração #old. tsc."
]

module.exports = (robot) ->

 robot.hear /old/i, (msg) ->
   msg.send msg.random answers