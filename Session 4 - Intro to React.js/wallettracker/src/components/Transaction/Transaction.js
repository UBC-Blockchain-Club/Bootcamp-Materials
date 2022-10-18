import React from "react";
import "./transaction.css";

const Transaction = ({ data }) => {
  return (
    <div className="transaction">
      <p>
        <b>Block Hash: </b> {data.blockHash}
      </p>
      <p>
        <b>Block Number: </b> {data.blockNumber}
      </p>
      <p>
        <b>Hash: </b> {data.hash}
      </p>
      <p>
        <b>From: </b>{" "}
        <a href={`https://www.etherscan.io/address/${data.from}`}>
          {data.from}
        </a>
      </p>
      <p>
        <b>To: </b>{" "}
        <a href={`https://www.etherscan.io/address/${data.to}`}>{data.to}</a>
      </p>
      <p>
        <b>Value: </b> {data.value * 10e-18} ETH
      </p>
      <p>
        <b>Gas: </b> {data.gas}
      </p>
    </div>
  );
};

export default Transaction;
