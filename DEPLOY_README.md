- first build the current site with:
    yarn build

- if needed, install vercel CLI:
    yarn global add vercel
- if it fails
    sudo yarn global add vercel
- in the same folder as this file, in a terminal:
    vercel login
- "continue using github"
- confirm in browser window
- in the terminal:
    vercel

- Agree to all with enter:

Vercel CLI 41.1.0
? Set up and deploy “~/Development/max-eilbacher/repos/max-eilbacher”? yes
? Which scope should contain your project? [your vercel home name]
? Link to existing project? no
? What’s your project’s name? max-eilbacher
? In which directory is your code located? ./
Local settings detected in vercel.json:
Auto-detected Project Settings (Vite):
- Build Command: vite build
- Development Command: vite --port $PORT
- Install Command: `yarn install`, `pnpm install`, `npm install`, or `bun install`
- Output Directory: dist
? Want to modify these settings? no

- [Uploads and builds]

🔗  Linked to o-hs-projects-05067501/max-eilbacher (created .vercel and added it to .gitignore)
🔍  Inspect: https://vercel.com/o-hs-projects-05067501/max-eilbacher/3CP1kTrRvq2Ms9krDinuhmGkCox1 [35s]
✅  Production: https://max-eilbacher-4z5l6gxye-o-hs-projects-05067501.vercel.app [35s]
📝  Deployed to production. Run `vercel --prod` to overwrite later (https://vercel.link/2F).
💡  To change the domain or build command, go to https://vercel.com/o-hs-projects-05067501/max-eilbacher/settings

- To update later use
    vercel deploy
- There you get a preview page to check. If it's alright, then run:
    vercel --prod