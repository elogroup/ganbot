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

  robot.respond /sab(i|í)a(s)? usted/i, (msg) ->
    msg.http('http://dykaas.com/es')
    .get() (err, res, body) ->
        msg.send body

  robot.respond /sabia (que )?na r(u|ú)ssia/i, (msg) ->
    msg.http('http://dykaas.com/ru')
    .get() (err, res, body) ->
        msg.send body
