require "spec_helper"

describe User do
	it "should not save empty name" do
		user = User.create(age:12)
		user.valid?.should eq(false)
		user.errors.should have_key(:name)
	end
end	