# Description:
#   Receive an apina
#
# Commands:
#   hubot apina - Receive an apina

module.exports = (robot) ->

  robot.respond /apina/i, (msg) ->
    msg.http("http://apinaporn.com/random")
      .headers(Cookie: 'i_need_it_now=fapfap')
      .get() (err, res, body) ->
        msg.send "http://apinaporn.com/" + res.headers['Location'].match(/\d+/)[0] + ".jpg"