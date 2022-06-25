module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  /**
   * 후원 상세 정보
   */
  const SponsorItem = db.define(
    "SponsorItem",
    {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER,
      },
      sponsor_id: {
        allowNull: false,
        type: DataTypes.INTEGER,
      },
      category_id: {
        allowNull: false,
        type: DataTypes.INTEGER,
      },
      period_id: {
        allowNull: true,
        type: DataTypes.INTEGER,
      },
      title: {
        allowNull: false,
        type: DataTypes.STRING(125),
      },
      description: {
        allowNull: false,
        type: DataTypes.TEXT,
      },
      site_url: {
        allowNull: false,
        type: DataTypes.STRING(255),
        defaultValue: "",
      },
      tags: {
        allowNull: false,
        type: DataTypes.STRING(125),
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
      getterMethods: {
        thumbnail_url() {
          if (this.thumbnail_id)
            return `${process.env.URL}/sponsor_item/${this.thumbnail_id}.jpeg`;
          return `${process.env.URL}/default.png`;
        },
      },
      tableName: "sponsor_item",
      createdAt: "created_date_time",
      updatedAt: "updated_date_time",
    }
  );

  SponsorItem.Status = Status;

  return SponsorItem;
};
