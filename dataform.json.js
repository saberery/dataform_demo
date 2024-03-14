// dataform.json.js
const env = process.env.ENVIRONMENT || "test";

const config = {
  defaultSchema: "Mart_demo_data",
  assertionSchema: "dataform_assertions",
  warehouse: "bigquery",
};

if (env === "test") {
  config.defaultDatabase = "pg-jp-n-app-637776";
  config.defaultLocation = "asia-northeast1";
} else {
  config.defaultDatabase = "pg-jp-n-app-181481";
  config.defaultLocation = "asia-northeast1";
}

module.exports = config;
