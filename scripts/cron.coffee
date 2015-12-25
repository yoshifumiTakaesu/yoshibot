###cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '5 * * * * *', () =>
    robot.send  "","5 secand"
  , null, true, "Asia/Tokyo"
###