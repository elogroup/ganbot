# Description:
#   Mudar pra melhor
#
# Commands:
#   tavamelhor - Mudar pra melhor

tava_melhor = "Mudar pra melhor, com certeza. Quer dizer, quer mudar melhor. Já tava bom, você quer mudar ele pra melhor. Não tava muito bom, tava meio ruim também. Agora parece que piorou.﻿"

module.exports = (robot) ->
  robot.hear /tava melhor|piorou|tava bom/i, (msg) ->
    msg.send tava_melhor
