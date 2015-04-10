require 'rails_helper'

RSpec.describe "references/new", type: :view do
  before(:each) do
    assign(:reference, Reference.new(
      :type => "",
      :author => "MyString",
      :title => "MyString",
      :year => "MyString",
      :publisher => "MyString"
    ))
  end

  it "renders new reference form" do
    render

    assert_select "form[action=?][method=?]", references_path, "post" do

      assert_select "input#reference_type[name=?]", "reference[type]"

      assert_select "input#reference_author[name=?]", "reference[author]"

      assert_select "input#reference_title[name=?]", "reference[title]"

      assert_select "input#reference_year[name=?]", "reference[year]"

      assert_select "input#reference_publisher[name=?]", "reference[publisher]"
    end
  end
end
