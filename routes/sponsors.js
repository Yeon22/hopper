const { Router } = require("express");
const {
  fetchSponsorItemsByCategoryId,
  fetchSponsorItemsById,
} = require("../app/sponsor_item");
const { sponsorItemJson } = require("../serializers/sponsor_item");

const router = Router();

router.get("/categories/:category_id/items", async (req, res, next) => {
  try {
    const categoryId = req.params.category_id;
    if (!categoryId) {
      return res.status(400).json({ message: "존재하지 않는 페이지입니다." });
    }
    const sponsorItems = await fetchSponsorItemsByCategoryId(categoryId);

    res.json({
      items: sponsorItems.map((sponsorItem) => sponsorItemJson(sponsorItem)),
    });
  } catch (e) {
    console.error(e);
    next(e);
  }
});

router.get("/items/:id", async (req, res, next) => {
  try {
    const itemId = req.params.id;
    if (!itemId) {
      return res.status(400).json({ message: "존재하지 않는 후원입니다." });
    }

    const item = await fetchSponsorItemsById(itemId);
    res.json({
      item: sponsorItemJson(item),
    });
  } catch (e) {
    console.error(e);
    next(e);
  }
});

module.exports = router;
