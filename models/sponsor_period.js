module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  /**
   * 후원 기간(장기, 단기) 유형
   */
  const SponsorPeriod = db.define(
    "SponsorPeriod",
    {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER,
      },
      name: {
        allowNull: false,
        type: DataTypes.STRING(10),
      },
      status: {
        allowNull: false,
        type: DataTypes.INTEGER(2),
        defaultValue: Status.ACTIVE,
      },
    },
    {
      tableName: "sponsor_period",
      createdAt: "created_date_time",
      updatedAt: "updated_date_time",
    }
  );

  SponsorPeriod.Status = Status;

  return SponsorPeriod;
};
