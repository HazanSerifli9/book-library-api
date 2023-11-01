const { submitQuery, camelKeys} = require("~root/lib/database");

const insertBook = ({ title, genre, author, ISBN }) => submitQuery`
    INSERT INTO books(title, genre, author, ISBN)
    VALUE(${title}, ${genre},${author}, ${ISBN});
`;

module.exports = camelKeys(insertBook);
  