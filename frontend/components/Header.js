import Link from 'next/link';

 function Header() {
     return <header>
             <menu>
             <h1>バースデーカードNFT</h1>
                 Menu：
                 <Link href="/"><a>トップ</a></Link>｜
                 <Link href="/posts/mint_nft"><a>発行する</a></Link>
             </menu>
       </header>;
   }

   export default Header;