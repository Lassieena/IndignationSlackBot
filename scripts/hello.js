'use strict';

module.exports = (robot) => {

  //これらの言葉を発言すれば煽る
  robot.hear(/あおり|あおって|煽って|煽り|煽れ|Indignation|罵倒|ばか|バカ|馬鹿|草|お願い|よろしく|こんにちは|どうも|何|なに/i, Indignation);
  robot.hear(/くじ|please/i, fortune);

  //煽り言葉
  function Indignation(msg) {
    const lots = [
      '生きている価値あるー？',
      'あなたミチコオンラインやってないのー？？？',
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
      '私テスト90点なんだけど...全然取れなくてやばーい',
      '頼むからオツムかオムツのどっちかは装備してよー',
      '不思議なことに申し訳ないという気持ちが一ミリも湧いてこない...',
      '大人ならしっかりしてよー',
      'あなただけ消費税100倍ね!うざいから',
      'なんで生きてるか明日までに考えといてね',
      'あなた令和生まれ？',
      'おめーは令和の時代に必要とされていません。',
      'あなた学校行ってるの？',
      'あなたキモオタの鏡のような人ね'
    ];
    const lot = lots[Math.floor(Math.random() * lots.length)];
    msg.send(lot);
  }

  function fortune(msg) {
    const horos = ['[大吉]', '[吉]', '[中吉]', '[小吉]', '[末吉]', '[凶]', '[大凶]'];
    const num = Math.random();
    let horo;
    if (num < 0.01) {
      horo = horos[0];
    } else if (num < 0.08) {
      horo = horos[1];
    } else if (num < 0.18) {
      horo = horos[2];
    } else if (num < 0.33) {
      horo = horos[3];
    } else if (num < 0.49) {
      horo = horos[4];
    } else if (num < 0.68) {
      horo = horos[5];
    } else {
      horo = horos[6];
    }
    const words = [
      '残念だったねー。すごい方だよー',
      'よくそんな結果になったね？',
      '頑張った方だよ',
      'あなたにしてはすごすぎるよー',
      '珍しい結果しか出ないんだね',
      'おめでと〜',
      'すごいねー',
      'さすがだよ'
    ]
    const word = words[Math.floor(Math.random() * words.length)];

    msg.send(horo + word);
  }
};
