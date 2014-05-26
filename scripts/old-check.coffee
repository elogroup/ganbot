# Description:
#   Checks if a link have already been posted
#

url_regexp = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/i
catalog_this_url = 'http://catalog-this.herokuapp.com'

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
      msg.send Object.keys(search_result)
      if Object.keys(search_result).length > 0
        msg.send "Oficialmente old!!"
      else
        client.catalog url, (new_link) ->
          msg.send "Tá registrado! #{new_link.site} -- #{new_link.title}"






