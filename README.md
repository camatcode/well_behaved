<p align="center">
  <picture>
    <img alt="wb logo" src="https://raw.githubusercontent.com/camatcode/well_behaved/refs/heads/main/assets/well-behaved-banner.png">
  </picture>
</p>

<p align="center">
  <a href="https://hex.pm/packages/well_behaved">
    <img alt="Hex Version" src="https://img.shields.io/hexpm/v/well_behaved.svg">
  </a>

  <a href="https://hexdocs.pm/well_behaved">
    <img alt="Hex Docs" src="http://img.shields.io/badge/hex.pm-docs-green.svg?style=flat">
  </a
  -->

  <a href="https://opensource.org/licenses/Apache-2.0">
    <img alt="Apache 2 License" src="https://img.shields.io/hexpm/l/oban">
  </a>

  <a href="https://github.com/camatcode/well_behaved/actions?query=branch%3Amain++">
    <img alt="ci status" src="https://github.com/camatcode/well_behaved/workflows/ci/badge.svg">
  </a>
  <a href='https://coveralls.io/github/camatcode/well_behaved?branch=main'>
    <img src='https://coveralls.io/repos/github/well_behaved/basenji/badge.svg?branch=main' alt='Coverage Status' />
  </a>

<a href="https://mastodon.social/@scrum_log" target="_blank" rel="noopener noreferrer">
    <img alt="Mastodon Follow" src="https://img.shields.io/badge/mastodon-%40scrum__log%40mastodon.social-purple?color=6364ff">
  </a>
</p>

<p align="center">
  A silly library that lets you use <code>@behave</code> instead of <code>@behaviour</code> (with a <code>use</code> trade-off).
</p>



## Installation

```elixir
def deps do
  [
    {:well_behaved, "~> 1.0"}
  ]
end
```

## Example

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


## Why?

1. [Elixir Behaviours](https://hexdocs.pm/elixir/1.4.5/behaviours.html) are super cool
2. It uses the UK spelling
3. Of all the UK spellings my brain accepts, *behaviour* is not one of them.
    - Every time I sound out *be-hav-i-our* ... phonetically.
    - [It's not even french](https://en.wiktionary.org/wiki/behavior#Etymology)



