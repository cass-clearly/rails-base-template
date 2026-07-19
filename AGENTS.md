# Rails Base Template — Agent Instructions

Read `PRINCIPLES.md` before meaningful work. It is the source of truth for implementation and review.

## Required workflow

1. Define the smallest user-visible or operator-visible outcome.
2. Inspect existing Rails patterns before adding code.
3. For behavior changes, use TDD: write a focused test, run it and observe the intended failure, make the smallest implementation change, then rerun it.
4. Use `bin/rails generate migration Name` for every migration; do not hand-create migration files.
5. Keep controllers coordinating, models owning domain rules, views/helpers rendering, and jobs handling asynchronous work.
6. Prefer Rails primitives, semantic HTML, Tailwind, Turbo, and Stimulus before dependencies or custom layers.
7. Use Pundit policies for authorization decisions. Do not write custom authorization conditionals scattered across controllers and views.
8. Run `bin/ci` before calling a change complete.

## Local commands

```sh
bin/setup                 # install dependencies and prepare local PostgreSQL databases
bin/dev                   # run Rails and Tailwind development processes
bin/rails test            # run tests
bin/rubocop               # run Ruby linting
bin/ci                    # complete local quality gate
```

## Guardrails

- Do not add service objects, presenters, form objects, custom application directories, or a frontend framework without documenting why Rails conventions are insufficient.
- Do not commit secrets, credentials, or database dumps.
- Keep fixtures minimal; build edge-case records in the test that requires them.
- Keep every change small enough for a focused review.
