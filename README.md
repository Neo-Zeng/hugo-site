# qingyuzeng.com

Source for [qingyuzeng.com](https://qingyuzeng.com), the academic homepage of Qingyu Zeng. The site presents research on efficient edge AI, hardware-assisted IoT security, and real-time intrusion detection.

The repository is public on GitHub and deployed automatically by Netlify from the `master` branch. Pull requests receive a Netlify deploy preview and run the same production build in GitHub Actions.

## Architecture

- **Generator:** Hugo Extended 0.84.4
- **Theme:** Wowchemy Academic v5.3.0, loaded as a Hugo module
- **Content:** Markdown and YAML front matter in `content/`
- **Site configuration:** `config/_default/`
- **Custom visual system:** `assets/scss/custom.scss`
- **Visitor map:** MapMyVisitors with a responsive, local public-domain fallback map
- **Hosting:** Netlify, with the custom domain `qingyuzeng.com`

The Hugo and Wowchemy versions are intentionally pinned together. Update them as a tested pair; upgrading only Hugo can break the theme's SCSS pipeline.

## Local preview

Install the Extended edition of Hugo 0.84.4, then run:

```bash
hugo server --disableFastRender
```

Open `http://localhost:1313`. To reproduce the deployment build:

```bash
bash scripts/check-content.sh
hugo --gc --minify
```

Generated output is written to `public/` and must not be committed.

The legacy Wowchemy/Netlify CMS route is intentionally disabled. Content changes go through Git branches and deploy previews, which keeps review and rollback history in one place and avoids loading obsolete CMS scripts on the public homepage.

The visitor map displays aggregated counts and approximate origins through MapMyVisitors. Its local fallback base map is the public-domain `BlankMap-World2.png` from Wikimedia Commons. If the third-party service is blocked or unavailable, the page keeps its layout and shows the local map without claiming live statistics. The MapMyVisitors widget ID belongs in the `visitor_map` shortcode call and must not be replaced with a demo site's ID.

## Updating the site

### Profile and homepage

- Profile, education, affiliations, and social links: `content/authors/admin/_index.md`
- Homepage sections and their order: `content/home/`
- Navigation: `config/_default/menus.yaml`
- SEO, contact, and appearance: `config/_default/params.yaml`

Homepage sections are ordered by their `weight`. Keep the first screen concise; place detailed records in publications and experience.

### Add a publication

1. Copy an existing folder in `content/publication/` and give it a short, stable slug.
2. Update `title`, `authors`, `date`, `publication_types`, `publication`, and `doi`.
3. Store DOI values as identifiers such as `10.1109/example`, not full `https://doi.org/` URLs.
4. Add `cite.bib` and a `featured.png` only when those assets are available.
5. If the work is a major milestone, add a short item to `content/home/updates.md`.

Run the content check before opening a pull request. Netlify's deploy preview is the review surface for desktop and mobile layout.

## Deployment and rollback

1. Create a short-lived branch and open a pull request.
2. Review the GitHub Actions build and Netlify deploy preview.
3. Merge to `master`; Netlify builds and publishes the production site.
4. If production regresses, use Netlify's previous successful deploy while preparing a normal revert commit.

Do not commit Netlify tokens, DNS credentials, or generated `public/` files. Domain and TLS settings remain managed in Netlify/DNS rather than this repository.

## Maintenance cadence

- **Per publication or role change:** update the relevant content and latest updates.
- **Monthly:** review broken external links and stale homepage claims.
- **Quarterly:** merge dependency update pull requests after checking the deploy preview.
- **Annually:** review biography, research themes, contact details, SEO description, and archived demo content.
- **Major upgrades:** migrate Hugo and Wowchemy in a dedicated branch, never together with content changes.

The repository includes weekly Dependabot checks and a CI build. `netlify.toml`, `go.mod`, and GitHub Actions should always agree on the supported Hugo/theme baseline.
