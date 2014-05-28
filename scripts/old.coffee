# Description:
#   Generates random answers for the arrogants of the old generation
#
# Commands:
#   old - generates random answers for the arrogants of the old generation

answers = [
  "Ae, para com essa arrogância de #old aí cara.",
  "O old de hoje era o #new de ontem.",
  "O que é #ld pra você pode ser #new para alguém, pense nisso."
  "Geração do old, tsc.",
  "Essa pessoa que você mandou old poderia ser seu chefe. ",
  "Bacana isso aí, mas é muito #old."
]

module.exports = (robot) ->
  robot.hear /\bo+l+d\b/i, (msg) ->
    msg.send msg.random answers
