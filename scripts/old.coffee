# Description:
#   Generates random answers for the arrogants of the old generation
#
# Commands:
#   old - generates random answers for the arrogants of the old generation

answers = [
  "Ae, para com essa arrogância de #old aí cara.",
  "O #old de hoje era o #new de ontem.",
  "O que é #old pra você pode ser #new para alguém, pense nisso."
  "Geração #old não agrega no camarote.",
  "Essa pessoa que você mandou #old poderia ser seu chefe. ",
  "Bacana isso aí, mas é muito #old.",
  "http://d.pr/i/PBhz.gif"
]

module.exports = (robot) ->

 robot.hear /old/i, (msg) ->
   msg.send msg.random answers