# Contributing Guide
Thank you for taking the time to contribute to this project!
All forms of contributions are welcome, including bug reports, feature requests, code pull requests, documentation improvements and typo fixes.
Please read through this guide before making contributions to keep collaboration efficient and consistent.

## Table of Contents
1. Code of Conduct
2. Submitting Issues
3. Setting Up Development Environment
4. Branch Rules
5. Commit Message Standards
6. Pull Request Workflow
7. Code Style Requirements
8. Documentation Contributions
9. License Notice

## 1. Code of Conduct
- Be polite and respectful to all community members; no harassment, insults or discriminatory remarks.
- Discuss bugs and feature proposals rationally without emotional arguments.
- Do not submit spam, advertising, infringing, illegal or malicious content.
- Anyone violating these rules will have their issues and PRs closed.

## 2. Submitting Issues
### Bug Reports
Please include the following details:
1. Project version and runtime environment (OS, dependency versions)
2. Step-by-step reproduction procedures
3. Expected behavior vs actual abnormal behavior
4. Complete error logs and screenshots if available
5. Minimal reproducible code snippet

### Feature Requests
1. Usage scenario where this feature is needed
2. Pain points of current implementation
3. Desired expected behavior
4. Optional: brief implementation idea

### Issue Labels
Tag your issue with proper labels: `bug` / `feature` / `docs` / `question` / `enhancement`

## 3. Setting Up Development Environment
1. Fork this repository to your own GitHub account
2. Clone your forked repo locally
```bash
git clone https://github.com/your-name/win-scripts.git
cd win-scripts
# Link to original upstream repository
git remote add upstream https://github.com/FishgameStudio/win-scripts.git
```
3. Install project dependencies following instructions in README.md

## 4. Branch Rules
- `main`: stable production branch, never commit directly
- Feature development: create branch from `main` with prefix `feature/xxx`
- Bug fixes: create branch from `main` with prefix `fix/xxx`
- Documentation updates: create branch with prefix `docs/xxx`
- Hotfix for production: `hotfix/xxx`

Example:
`feature/amazing-scripts`
`fix/crash-on-call`
`docs/update-param-docs`

## 5. Commit Message Standards
Follow Conventional Commits format:
```
<type_emoji>(<scope>): <short summary>

[optional body]

[optional footer]
```
### Common Types
|**Type**|**Emoji Shortcut**|**Description**|
|---|---|---|
|feat | `:sparkles:` | new feature |
|fix | `:bug:` | bug repair |
|docs | `:books:` | documentation changes |
|style | `:art:` | formatting, no code logic change |
|refactor | `:recycle:` | code restructuring without feature/fix |
|test | `:test_tube:` | add or modify test cases |
|chore | `:fire:` | build, tooling, dependency updates |

Example commit:
`:bug: (parser): resolve string parse crash with special characters`

## 6. Pull Request Workflow
1. Sync your local main branch with upstream before creating PR
```bash
git fetch upstream
git checkout main
git merge upstream/main
```
2. Push your feature/fix branch to your forked repo
3. Open PR targeting the original repository's `main` branch
4. Fill in PR template clearly: purpose, changes, test results
5. Wait for CI checks to pass; fix errors if failed
6. Respond to maintainer review comments and push new commits
7. PR will be merged after review approval

## 7. Code Style Requirements
- Follow the linter/format config defined in the repository
- Run lint and format scripts before submitting PR
- Write clear variable/function names, avoid ambiguous abbreviations
- Add comments for complex logic blocks
- Keep functions small and single responsibility

## 8. Documentation Contributions
- Fix typos, grammar errors and outdated descriptions
- Add missing usage examples, API explanations
- Keep language concise and easy to understand
- Modify markdown files under `/docs` or root README directly

## 9. License Notice
All code, documents and assets you submit to this repository are licensed under the project LICENSE file in root directory.
By submitting a PR, you agree your contributions comply with this open-source license.
