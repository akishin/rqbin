require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :hashkey => "Hashkey"
      ),
      stub_model(Page,
        :hashkey => "Hashkey"
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hashkey".to_s, :count => 2
  end
end
