ganines = [
    "hee",
    "pode ser",
]

ganine_seal = "http://cdn.imghack.se/images/4e89eb72c2378123627354909cd9e13f.png"

module.exports = (robot) ->

    robot.hear /\.ganine/i, (msg) ->
        msg.send msg.random ganines

    robot.hear /(ganine seal|selo ganine)/i, (msg) ->
        msg.send ganine_seal
