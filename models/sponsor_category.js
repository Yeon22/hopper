module.exports = (db, DataTypes) => {
  const Status = {
    ACTIVE: 1,
    INACTIVE: 0,
  };

  /**
   * 후원 카테고리
   */
  const SponsorCategory = db.define(
    "SponsorCategory",
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
      image_id: {
        allowNull: false,
        type: DataTypes.INTEGER,
      },
      status: {
        allowNull: false,
        type: DataTypes.INTEGER(2),
        defaultValue: Status.ACTIVE,
      },
    },
    {
      getterMethods: {
        image_url() {
          if (this.image_id)
            return `${process.env.URL}/sponsor_category/${this.image_id}.jpeg`;
          return `${process.env.URL}/default.jpeg`;
        },
      },
      tableName: "sponsor_category",
      createdAt: "created_date_time",
      updatedAt: "updated_date_time",
    }
  );

  SponsorCategory.Status = Status;

  return SponsorCategory;
};
