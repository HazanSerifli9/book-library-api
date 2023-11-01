const { submitQuery, camelKeys } = require("~root/lib/database");

const selectreaders = () => submitQuery`
    SELECT *
    FROM readers
`;

module.exports = camelKeys(selectreaders);