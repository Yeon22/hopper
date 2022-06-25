const fs = require("fs");
const path = require("path");
const basename = path.basename(__filename);

const { Sequelize } = require("sequelize");
const { setupRelations } = require("./relations");

require("dotenv").config();

const db = {};
const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: process.env.DB,
  }
);

const excludeFiles = [basename, "relations.js"];
fs.readdirSync(__dirname)
  .filter((file) => {
    return (
      file.indexOf(".") !== 0 &&
      !excludeFiles.includes(file) &&
      file.slice(-3) === ".js"
    );
  })
  .forEach((file) => {
    const model = require(path.join(__dirname, file))(
      sequelize,
      Sequelize.DataTypes
    );
    db[model.name] = model;
  });

// Setup relations between models
setupRelations(db);

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
