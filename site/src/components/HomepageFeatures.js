import clsx from "clsx"
import React from "react"
import styles from "..components/HomepageFeatures.module.css"

const FeatureList = [
  {
    title: "Easy",
    description: (
      <>
        Just require mathplus and start using it! No before-hand setup required!
      </>
    ),
  },
  {
    title: "Expandable",
    description: (
      <>
            Instantly expand the library! Just create a command named with what you want it to be called
            (Case Sensitive!) and the .lua ending and get to making it! 
      </>
    ),
  },
]

function Feature({ Svg, title, description }) {
  return (
    <div className={clsx("col col--4")}>
      <div className="text--center">
        {Svg && <Svg className={styles.featureSvg} alt={title} />}
      </div>
      <div className=" padding-horiz--md">
        <h3 className="text--center">{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  )
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  )
}