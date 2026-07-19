# Engineering Principles

These principles govern implementation and review. A change that violates one should be redesigned or explicitly justified in the PR.

1. **Solve a named job before adding a feature.** Every change serves a real user or operator need.
2. **Launch scope stays small.** Build the smallest coherent, useful slice; defer configurability and speculative workflows.
3. **Rails conventions beat custom architecture.** Prefer conventional models, RESTful controllers, views, helpers, jobs, mailers, validations, and Active Record associations/scopes/enums before introducing an abstraction.
4. **Keep domain logic close to the domain.** Models own domain state and rules; controllers coordinate requests; views and helpers own presentation; jobs own asynchronous work.
5. **No default service-object layer.** Use a PORO or concern only when ordinary Rails placement is materially worse and the object has a clear domain responsibility.
6. **Tests are documentation and design pressure.** Write a focused test first, watch it fail for the intended reason, implement the smallest change, then run the relevant suite.
7. **Use Minitest and fixtures deliberately.** Keep base fixtures small and realistic; create edge-case records in the test that needs them; avoid mocks and stubs unless an external dependency makes them necessary.
8. **PostgreSQL is the database everywhere.** Put simple integrity constraints in the database and complex business rules in Active Record. Use `strong_migrations` and generate migrations with `bin/rails generate migration`.
9. **Server-render first.** Use semantic HTML, Tailwind, Turbo, and Stimulus. Reach for richer client-side frameworks only when the conventional Rails approach cannot meet the need.
10. **Dependencies must earn their place.** Prefer Rails and the existing dependency set. Add a gem only for a clear, durable technical or business reason.
11. **Authentication and authorization are product quality.** Use Rails' built-in authentication foundation and Pundit policies for authorization decisions. Never hand-roll password or session cryptography.
12. **Credentials and secrets stay out of source control.** Use Rails credentials or environment variables; never commit keys, passwords, tokens, or private endpoints.
13. **One small meaningful outcome per PR.** Keep changes reviewable, testable, and independently shippable.
14. **Docs are part of done.** Update README, design notes, and operational instructions when behavior or workflow changes.
15. **Run the local quality gate before review.** `bin/ci` must pass before a change is considered ready.
