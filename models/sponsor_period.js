module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  const Type = {
    SHORT: 1,
    LONG: 2,
  };

  const TypeName = {
    [Type.SHORT]: "short",
    [Type.LONG]: "long",
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
  SponsorPeriod.Type = Type;
  SponsorPeriod.TypeName = TypeName;

  return SponsorPeriod;
};
