const db = require("../models");

const sponsorPeriodJson = (period) => {
  if (!period) return null;

  return {
    id: period.id,
    name: period.name,
  };
};

module.exports = { sponsorPeriodJson };
