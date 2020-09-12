const graphql = require("graphql");
const { GraphQLObjectType } = graphql;

const UserType = new GraphQLObjectType({
  name: "User",
  fields: {
    id: { type: graphql.GraphQLString },
    firstName: { type: graphql.GraphQLString },
    age: { type: graphql.GraphQLInt },
  },
});
