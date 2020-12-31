import { gql } from "apollo-boost";

export const GET_TODOS = gql`
    query getTodos {
        todos {
            done
            id
            text
        }
    }
`;