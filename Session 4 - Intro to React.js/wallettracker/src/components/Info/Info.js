import React from "react";
import Transaction from "../Transaction/Transaction";
import "./info.css";

const Info = ({ wallet, data, transactions }) => {
  return (
    <div className="info">
      <div className="info-piece">
        <p>
          Address:{" "}
          {data !== null && (
            <a href={`https://www.etherscan.io/address/${wallet}`}>{wallet}</a>
          )}
        </p>
      </div>
      <div className="info-piece">
        <p>Balance: {data !== null && data.result * 10e-18 + " ETH"} </p>
      </div>
      <h3>Transactions</h3>
      {/* TODO: render transction */}
      {transactions?.status == "0"
        ? "No transactions associated with this account"
        : transactions?.result.map((transaction) => (
            <Transaction data={transaction} />
          ))}
    </div>
  );
};

export default Info;
