defmodule TestBehaviorA do
  @callback test_a() :: :ok
  @callback function_a(term()) :: term()
end

defmodule TestBehaviorB do
  @callback test_b() :: :error
  @callback function_b(term()) :: term()
end

defmodule OptionalCallbackBehavior do
  @callback required_callback() :: :ok
  @callback optional_callback() :: :optional
  @optional_callbacks [optional_callback: 0]
end
