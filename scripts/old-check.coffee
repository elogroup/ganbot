# Description:
#   Checks if a link have already been posted
#

url_regexp = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/i
catalog_this_url = 'http://catalog-this.herokuapp.com'

class CatalogThisClient
  constructor: (@server_url,@msg) ->

  search: (url) ->
    @msg.http(catalog_this_url + '/search/')
      .query({url: url})
      .get() (err, res, body) ->
        JSON.parse(body)

  catalog: (url) ->
    @msg.http(catalog_this_url + '/catalog/')
      .query({link: url})
      .post() (err, res, body) ->
        JSON.parse(body)


module.exports = (robot) ->
  robot.hear url_regexp, (msg) ->
    client = new CatalogThisClient(catalog_this_url,msg)
    url = msg.match[1] + '://' + msg.match[3]

    search_result = client.search(url)
    if Object.keys(search_result).length > 0
      msg.send "Oficialmente old!!"
    else
      new_link = client.catalog(url)
      msg.send "Tá registrado! #{new_link.site} -- #{new_link.title}"






