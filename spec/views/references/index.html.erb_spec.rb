require 'rails_helper'

RSpec.describe "references/index", type: :view do
  before(:each) do
    assign(:references, [
      Reference.create!(
        :type => "Type",
        :author => "Author",
        :title => "Title",
        :year => "Year",
        :publisher => "Publisher"
      ),
      Reference.create!(
        :type => "Type",
        :author => "Author",
        :title => "Title",
        :year => "Year",
        :publisher => "Publisher"
      )
    ])
  end

  it "renders a list of references" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
  end
end
