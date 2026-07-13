# Contributing to github_runner_setup

Thank you for helping improve this Ansible role. <details here>, and contributions that improve reliability, platform support, documentation, or testing are very welcome.

## What you can contribute

- bug reports and issue triage
- fixes for Ubuntu, Debian, AlmaLinux, or general Linux idempotency
- improvements to role variables, defaults, or documentation
- better Molecule scenarios and tests
- README / role metadata updates

## Get started

1. Fork the repository.
2. Create a branch with a descriptive name, for example `feature/<info-about-the-feature>`, `bugfix/<info-about-the-bug-being-fix>`, `bugfix/<isssue-number>`.
3. Make your changes in the fork.
4. Run tests locally.
5. Open a pull request against `master`.

## Local setup and testing

This project uses `Pipfile` for Python dependencies and Molecule for role testing.

### Install dependencies

```bash
python -m pip install pipenv
pipenv install --dev
```

### Run lint and formatting checks

```bash
pipenv run ansible-lint .
```

### Run Molecule

Test the available scenarios with Molecule:

```bash


```

If you only want to converge or destroy a scenario:

```bash
pipenv run molecule converge -s <scenario-name>
pipenv run molecule destroy -s <scenario-name>
```

## Contribution guidelines

- Keep changes focused and limited to one purpose per PR.
- Update `README.md`, `defaults/main.yml`, or `vars/main.yml` when your change affects user-facing behavior or configuration.
- Add or update Molecule scenarios if you change role behavior or support new platforms.
- Prefer clear Ansible variable names, task names, and role naming consistent with the current role.
- Document new features and variables in the repository README or role metadata.

## Filing issues

When opening an issue, please include:

- Ansible version used
- Linux distribution and version
- GitHub runner version, if relevant
- The command you ran
- The error message or unexpected output

Example issue report:

```text
Ansible version: 13.6.0
Distro: Ubuntu 24.04
Command: pipenv run molecule test -s ubuntu-noble
Failure: runner registration failed with HTTP 403
```

## Pull requests

- Base your PR on the latest `master` branch.
- Follow the Pull Request template [here](PR_TEMPLATE.md).
- Describe what changed, why it changed, and what testing was performed.
- Link related issues when possible.
- Keep each PR small and reviewable.

## Role-specific notes

This role currently supports:

- AlmaLinux
- Ubuntu
- Debian

It is built for Ansible 2.20+ and configures a GitHub Actions runner with variables such as `gh_runner_version`, `runner_directory`, `gh_api_token`, `repo_name`, and `runner_labels`.

## License and code of conduct

This repository is licensed under GPL-3.0. Please follow respectful and constructive behavior in all contributions.
