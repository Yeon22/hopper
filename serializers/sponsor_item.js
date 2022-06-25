const sponsorItemJson = (item) => {
  if (!item) return null;

  const period = item.period || {};

  return {
    id: item.id,
    title: item.title,
    description: item.description,
    site_url: item.site_url,
    thumbnail_url: item.thumbnail_url,
    tags: item.tags,
    period_id: period.id || null,
  };
};

module.exports = { sponsorItemJson };
