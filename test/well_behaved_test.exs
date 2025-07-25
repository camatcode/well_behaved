defmodule WellBehavedTest do
  use ExUnit.Case, async: true

  describe "basic transformation" do
    test "single @behave produces same result as @behaviour" do
      raw_behaviors = RawSingleBehaviour.__info__(:attributes)[:behaviour] || []
      behave_behaviors = BehaveSingleModule.__info__(:attributes)[:behaviour] || []

      assert raw_behaviors == behave_behaviors
      assert TestBehaviorA in behave_behaviors
    end
  end

  describe "functionality" do
    test "behave modules work correctly" do
      assert BehaveSingleModule.test_a() == :ok
      assert BehaveSingleModule.function_a(:test) == {:behave_single, :test}
    end

    test "optional callbacks work" do
      assert BehaveOptionalModule.required_callback() == :ok

      behaviors = BehaveOptionalModule.__info__(:attributes)[:behaviour] || []
      assert OptionalCallbackBehavior in behaviors
    end

    test "works with built-in behaviors" do
      {:ok, pid} = GenServer.start_link(BehaveGenServerModule, :initial)
      assert GenServer.call(pid, :get) == :initial
      GenServer.stop(pid)
    end
  end
end
