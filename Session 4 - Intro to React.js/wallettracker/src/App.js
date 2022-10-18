import "./App.css";
import { useState } from "react";
import Info from "./components/Info/Info";

function App() {
  const [wallet, setWallet] = useState("");
  const [data, setData] = useState(null);
  const [transactions, setTransactions] = useState(null);

  function updateWallet(e) {
    setWallet(e.target.value);
  }

  function getWalletData(wallet) {
    fetch(
      `https://api.etherscan.io/api?module=account&action=balance&address=${wallet}&tag=latest&apikey=${process.env.REACT_APP_API_KEY}`
    )
      .then((res) => res.json())
      .then((data) => {
        if (data.status == "0") {
          alert(data.result);
        } else {
          setData(data);
        }
      });

    fetch(
      `https://api.etherscan.io/api?module=account&action=txlist&address=${wallet}&startblock=0&endblock=99999999&page=1&offset=10&sort=asc&apikey=${process.env.REACT_APP_API_KEY}`
    )
      .then((res) => res.json())
      .then((transactions) => {
        setTransactions(transactions);
        console.log(transactions);
      });
  }

  return (
    <div className="App">
      <h1>Ethereum Wallet Tracker</h1>
      <div className="form">
        <input
          type="text"
          placeholder="0x0"
          className="input"
          onChange={updateWallet}
        />
        <button onClick={() => getWalletData(wallet)} className="submit">
          Submit
        </button>
      </div>
      {/* Info section */}
      <Info wallet={wallet} data={data} transactions={transactions} />
    </div>
  );
}

export default App;
