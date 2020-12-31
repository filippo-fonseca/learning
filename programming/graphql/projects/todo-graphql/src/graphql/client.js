import ApolloClient, { gql } from "apollo-boost";

const client = new ApolloClient({
    uri: "https://todo-graphql-react-1.herokuapp.com/v1/graphql",
})

client.query({
    query: gql`
    query getTodos {
        todos {
            id
            text
            done
        }
    }
    `
}).then(data => console.log({data}))

export default client;