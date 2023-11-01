const insertBook = require("-/queries/insertBook");

const createBook = async ({ title, genre, author, ISBN }) => {
    const bookId = await insertBook({ title, genre, author, ISBN });
    return{ bookId };
};
  

module.exports = createBook;