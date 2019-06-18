'use strict';

module.exports = (robot) => {
  robot.hear(/(.*)/i, (msg) => {
    const lots = [
      '羅宇',
      '方法',
      'イエス',
    ];
    const lot = lots[Math.floor(Math.random() * lots.length)];
    msg.reply(lot);
  });


};
