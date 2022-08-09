require "test_helper"

class TimeSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_slot = time_slots(:one)
  end

  test "should get index" do
    get time_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_time_slot_url
    assert_response :success
  end

  test "should create time_slot" do
    assert_difference("TimeSlot.count") do
      post time_slots_url, params: { time_slot: { end_at: @time_slot.end_at, start_at: @time_slot.start_at } }
    end

    assert_redirected_to time_slot_url(TimeSlot.last)
  end

  test "should show time_slot" do
    get time_slot_url(@time_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_slot_url(@time_slot)
    assert_response :success
  end

  test "should update time_slot" do
    patch time_slot_url(@time_slot), params: { time_slot: { end_at: @time_slot.end_at, start_at: @time_slot.start_at } }
    assert_redirected_to time_slot_url(@time_slot)
  end

  test "should destroy time_slot" do
    assert_difference("TimeSlot.count", -1) do
      delete time_slot_url(@time_slot)
    end

    assert_redirected_to time_slots_url
  end
end
