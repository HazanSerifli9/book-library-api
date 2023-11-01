const fetchreaders = require("~root/actions/readers/fetchreaders");
const handleAPIError = require("~root/utils/handleAPIError");

const getAllreaders = async (req, res) => {
  try {
    const { readers } = await fetchreaders();

    res.status(201).send({
      readers
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getAllreaders;
