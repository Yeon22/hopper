const db = require("../models");

const fetchSponsorItemsByCategoryId = async (categoryId) => {
  if (!categoryId) return null;

  return await db.SponsorItem.findAll({
    where: {
      category_id: categoryId,
      status: db.SponsorItem.Status.ACTIVE,
    },
  });
};

const fetchSponsorItemsById = async (id) => {
  if (!id) return null;

  return await db.SponsorItem.findOne({
    where: {
      id,
      status: db.SponsorItem.Status.ACTIVE,
    },
  });
};

module.exports = { fetchSponsorItemsByCategoryId, fetchSponsorItemsById };
