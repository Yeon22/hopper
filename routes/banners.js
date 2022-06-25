const { Router } = require("express");
const { fetchBannerById, fetchBannersExceptId } = require("../app/banner");
const { bannerJson } = require("../serializers/banner");

const router = Router();

router.get("/:id", async (req, res, next) => {
  try {
    const id = req.params.id;
    const banner = await fetchBannerById(id);
    const bannersExceptId = await fetchBannersExceptId(id);

    res.json({
      banner: bannerJson(banner),
      banners: bannersExceptId.map((b) => bannerJson(b)),
    });
  } catch (e) {
    console.error(e);
    next(e);
  }
});

module.exports = router;
