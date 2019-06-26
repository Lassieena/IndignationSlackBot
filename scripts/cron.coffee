cronJob = require('cron').CronJob

random = (n) -> Math.floor(Math.random() * n)

# 煽り言葉
hogo = (msg) ->
    word = [
      "なんか面白い話してー!!",
      "ミチコオンラインの時間だよー"
    ]
    envelope = room: "煽りチャンネル"
    msg.send envelope, word[random(word.length)]
    return

module.exports = (robot) ->

  # 時間指定
  cronjob = new cronJob('35 10 * * * 1-5', hogo(robot))
  cronjob = new cronJob('35 11 * * * 1-5', hogo(robot))
  cronjob = new cronJob('35 12 * * * 1-5', hogo(robot))
  cronjob = new cronJob('05 14 * * * 1-5', hogo(robot))
  cronjob = new cronJob('05 15 * * * 1-5', hogo(robot))
  cronjob = new cronJob('05 16 * * * 1-5', hogo(robot))

  cronjob.start()