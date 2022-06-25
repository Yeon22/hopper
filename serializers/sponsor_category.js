const sponsorCategoryJson = (category) => {
  if (!category) return null;

  return {
    id: category.id,
    name: category.name,
    thumbnail_url: `${process.env.URL}/default.jpeg`,
  };
};

module.exports = { sponsorCategoryJson };
