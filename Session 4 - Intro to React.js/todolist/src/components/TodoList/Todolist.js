import React from "react";
import Todo from "../Todo/Todo";
import "./todolist.css";

const Todolist = ({ todos, setTodos }) => {
  function deleteTodo(text) {
    setTodos(todos.filter((item) => item !== text));
  }

  return (
    <div className="todoList">
      {todos.map((todo) => (
        <Todo text={todo} deleteTodo={deleteTodo} />
      ))}
    </div>
  );
};

export default Todolist;
