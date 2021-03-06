# Description:
#   Checks if a link have already been posted
#

url_regexp = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/i
catalog_this_url = 'http://catalog-this.herokuapp.com'

old_answers = [
  "Oficialmente old!"
  "Ae, isso é old cara.",
  "Bacana isso aí, mas é old.",
  "http://i.imgur.com/0qTNsQq.png"
]

class CatalogThisClient
  constructor: (@server_url,@msg,@context) ->

  search: (url,callback) ->
    data = {}
    @msg.http(catalog_this_url + '/search/')
      .query({url: url})
      .get() (err, res, body) =>
        data = JSON.parse(body)
        callback.call(@context,data)

  catalog: (url,callback) ->
    data  = {}
    @msg.http(catalog_this_url + '/catalog/')
      .query({link: url})
      .post() (err, res, body) =>
        if res.statusCode isnt 404
          data = JSON.parse(body)
          callback.call(@context,data)

module.exports = (robot) ->
  robot.hear url_regexp, (msg) ->
    client = new CatalogThisClient(catalog_this_url,msg,this)
    url = msg.match[1] + '://' + msg.match[3]

    client.search url, (search_result) ->
      if Object.keys(search_result).length > 0
        msg.send msg.random old_answers
      else
        client.catalog url, (new_link) ->
          if new_link.title != "No title"
            msg.send "#{new_link.title}"
