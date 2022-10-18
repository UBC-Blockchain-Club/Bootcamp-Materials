import "./App.css";
import CreateTodo from "./components/CreateTodo/CreateTodo";
import { useState } from "react";
import Todolist from "./components/TodoList/Todolist";

function App() {
  const [todos, setTodos] = useState([]);

  return (
    <div className="App">
      {/* body */}
      <div className="body">
        {/* create todo section */}
        <CreateTodo todos={todos} setTodos={setTodos} />
        {/* todolist */}
        <Todolist todos={todos} setTodos={setTodos} />
      </div>
    </div>
  );
}

export default App;
