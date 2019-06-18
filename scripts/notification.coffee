cronJob = require('cron').CronJob

word = [
      "こい"
      "りす"
    ]
random = (n) ->
  Math.floor(Math.rondom() * n)

module.exports = (robot) ->

  cronjob = new cronJob('35 10 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob = new cronJob('35 11 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob = new cronJob('35 12 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob = new cronJob('05 14 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob = new cronJob('05 15 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob = new cronJob('05 16 * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob.start()