'use strict';

module.exports = (robot) => {

  robot.respond(/.*/i, Indignation);

  robot.hear(/煽り|煽ってくださーい|please|/i, Indignation);

  function Indignation(msg) {
    const lots = [
      '生きている価値あるー？',
      'お前ミチコオンラインやってないのー？？？',
      'この烏龍茶が!!',
      'このお話つまんなーい',
      'どこが悪いのぉ？あたまぁ？',
      'がきかよ',
      'ちょっと何言ってんかわかんなーい',
      '本当は謝りたくないけどごめんなさい',
      'わぁ変態さんだぁ',
      '日本語で話してくださぁい',
      '勝手にやっててくださぁーい',
      '全部おめーが悪いんです',
      'どうしてそんなにおバカさんなのぉ？',
      'おまわりさん！この人です！',

    ];
    const lot = lots[Math.floor(Math.random() * lots.length)];
    msg.reply(lot);
  }


};
