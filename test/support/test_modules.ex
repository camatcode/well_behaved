defmodule RawSingleBehaviour do
  @behaviour TestBehaviorA

  def test_a, do: :ok
  def function_a(arg), do: {:raw_single, arg}
end

defmodule RawMultipleBehaviour do
  @behaviour TestBehaviorA
  @behaviour TestBehaviorB

  def test_a, do: :ok
  def test_b, do: :error
  def function_a(arg), do: {:raw_a, arg}
  def function_b(arg), do: {:raw_b, arg}
end

defmodule BehaveSingleModule do
  use WellBehaved

  @behave TestBehaviorA

  def test_a, do: :ok
  def function_a(arg), do: {:behave_single, arg}
end

defmodule BehaveMultipleModule do
  use WellBehaved

  @behave TestBehaviorA
  @behave TestBehaviorB

  def test_a, do: :ok
  def test_b, do: :error
  def function_a(arg), do: {:behave_a, arg}
  def function_b(arg), do: {:behave_b, arg}
end

defmodule BehaveOptionalModule do
  use WellBehaved

  @behave OptionalCallbackBehavior

  def required_callback, do: :ok
end

defmodule BehaveGenServerModule do
  use WellBehaved

  @behave GenServer

  def init(state), do: {:ok, state}
  def handle_call(:get, _from, state), do: {:reply, state, state}
  def handle_cast(_msg, state), do: {:noreply, state}
  def handle_info(_msg, state), do: {:noreply, state}
end
