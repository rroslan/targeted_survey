# TargetedSurvey

## Authentication Updates

- Removed password-based login completely
- Email magic link is now the only login method
- Added admin role support via `is_admin` field
- Successful CI/CD deployment verified

All authentication now works exclusively through email verification links sent to registered addresses.

CI/CD deployment testing via GitHub Actions

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
