# GitBranchTemplate
git branch template for mass of feature or issue requests

## Features
1. Unified comments
2. Unified branch's create and delete
3. Unified github's issue, branch and comment
4. Issue and PR tempates

## Usage
1. Copy .github folder to your project

```bash
cp -rvf /path/to/GitBranchTemplate /path/to/YourProject
```

2. Init

```bash
cd .github

# edit init.sh, change project name and github user
vim init.sh

./init.sh
```

3. Branch Manage Rules

    1. Create issue first
    2. Create branch using `git <fb|hb> <issue_number> <branch_name>`
    3. keep every develop branch related to a issue
