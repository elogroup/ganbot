ganine_jargons = [
  "ehh",
  "pode ser",
  "naum",
  "não não",
  "tipo",
  "sim sim",
  "eeeeehh"
]

ganine_seal = "http://cdn.imghack.se/images/4e89eb72c2378123627354909cd9e13f.png"

shuffle = (a) ->
  for i in [a.length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [a[i], a[j]] = [a[j], a[i]]
  a

module.exports = (robot) ->

  robot.hear /\.ganine/i, (msg) ->
    random_element_from = (array) -> array[Math.floor(Math.random() * array.length)]
    jargons = Math.floor(Math.random() * (6) + 2)
    random_jargons = (jargon for jargon in (random_element_from ganine_jargons for [1..jargons]))
    msg.send random_jargons.join ' '

  robot.hear /(ganine seal|selo ganine)/i, (msg) ->
    msg.send ganine_seal
