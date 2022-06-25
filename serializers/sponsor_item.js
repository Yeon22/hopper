const sponsorItemJson = (item) => {
  if (!item) return null;

  return {
    id: item.id,
    title: item.title,
    description: item.description,
    site_url: item.site_url,
    thumbnail_url: item.thumbnail_url,
  };
};

module.exports = { sponsorItemJson };
