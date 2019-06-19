cronJob = require('cron').CronJob


random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->

  cronjob = new cronJob('35 10 * * * 1-5', () =>
  word1 = [
      "こい"
      "りす"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word1[random(word1.length)]
  )

  cronjob = new cronJob('35 11 * * * 1-5', () =>
  word2 = [
      "ff"
      "ff"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word2[random(word2.length)] + '@all'
  )

  cronjob = new cronJob('35 12 * * * 1-5', () =>
    word3 = [
      "ff"
      "ff"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word3[random(word3.length)]
  )

  cronjob = new cronJob('05 14 * * * 1-5', () =>
    word4 = [
      "ff"
      "ff"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word4[random(word4.length)]
  )

  cronjob = new cronJob('05 15 * * * 1-5', () =>
    word5 = [
      "ff"
      "ff"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word5[random(word5.length)]
  )

  cronjob = new cronJob('05 16 * * * 1-5', () =>
    word6 = [
      "ff"
      "ff"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word6[random(word6.length)]
  )

  cronjob.start()