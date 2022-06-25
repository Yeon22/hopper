const setupRelations = (db) => {
  db.Sponsor.hasMany(db.SponsorItem, {
    foreignKey: "sponsor_id",
    constraints: false,
    as: "items",
  });
  db.SponsorItem.belongsTo(db.Sponsor, {
    foreignKey: "sponsor_id",
    constraints: false,
    as: "sponsor",
  });
  db.SponsorItem.belongsTo(db.SponsorCategory, {
    foreignKey: "category_id",
    constraints: false,
    as: "category",
  });
};

module.exports = { setupRelations };
