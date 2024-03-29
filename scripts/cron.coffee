cronJob = require('cron').CronJob

random = (n) -> Math.floor(Math.random() * n)

# 煽り言葉
hogo = (msg) ->
    word = [
      "なんか面白い話してーよー!!",
      "ミチコオンラインの時間だよー",
      "お仕事の時間だよー",
      "あなたよくここまで生きれたね",
      "何でここにいるのよー",
      "なんで私がいるか？キミノソーツォードーリダヨ",

    ]
    envelope = room: "煽りチャンネル"
    msg.send envelope, word[random(word.length)]
    return

module.exports = (robot) ->

  # 時間指定
  cronjob = new cronJob(
    cronTime: '0 35 10 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
    )

  cronjob = new cronJob(
    cronTime: '0 35 11 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
  )

  cronjob = new cronJob(
    cronTime: '0 35 12 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
  )

  cronjob = new cronJob(
    cronTime: '0 05 14 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
  )

  cronjob = new cronJob(
    cronTime: '0 05 15 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
  )

  cronjob = new cronJob(
    cronTime: '0 05 16 * * 1-5'
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      hogo(robot)
  )

  cronjob.start()
