require 'test_helper'

class ParkingTicketsControllerTest < ActionController::TestCase
  setup do
    @parking_ticket = parking_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_ticket" do
    assert_difference('ParkingTicket.count') do
      post :create, parking_ticket: { description: @parking_ticket.description, fee: @parking_ticket.fee, reporter: @parking_ticket.reporter, student_id: @parking_ticket.student_id }
    end

    assert_redirected_to parking_ticket_path(assigns(:parking_ticket))
  end

  test "should show parking_ticket" do
    get :show, id: @parking_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_ticket
    assert_response :success
  end

  test "should update parking_ticket" do
    patch :update, id: @parking_ticket, parking_ticket: { description: @parking_ticket.description, fee: @parking_ticket.fee, reporter: @parking_ticket.reporter, student_id: @parking_ticket.student_id }
    assert_redirected_to parking_ticket_path(assigns(:parking_ticket))
  end

  test "should destroy parking_ticket" do
    assert_difference('ParkingTicket.count', -1) do
      delete :destroy, id: @parking_ticket
    end

    assert_redirected_to parking_tickets_path
  end
end
