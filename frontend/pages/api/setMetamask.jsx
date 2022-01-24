import { useState } from 'react';
import { useEffect } from 'react';

export const setMatamask = () => {

    const [web3, setWeb3] = useState(null)
    const [address, setAddress] = useState(null)

    useEffect(() => {
    window.ethereum ?
        ethereum.request({ method: "eth_requestAccounts" }).then((accounts) => {
        setAddress(accounts[0])
        let w3 = new Web3(ethereum)
        setWeb3(w3)
        }).catch((err) => console.log(err))
    : console.log("Please install MetaMask")
    }, [])

    return (
      <>
      </>
    )
  }
  