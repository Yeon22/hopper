const setupRelations = (db) => {
  db.SponsorItem.belongsTo(db.SponsorPeriod, {
    foreignKey: "period_id",
    constraints: false,
    as: "period",
  });
};

module.exports = { setupRelations };
