cronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new cronJob('50 * * * * 1-5', () =>
    envelope = room: "slackstudy"
    word = [
      ""
    ]
    robot.send envelope, word
  )

  cronjob.start()