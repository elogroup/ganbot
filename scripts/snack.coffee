# Description:
#   Randomly chooses the snack of the day.
#
# Commands:
#   qual vai ser o lanche? - Randomly chooses the snack of the day.

snack_itens = [
  "pão de queijo recheado",
  "misto com tomate",
  "bolo"
]

module.exports = (robot) ->

  robot.hear /qual vai ser o lanche/i, (msg) ->
    msg.send "Hoje vai rolar #{msg.random snack_itens}"
