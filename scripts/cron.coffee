cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 */20 * * * *', () =>
    robot.http("https://taget domain")
    .get() (err, res, body) ->
      if err
        robot.send "","Date:" + new Date + "\n" + "Encountered an error :( #{err}"
        return
      
      robot.send "","Date:" + new Date + "\n" + "statusCode:" + res.statusCode + "\n" + "statusMessage:" + res.statusMessage
  , null, true, "Asia/Tokyo"