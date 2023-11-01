const selectreaders = require("./queries/selectreaders");

const fetchreaders = async () => {
  const readers = await selectreaders();

  return { readers };
};

module.exports = fetchreaders;
