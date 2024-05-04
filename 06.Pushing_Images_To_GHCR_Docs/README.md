1. Images can ben pushed to Github Container Registry (**GHCR**) as Github Packages.

2. We can use **PAT** (Personal Access Tokens) to push the images from our local machine.

3. We can use **GITHUB_TOKEN** to push the images as part of GitHub Actions Workflow.

4. References

   - [Working with the Container registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)

   - [PAT Classic reference](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#personal-access-tokens-classic)

   - [PAT Classic](https://github.com/settings/tokens/new?scopes=write:packages)

   - [Authenticating with a PAT Classic](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-with-a-personal-access-token-classic)

5. Steps to Build and Push the Images to GHCR from PowerShell.

   1. Generate the PAT Classic Token from Github scoped to write:packages ( Refer the link **Authenticating with a PAT Classic** )

   2. $env:CR_PAT = "YOUR PAT"

      - creates and sets a new environment variable CR_PAT in the powershell

   3. echo $env:CR_PAT | docker login ghcr.io -u Anand-1912 --password-stdin

      - Login to GitHub Container Registry using PAT

   4. docker build -t ghcr.io/anand-1912/goals-app:1 .

   5. docker push ghcr.io/anand-1912/goals-app:1 (name should be in lower case)

   6. docker run -d -p 3000:80 --name goalsapp ghcr.io/anand-1912/goals-app:1

   7. docker pull ghcr.io/anand-1912/goals-app:1 (pulls the image from GHCR)
