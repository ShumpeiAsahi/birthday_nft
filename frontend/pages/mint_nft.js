import Link from 'next/link'
import Head from 'next/head'
import { Navbar } from '../components/Navbar';
import { Footer } from '../components/Footer';
import { useState } from 'react';
import { useEffect } from 'react';

export default function Mint() {
  
  const [wallet,setWalletAddress] = useState(null)
  
  const connectWallet = async () => {
    // Check if MetaMask is installed on user's browser
    if(window.ethereum) {
      const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' });
      const chainId = await window.ethereum.request({ method: 'eth_chainId'});
      // Check if user is connected to Ropsten
      if(chainId != '0x3') {
        alert("Please connect to Ropsten");
      } else {
        let wallet = accounts[0];
        setWalletAddress(wallet);
      }
    } else {
      // Show alert if Ethereum provider is not detected
      alert("Please install Mask");
    }
  }

  return (
    <>
    <div>
      <Head>
        <title>バースデーカードNFT発行システム</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Navbar />
      <main className='flex justify-center p-3'>
        <button className="bg-transparent hover:bg-orange-600 text-orange-500 font-semibold hover:text-white py-2 px-4 border border-orange-500 hover:border-transparent rounded" onClick={connectWallet}>
          NFTを発行する
        </button>
      </main>
      <Footer />
    </div>
    </>
  )
}