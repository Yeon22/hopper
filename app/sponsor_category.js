const db = require("../models");

const fetchActiveCategories = async () =>
  await db.SponsorCategory.findAll({
    where: {
      status: db.SponsorCategory.Status.ACTIVE,
    },
  });

module.exports = {
  fetchActiveCategories,
};
