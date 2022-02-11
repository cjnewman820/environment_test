require 'rails_helper'

RSpec.describe "ids/edit", type: :view do
  before(:each) do
    @id = assign(:id, Id.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit id form" do
    render

    assert_select "form[action=?][method=?]", id_path(@id), "post" do

      assert_select "input[name=?]", "id[user_id]"

      assert_select "input[name=?]", "id[book_id]"
    end
  end
end
