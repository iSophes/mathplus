const lightCodeTheme = require("prism-react-renderer/themes/github")
const darkCodeTheme = require("prism-react-renderer/themes/dracula")

// With JSDoc @type annotations, IDEs can provide config autocompletion
/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: "MathPlus",
  tagline: "Advanced Math Library for Roblox",
  url: "https://iSophes.github.io",
  baseUrl: "/mathplus/",
  onBrokenLinks: "throw",
  onBrokenMarkdownLinks: "warn",
  favicon: "./static/img/favicon.png",
  organizationName: "iSophes", // Usually your GitHub org/user name.
  projectName: "MathPlus", // Usually your repo name.

  presets: [
    [
      "@docusaurus/preset-classic",
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          // Please change this to your repo.
          editUrl: "https://github.com/iSophes/mathplus/edit/dev/site/",
          showLastUpdateAuthor: true,
          showLastUpdateTime: true,
          sidebarCollapsible: true,
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        logo: {
          alt: "MathPlus",
          src: "./static/img/thumbnail.svg",
        },
        items: [
          // { to: "/blog", label: "Blog", position: "left" },
          {
            href: "https://dsc.gg/weirdo-world",
            label: "Discord",
            position: "right",
          },
          {
            href: "https://github.com/iSophes/mathplus",
            label: "GitHub",
            position: "right",
          },
        ],
      },
      footer: {
        style: "dark",
        links: [
          {
            title: "Community",
            items: [
              {
                label: "Discord",
                href: "https://dsc.gg/weirdo-world",
              },
            ],
          },
          {
            title: "More",
            items: [
              {
                label: "GitHub",
                href: "https://github.com/iSophes/mathplus",
              },
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} Sophie B.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
        additionalLanguages: ["lua", "toml"],
      },
    }),
}