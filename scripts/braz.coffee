# Description:
#   Tá tudo errado!!!
#
# Commands:
#   ta tudo errado - all braz's rage in one image

tudo_errado = "http://f.cl.ly/items/083E0i0g0r132J013W2W/braz-meme.png"
muito_errado = "http://cl.ly/image/0j412W090H3Y/braz-meme2.png"

module.exports = (robot) ->

  robot.hear /(es)?t(a|á) tudo errado/i, (msg) ->
    msg.send tudo_errado

  robot.hear /muito errado/i, (msg) ->
    msg.send muito_errado
