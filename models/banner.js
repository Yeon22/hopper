module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  /**
   * 캠페인성 후원(긴급 후원 등)
   */
  const Banner = db.define(
    "Banner",
    {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER,
      },
      title: {
        allowNull: false,
        type: DataTypes.STRING(125),
      },
      tags: {
        allowNull: false,
        type: DataTypes.STRING(125),
        defaultValue: "",
      },
      description: {
        allowNull: false,
        type: DataTypes.TEXT,
      },
      site_url: {
        allowNull: false,
        type: DataTypes.STRING(512),
      },
      image_id: {
        allowNull: false,
        type: DataTypes.INTEGER,
      },
    },
    {
      getterMethods: {
        image_url() {
          if (this.image_id)
            return `${process.env.URL}/banner/${this.image_id}.png`;
          return `${process.env.URL}/default.png`;
        },
      },
      tableName: "banner",
      createdAt: "created_date_time",
      updatedAt: "updated_date_time",
    }
  );

  Banner.Status = Status;

  return Banner;
};
