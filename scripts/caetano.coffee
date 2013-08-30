# Description:
#   Você está falando de uma maneira burra.
#
# Commands:
#   maneira burra - Caetano wins!

caetano_image_uri = "http://www.tecnoetc.com.br/wp-content/uploads/2013/05/Burro.jpg"

class SayWithDelay

  constructor: (@msg) ->
    @delay = 0

  say: (text,sum_delay=0) ->
    @delay += sum_delay
    setTimeout (=>
      @msg.send text
    ),@delay

  #receives an object in format {text: 'blabla', delay: 1} to make say something
  batchSay: (array) ->
    for a in array
      @say(a.text,a.delay)


module.exports = (robot) ->

  robot.hear /(maneira burra|que loucura|(como )?(voc(e|ê)|vc) (é|e) burro|(que )?coisa absurda)/i, (msg) ->
    caetano = new SayWithDelay(msg)

    text = [ 
      {text: "Não...", delay: 0},
      {text: "Você é burro cara,", delay: 1000},
      {text: "que loucura,", delay: 1000},
      {text: "como você é burro.", delay: 1000},
      {text: "Que coisa absurda,", delay: 1000},
      {text: "isso aí que você disse é tudo burrice,", delay: 1000},
      {text: "burrice...", delay: 1000},
      {text: "Eu num num num", delay: 1000},
      {text: "num cunsigo gravar muito bem o que você falou porque você fala de uma maneira burra...", delay: 1000},
      {text: "Entendeu...?", delay: 1000},
      {text: caetano_image_uri, delay: 2000}
    ]
    caetano.batchSay(text)