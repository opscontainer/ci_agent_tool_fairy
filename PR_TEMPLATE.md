## Below is the pull request template

**Summary:** Provide a summary of the pull request here.

**Why:** Provide why you want this pull request to be merge to `master` branch.

**What changed**
Provide a list of changes you made.

- **Role & tasks:** short description here.
- **Molecule tests:** short description here.

**Notable commits (top of branch)**
if possible, please provide a list notable commits here as reference.

- `xxxxx` - your commit message here
- `xxxxx` - your commit message here

**Testing / Verification**
Provide details on how you tested it here.

**Notes / Potential breaking changes**
If there's any potential breaking changes or notable changes, include list of details here.

- short details here
- short details here


### Complete example

Below is the complete example of my very first Pull Request. I put it as code here to make it easy to copy/paste.

```markdown
**Summary:** Adds an Ansible role and related CI/linting/test infrastructure
to install and register a self-hosted GitHub Actions runner on Linux,
plus documentation and quality checks (ansible-lint, pre-commit, gitleaks).

**Why:** Provide a reusable, tested role for self-hosted runners and enforce
CI/linting to keep the role high quality.

**What changed**
- **Role & tasks:** Added role tasks to register runners and required handlers (see `tasks/`).
- **Molecule tests:** Added scenarios for `molecule/almalinux-9`, `molecule/debian-trixie`, `molecule/ubuntu-noble`.
- **CI/workflows:** Added PR validation workflow at `.github/workflows/pr-validation.yml`.
- **Linting & pre-commit:** Added ansible-lint fixes and pre-commit config; removed some `change_when` directives to satisfy rules.
- **Secrets checking:** Added gitleaks integration and `scripts/parseleaks.py` to parse reports.
- **Docs & Makefile:** README updates and Makefile targets to run lint/test flows; `Pipfile` updates to separate dev deps.

**Notable commits (top of branch)**
- `9de8781` - update!: meta informations
- `939b781` - update!: ansible-lint version
     - Removed change_when tasks directives
     - rename facts
     - add details on each task
     - fix ansible-lint 'Commands should not change things if nothing needs doing.'
- `4273629` - feat!: fix ansible-lint findings
     - added gitleaks checking
     - update makefile to include all test
     - added github workflow for PR validation and checking on each changes
     - added pre-commit validation
     - added python script to parse out gitleaks reports
     - update pipenv to seperate development dependencies and main dependencies
- `2192249` — feat!: added molecule test scenarios with vagrant support
- `96f8ccb` — feat!: added required ansible role tasks to register github actions runner on the linux machines

**Testing / Verification**
- Install deps: `pipenv install --dev`
- Run linters: `make lint` or `pipenv run ansible-lint .`
- Run molecule: `make test` or `pipenv run molecule test -s ubuntu-noble`
- Run full repo secret scan (gitleaks): see earlier gitleaks examples provided.

**Notes / Potential breaking changes**
- Some `change_when` directives were removed to satisfy ansible-lint; reviewers should verify idempotency of affected tasks.
- ansible-lint version bump may require updating local dev environment (`pipenv install`).
```
