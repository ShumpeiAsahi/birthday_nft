import Link from 'next/link'
import styles from '../../styles/Home.module.css'

export default function FirstPost() {
  return (
    <>
    <main className={styles.main}>
      <h1>First Post</h1>
      <h2>
        <Link href="/">
          <a>Back to home</a>
        </Link>
      </h2>
    </main>
    </>
  )
}