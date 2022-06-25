const express = require("express");
const app = express();
const db = require("./models");
const PORT = process.env.PORT || 3000;
const cors = require("cors");
const path = require("path");

app.use(express.urlencoded({ extended: false }));
app.use(
  cors({
    origin: ["*"],
    allowedHeaders: [
      "Origin",
      "Accept",
      "X-Requested-With",
      "Content-Type",
      "Authorization",
      "X-LT-TOKEN",
    ],
    methods: ["GET", "PUT", "POST", "DELETE", "PATCH", "OPTIONS"],
    optionsSuccessStatus: 200,
  })
);

const indexRouter = require("./routes/index");
app.use("/", indexRouter);
const bannersRouter = require("./routes/banners");
app.use("/banners", bannersRouter);
const sponsorsRouter = require("./routes/sponsors");
app.use("/sponsors", sponsorsRouter);

// default error handler
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    message: "죄송합니다. 오류가 발생하였습니다.",
  });
});

const dbConnectionCheck = async () => {
  console.log(`Checking database connection...`);
  try {
    await db.sequelize.authenticate();
    console.log("Database connection OK!");
  } catch (error) {
    console.error("Unable to connect to the database:", { error });
    process.exit(1);
  }
};

const init = () => {
  dbConnectionCheck().then(() => {
    console.log(`Starting server on port ${PORT}`);
  });
  app.listen(3000, () => {
    console.log(`Server started on port ${PORT}.`);
  });
};

init();

module.exports = {
  app,
  db,
};
