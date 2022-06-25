const bannerJson = (banner) => {
  if (!banner) return null;

  return {
    id: banner.id,
    title: banner.title,
    description: banner.description,
    site_url: banner.site_url,
    thumbnail_url: banner.image_url,
    tags: banner.tags,
  };
};

module.exports = { bannerJson };
