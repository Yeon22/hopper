const sponsorCategoryJson = (category) => {
  if (!category) return null;

  return {
    id: category.id,
    name: category.name,
    description: category.description,
    image_url: category.image_url,
  };
};

module.exports = { sponsorCategoryJson };
