# Description:
#   Você está falando de uma maneira burra.
#
# Commands:
#   maneira burra - Caetano wins!

caetano_image_uri = "http://www.tecnoetc.com.br/wp-content/uploads/2013/05/Burro.jpg"

say = (say,delay,msg) ->
  setTimeout (->
    msg.send say
  ),delay

module.exports = (robot) ->

  robot.hear /(maneira burra|que loucura|(como )?(voc(e|ê)|vc) (é|e) burro|(que )?coisa absurda)/i, (msg) ->
    say "Não...", 0, msg
    say "Você é burro cara,", 1000, msg
    say "que loucura,", 2000, msg
    say "como você é burro.", 3000, msg
    say "Que coisa absurda,", 4000, msg
    say "isso aí que você disse é tudo burrice,", 5000, msg
    say "burrice...", 6000, msg
    say "Eu num num num", 7000, msg
    say "num cunsigo gravar muito bem o que você falou porque você fala de uma maneira burra...", 8000, msg
    say "Entendeu...?", 9000, msg
    say caetano_image_uri, 11000, msg
