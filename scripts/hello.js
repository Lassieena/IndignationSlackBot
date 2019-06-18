'use strict';

module.exports = (robot) => {
  robot.hear(/(.*)/i, (msg) => {
    const username = msg.message.user.name;
    const lots = [
      '',
      '',
      '',
    ];
    const lot = lots[Math.floor(Math.random() * lots.length)];
    msg.reply(lot);
  });


};
