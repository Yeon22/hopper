const { Op } = require("sequelize");
const db = require("../models");

const fetchActiveBanners = async () =>
  await db.Banner.findAll({
    where: {
      status: db.Banner.Status.ACTIVE,
    },
  });

const fetchBannerById = async (id) => {
  if (!id) return null;

  return await db.Banner.findOne({
    where: {
      id,
      status: db.Banner.Status.ACTIVE,
    },
  });
};

const fetchBannersExceptId = async (id) => {
  if (!id) return await fetchActiveBanners();

  return await db.Banner.findAll({
    where: {
      id: {
        [Op.not]: id,
      },
      status: db.Banner.Status.ACTIVE,
    },
  });
};

module.exports = { fetchActiveBanners, fetchBannerById, fetchBannersExceptId };
