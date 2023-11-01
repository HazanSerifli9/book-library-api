const handleAPIError = require("~root/utils/handleAPIError");
const createBook = require("~root/actions/books/createBook");

const postBookById = async (req, res) => {
  const { title, genre,ISBN,author } = req.body;

  try {
    const { bookId } = await createbook({ title, genre, ISBN,author });

    res.status(201).send({
      bookId
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postBookById;