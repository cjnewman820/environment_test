require 'rails_helper'

RSpec.describe "ids/new", type: :view do
  before(:each) do
    assign(:id, Id.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new id form" do
    render

    assert_select "form[action=?][method=?]", ids_path, "post" do

      assert_select "input[name=?]", "id[user_id]"

      assert_select "input[name=?]", "id[book_id]"
    end
  end
end
