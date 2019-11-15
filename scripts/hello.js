'use strict';

module.exports = (robot) => {

  //これらの言葉を発言すれば煽る
  robot.hear(/あおり|少女|あおって|煽|あおられた|indignation|罵倒|ばか|バカ|馬鹿|草|お願い|よろしく|おはよう|こんにちは|おやすみ|どうも/i, Indignation);
  robot.hear(/くじ|運勢|please/i, fortune);

  //煽り言葉
  function Indignation(msg) {
    const lots = [
      '生きている価値あるー？',
      'あなたポケモンやってないのー？？？',
      'この烏龍茶が!!',
      'このお話つまんなーい',
      'どこが悪いのぉ？あたまぁ？',
      'がきかよ',
      'ちょっと何言ってんかわかんなーい',
      'わぁ変態さんだぁ',
      '日本語で話してくださぁい',
      '勝手にやっててくださぁーい',
      '全部おめーが悪いんです',
      'どうしてそんなにおバカさんなのぉ？',
      'おまわりさん！この人です！',
      '頼むからオツムかオムツのどっちかは装備してよー',
      '不思議なことに申し訳ないという気持ちが一ミリも湧いてこない...',
      '大人ならしっかりしてよー',
      'あなただけ消費税100%ね!うざいから',
      'なんで生きてるか明日までに考えといてね',
      'あなた令和生まれ？',
      'あなたは令和の時代に必要とされていませーん',
      'あなた学校行ってるの？仕事してるの?',
      'あなたキモオタの鏡のような人ね',
      '君はそーつぉーどーりな人ね',
      'お前の居場所ねーから',
      'そんなことよりお金ちょうだいよぉ',
      'あっそう',
      'あなた運動出来ないの???',
      'よく生物として存在できるね?'
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
    } else if (num < 0.31) {
      horo = horos[3];
    } else if (num < 0.47) {
      horo = horos[4];
    } else if (num < 0.68) {
      horo = horos[5];
    } else {
      horo = horos[6];
    }
    const words = [
      '残念だったねー。すごい方だよー',
      'よくそんな結果をだせるね?',
      'あなたにしてはすごすぎるねー',
      '珍しい結果しか出ないんだね',
      '生物の中ではすごい方だよ'
    ]
    const word = words[Math.floor(Math.random() * words.length)];

    msg.send(horo + word);
  }


};
