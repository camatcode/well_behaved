defmodule WellBehaved do
  @moduledoc """
  A silly library that lets you use `@behave` instead of `@behaviour`.
  """
  defmacro __using__(_opts) do
    quote do
      import WellBehaved

      Module.register_attribute(__MODULE__, :behave, accumulate: true)
      @before_compile WellBehaved
    end
  end

  defmacro __before_compile__(env) do
    behaviors = Module.get_attribute(env.module, :behave) || []

    # Simply convert each @behave to @behaviour
    for behavior_module <- behaviors do
      quote do
        @behaviour unquote(behavior_module)
      end
    end
  end
end
