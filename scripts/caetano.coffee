# Description:
#   Você está falando de uma maneira burra.
#
# Commands:
#   maneira burra - Caetano wins!

caetano_image_uri = "http://www.tecnoetc.com.br/wp-content/uploads/2013/05/Burro.jpg"

module.exports = (robot) ->

  robot.hear /(maneira burra|que loucura|(como )?(voc(e|ê)|vc) (é|e) burro|(que )?coisa absurda)/i, (msg) ->
    msg.send "Não..."
    setTimeout ( ->
      msg.send "Você é burro cara,"
      setTimeout ( ->
        msg.send "que loucura,"
        setTimeout ( ->
          msg.send "como você é burro."
          setTimeout ( ->
            msg.send "Que coisa absurda,"
            setTimeout ( ->
              msg.send "isso aí que você disse é tudo burrice,"
              setTimeout ( ->
                msg.send "burrice..."
                setTimeout ( ->
                  msg.send "Eu num num num"
                  setTimeout ( ->
                    msg.send "num cunsigo gravar muito bem o que você falou porque você fala de uma maneira burra..."
                    setTimeout ( ->
                      msg.send "Entendeu...?"
                      setTimeout ( ->
                        msg.send caetano_image_uri
                      ), 1000
                    ), 4000
                  ), 1000
                ), 1000
              ), 1000
            ), 1000
          ), 1000
        ), 1000
      ), 1000
    ), 2000
