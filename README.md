
# Push-All-Git-From-Local

A simple Windows CMD script to loop through all subdirectories in a folder, detect Git repositories, and push changes to their current branches.

## Features
- Automatically detects Git repositories within subdirectories.
- Adds all changes, commits them, and pushes to the current branch.
- Skips non-Git directories.

## How to Use
1. Clone or download this repository to your local machine.
2. Place the script (`push_all_git.cmd`) in your desired main folder or update the `MAIN_FOLDER` variable in the script.
3. Open a Command Prompt and run the script:
   ```cmd
   push_all_git.cmd
   ```
4. The script will process each subdirectory, committing and pushing changes for Git repositories.

## Example Output
```
Processing folder: repo1
[main (root-commit) 1234567] justCommit
To github.com:user/repo1.git
 * [new branch]      main -> main
Processing folder: repo2
Branch 'master' set up to track remote branch 'master' from 'origin'.
Done!
```

## Notes
- Ensure you have Git installed and added to your PATH.
- The script uses the commit message `justCommit` by default. Modify it as needed.
- Any errors during the push (e.g., conflicts) will need to be resolved manually.

## Author
Created by **wisitlongsida1999**.
