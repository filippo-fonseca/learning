import React from "react";
import { useQuery } from "@apollo/react-hooks";
import { GET_TODOS } from "./graphql/queries";
import { CircularProgress } from "@material-ui/core";

function App() {
  const { data, loading, error } = useQuery(GET_TODOS);

  if (loading) return <div style={{ display: "flex", flexDirection: "column", alignItems: "center"}}><CircularProgress /></div>

  if (error) return <div>Something went wrong...</div>
  return (
    <div>
     {data.todos.map(todo => {
       return <p key={todo.id}>{todo.text}<button>x</button></p>
     })}
    </div>
  );
}

export default App;
