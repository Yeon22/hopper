const db = require("../models");

const fetchActiveSponsorPeriods = async () =>
  await db.SponsorPeriod.findAll({
    where: {
      status: db.SponsorPeriod.Status.ACTIVE,
    },
  });

module.exports = { fetchActiveSponsorPeriods };
