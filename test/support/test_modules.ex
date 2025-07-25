defmodule RawSingleBehaviour do
  @behaviour TestBehaviorA

  @impl TestBehaviorA
  def test_a, do: :ok

  @impl TestBehaviorA
  def function_a(arg), do: {:raw_single, arg}
end

defmodule RawMultipleBehaviour do
  @behaviour TestBehaviorA
  @behaviour TestBehaviorB

  @impl TestBehaviorA
  def test_a, do: :ok

  @impl TestBehaviorB
  def test_b, do: :ok

  @impl TestBehaviorA
  def function_a(arg), do: {:raw_a, arg}

  @impl TestBehaviorB
  def function_b(arg), do: {:raw_b, arg}
end

defmodule BehaveSingleModule do
  use WellBehaved

  @behave TestBehaviorA

  @impl TestBehaviorA
  def test_a, do: :ok

  @impl TestBehaviorA
  def function_a(arg), do: {:behave_single, arg}
end

defmodule BehaveMultipleModule do
  use WellBehaved

  @behave TestBehaviorA
  @behave TestBehaviorB

  @impl TestBehaviorA
  def test_a, do: :ok

  @impl TestBehaviorB
  def test_b, do: :ok

  @impl TestBehaviorA
  def function_a(arg), do: {:behave_a, arg}

  @impl TestBehaviorB
  def function_b(arg), do: {:behave_b, arg}
end

defmodule BehaveOptionalModule do
  use WellBehaved

  @behave OptionalCallbackBehavior

  @impl OptionalCallbackBehavior
  def required_callback, do: :ok
end

defmodule BehaveGenServerModule do
  use WellBehaved

  @behave GenServer

  @impl GenServer
  def init(state), do: {:ok, state}
  @impl GenServer
  def handle_call(:get, _from, state), do: {:reply, state, state}
  @impl GenServer
  def handle_cast(_msg, state), do: {:noreply, state}
  @impl GenServer
  def handle_info(_msg, state), do: {:noreply, state}
end
