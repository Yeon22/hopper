const { Router } = require("express");
const { fetchActiveBanners } = require("../app/banner");
const { fetchActiveCategories } = require("../app/sponsor_category");
const { bannerJson } = require("../serializers/banner");
const { sponsorCategoryJson } = require("../serializers/sponsor_category");

const router = Router();

router.get("/home", async (req, res, next) => {
  try {
    const banners = await fetchActiveBanners();
    const categories = await fetchActiveCategories();
    res.json({
      banners: banners.map((banner) => bannerJson(banner)),
      categories: categories.map((category) => sponsorCategoryJson(category)),
    });
  } catch (e) {
    next(e);
  }
});

module.exports = router;
