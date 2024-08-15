import { useState } from "react";

function App() {
  const [nodeMessage, setNodeMessage] = useState("No message yet...");

  const callNodeBackend = async () => {
    try {
      const response = await fetch("http://localhost:8081");
      const data = await response.json();
      const { message } = data;
      setNodeMessage(message);
    } catch (error) {
      console.warn(error);
      setNodeMessage("Node call failed");
    }
  };

  return (
    <div>
      <div>Hello world! (from react frontend)</div>
      <button onClick={callNodeBackend}> Call node-backend</button>
      <div>Node Message: {nodeMessage}</div>
    </div>
  );
}

export default App;
