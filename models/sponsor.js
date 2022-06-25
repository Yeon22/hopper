module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  /**
   * 후원사 정보
   */
  const Sponsor = db.define(
    "Sponsor",
    {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER,
      },
      name: {
        allowNull: false,
        type: DataTypes.STRING(70),
      },
      site_url: {
        allowNull: false,
        type: DataTypes.STRING(255),
        defaultValue: "",
      },
      status: {
        allowNull: false,
        type: DataTypes.INTEGER(2),
        defaultValue: Status.ACTIVE,
      },
      thumbnail_id: {
        allowNull: false,
        type: DataTypes.INTEGER,
      },
    },
    {
      tableName: "sponsor",
      createdAt: "created_date_time",
      updatedAt: "updated_date_time",
    }
  );

  Sponsor.Status = Status;

  return Sponsor;
};
