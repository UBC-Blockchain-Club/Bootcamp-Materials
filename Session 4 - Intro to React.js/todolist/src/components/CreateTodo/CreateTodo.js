import React from "react";
import "./createTodo.css";
import { useState } from "react";

const CreateTodo = ({ todos, setTodos }) => {
  const [todo, setTodo] = useState("");

  function addTodo() {
    if (todos.includes(todo)) {
      alert("Item already in list!");
    } else {
      setTodos([...todos, todo]);
    }
  }

  function updateTodo(e) {
    setTodo(e.target.value);
  }

  return (
    <div className="createMenu">
      <h1>Create your Todo</h1>
      <div className="form">
        <input
          type="text"
          className="input"
          placeholder="Todo Name"
          onChange={updateTodo}
        />
        <button className="add" onClick={() => addTodo()}>
          Add Todo
        </button>
      </div>
    </div>
  );
};

export default CreateTodo;
