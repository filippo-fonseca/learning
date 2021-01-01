import { gql } from "apollo-boost";

export const TOGGLE_TODO = gql`
    mutation toggleTodo($id: uuid!, $done: Boolean!) {
    update_todos(where: {id: {_eq: $id}}, _set: {done: $done}) {
        returning {
        id
        text
        done
        }
    }
    }
`;

export const ADD_TODO = gql`
    mutation addTodo($text: String!) {
        insert_todos(objects: {text: $text}) {
            returning {
                id
                text
                done
            }
        }
    }`;
