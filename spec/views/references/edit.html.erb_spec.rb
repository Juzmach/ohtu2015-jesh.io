require 'rails_helper'

RSpec.describe "references/edit", type: :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      :type => "",
      :author => "MyString",
      :title => "MyString",
      :year => "MyString",
      :publisher => "MyString"
    ))
  end

  it "renders the edit reference form" do
    render

    assert_select "form[action=?][method=?]", reference_path(@reference), "post" do

      assert_select "input#reference_type[name=?]", "reference[type]"

      assert_select "input#reference_author[name=?]", "reference[author]"

      assert_select "input#reference_title[name=?]", "reference[title]"

      assert_select "input#reference_year[name=?]", "reference[year]"

      assert_select "input#reference_publisher[name=?]", "reference[publisher]"
    end
  end
end
