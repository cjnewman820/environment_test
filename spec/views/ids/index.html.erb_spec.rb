require 'rails_helper'

RSpec.describe "ids/index", type: :view do
  before(:each) do
    assign(:ids, [
      Id.create!(
        user_id: 2,
        book_id: 3
      ),
      Id.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of ids" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
