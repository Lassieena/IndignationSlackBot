cronJob = require('cron').CronJob


random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->

  cronjob = new cronJob('35 10 * * * 1-5', () =>
  word1 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word1[random(word1.length)] + '@here'
  )

  cronjob = new cronJob('35 11 * * * 1-5', () =>
  word2 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word2[random(word2.length)] + '@here'
  )

  cronjob = new cronJob('35 12 * * * 1-5', () =>
    word3 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word3[random(word3.length)] + '@here'
  )

  cronjob = new cronJob('05 14 * * * 1-5', () =>
    word4 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word4[random(word4.length)] + '@here'
  )

  cronjob = new cronJob('05 15 * * * 1-5', () =>
    word5 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word5[random(word5.length)] + '@here'
  )

  cronjob = new cronJob('05 16 * * * 1-5', () =>
    word6 = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    robot.send envelope, word6[random(word6.length)] + '@here'
  )


  cronjob.start()