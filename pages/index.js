import Link from "@docusaurus/Link";
import useDocusaurusContext from "@docusaurus/useDocusaurusContext";
import Layout from "@theme/Layout";
import clsx from "clsx";
import React from "react";
import "./home.css";
import styles from "./index.module.css";

const FEATURES = [
  {
    image: "https://i.ibb.co/6b4Nf44/image-2023-02-03-173956167.png",
    title: "Really, Really, Really Easy",
    description: (
      <>
        This library is incredibly easy to use. Search for what you want and it will be there!
        <br />
        Not Documented? DM me! My DMs are open and I'm gladly taking suggestions!
        <br />
        <br />

        There's a "Discord" button above! Press that to be taken straight to my discord!
        <br />
        I'm online everyday, so don't be shy and DM me suggestions!
      </>
    ),
  },
  {
    image: "https://i.ibb.co/5Bgb0f2/image.png",
    title: "Expandable",
    description: (
      <>
        You can expand this to however you want!
        Just go to Docs → Expand and it'll tell you how to expand the library to however you want!
        
        <br />
        <br />
        Just go to the "Commands" folder and create a new lua file / module script!
        The name of it is the function name and you can write it however you want!        
      </>
    ),
  },
  {
    image: "https://i.ibb.co/dkrQQ4F/image-2023-02-03-174626886.png",
    title: "Updated",
    description: (
      <>
        I'm aiming to keep this library as up to date as I can.
        <br />
        I might make a discord purely for this module depending on it's size.
        <br />
        Updates are always published in Changelogs, come back and see if there are any new updates!
        <br />
        <br />

        Like said above, if you want to see something added then DM me or open a PR on Github with what you would like to add!
      </>
    ),
  },
];

function Feature({ image, title, description }) {
  return (
    <div className={styles.feature}>
      {image && <img className={styles.featureSvg} alt={title} src={image} />}
      <div>
        <h3>{title}</h3>
        <p >{description}</p>
      </div>
    </div>
  );
}

export function HomepageFeatures() {
  if (!FEATURES) return null;

  return (
    <section>
      <div className="container">
        <div className={styles.features}>
          {FEATURES.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}

function HomepageHeader() {
  const { siteConfig } = useDocusaurusContext();
  return (
    <header className={clsx("hero", styles.heroBanner)}>
      <div className="container">
        <h1 className="hero__title">
          <img
            src= "https://svgshare.com/i/q0u.svg"
            className="bigLogo"
            alt="MathPlus" 
          />
        </h1>
        <p className="hero__subtitle">{siteConfig.tagline}</p>
        <div className={styles.buttons}>
          <Link
            className="button button--secondary button--lg"
            to="/docs/intro"
          >
            Get Started →
          </Link>
        </div>
      </div>
    </header>
  );
}

export default function Home() {
  const { siteConfig, tagline } = useDocusaurusContext();
  return (
    <Layout title={siteConfig.title} description={tagline}>
      <HomepageHeader />
      <main>
        <p className={styles.tagline}>
          MathPlus is a Roblox Library designed to make Math the least of
          developers worries. All of it is documented here and has many
          good features included!
        </p>
        <HomepageFeatures />
      </main>
    </Layout>
  );
}