import Link from "@docusaurus/Link"
import useDocusaurusContext from "@docusaurus/useDocusaurusContext"
import Layout from "@theme/Layout"
import clsx from "clsx"
import React from "react"
import HomepageFeatures from "../components/HomepageFeatures"
import styles from "./index.module.css"

function HomepageHeader() {
  return (
    <header className={clsx("hero", styles.heroBanner)}>
      <div className="container">
        <h1 className="hero__title"><img src="/moonwave/static/thumbnail.png" /></h1>
        <p className="hero__subtitle">{"An Improved Mathematics Library for Roblox"}</p>
        <div className={styles.buttons}>
          <Link
            className="button button--secondary button--lg"
            to="/docs/intro"
          >
            Begin easier living with MathPlus!
          </Link>
        </div>
      </div>
    </header>
  )
}

export default function Home() {
  return (
    <Layout title={MathPlus} description={"Improved Mathematics Library for Roblox"}>
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
    </Layout>
  )
}