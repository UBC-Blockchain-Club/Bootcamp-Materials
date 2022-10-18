import React from "react";
import "./todo.css";

const Todo = ({ text, deleteTodo }) => {
  return (
    <div className="todo">
      <p>{text}</p>
      <img
        src="./delete.png"
        alt="delete"
        className="delete"
        onClick={() => deleteTodo(text)}
      />
    </div>
  );
};

export default Todo;
