A silly library that lets you use `@behave` instead of `@behaviour` (with the trade-off of having to `use WellBehaved`).

You can use:

```elixir
defmodule MyModule do
  use WellBehaved

  @behave TestBehaviorA

  def test_a, do: :ok
  def function_a(arg), do: {:hello, arg}
end
```

Instead of: 

```elixir
defmodule MyModule do
  @behaviour TestBehaviorA

  def test_a, do: :ok
  def function_a(arg), do: {:hello, arg}
end
```


## Installation

```elixir
def deps do
  [
    {:well_behaved, "~> 0.1.0"}
  ]
end
```


## Why?

Just needed to code something after being frustrated by my American mind having to sound out `be-hav'-i-our`.



