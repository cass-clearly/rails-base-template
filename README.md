# Rails Base Template

A clean, conventional Rails starting point for small-to-medium applications.

## Included stack

- Ruby **4.0.6** and Rails **8.1.3**
- PostgreSQL in development, test, and production
- Tailwind CSS 4, Turbo, Stimulus, and import maps
- Rails built-in authentication with `User` and `Session` models
- Pundit authorization foundation
- Solid Queue, Solid Cache, and Solid Cable
- Minitest and fixtures
- RuboCop, SyntaxTree, strong_migrations, Brakeman, and bundler-audit

Read [PRINCIPLES.md](PRINCIPLES.md) for the engineering rules and [AGENTS.md](AGENTS.md) for the required agent/developer workflow.

## Prerequisites

- Ruby 4.0.6 (rbenv recommended)
- PostgreSQL 16+ running locally
- Node is not required for the default import-map/Tailwind workflow.

## Setup

```sh
bin/setup
bin/dev
```

Visit `http://localhost:3000`. The root page is intentionally protected: create a user through the Rails console before signing in.

```sh
bin/rails console
User.create!(email_address: "you@example.com", password: "change-this-password", password_confirmation: "change-this-password")
```

## Local quality gate

Run the whole suite before review or merge:

```sh
bin/ci
```

This prepares the database, runs RuboCop and security checks, runs the test suite, and verifies seeds.

## Starting an app from this template

Use GitHub's **Use this template** button, rename the app/database references, then run `bin/setup`. Build the first small, coherent product slice rather than adding generic platform infrastructure.

## License

MIT. See [LICENSE](LICENSE).
