'use strict';

module.exports = (robot) => {

  //煽り少女と呼べば煽る
  robot.respond(/.*/i, Indignation);

  //これらの言葉を発言すれば煽る
  robot.hear(/煽り|煽れ|煽ってください|煽ってくださーい|please/i, Indignation);

  //煽り言葉
  function Indignation(msg) {
    const lots = [
      '生きている価値あるー？',
      'お前ミチコオンラインやってないのー？？？',
      'この烏龍茶が!!',
      'このお話つまんなーい',
      'どこが悪いのぉ？あたまぁ？',
      'がきかよー',
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
    msg.send(lot);
  }
};
