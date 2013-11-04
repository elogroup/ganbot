# Description:
#   Get yourself some learning
#
# Commands:
#   ganbot voce sabia - Gabriel Mateus shares his wisdom
#   ganbot did you know - His heavily accented indian brother does the same in English

module.exports = (robot) ->
  robot.respond /did you know/i, (msg) ->
    msg.http('http://dykaas.com/en')
    .get() (err, res, body) ->
        msg.send body

  robot.respond /voc(e|ê) sabia/i, (msg) ->
    msg.http('http://dykaas.com/pt')
    .get() (err, res, body) ->
        msg.send body
