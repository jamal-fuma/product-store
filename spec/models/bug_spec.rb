require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Bug do
  before(:each) do
    @valid_attributes = {
      :title => "A valid bug title",      
      :description => "A valid bug description",
      :status => 0,
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Bug.create!(@valid_attributes)
  end
end
