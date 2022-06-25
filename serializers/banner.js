const bannerJson = (banner) => {
  if (!banner) return null;

  return {
    id: banner.id,
    title: banner.title,
    description: banner.description,
    site_url: banner.site_url,
    image_url: `${process.env.URL}/default.jpeg?raw=true`,
  };
};

module.exports = { bannerJson };
