require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe SessionsHelper do
  pending "add some examples to (or delete) #{__FILE__}"
end

def sign_in(user)
  cookies.permanent[:remember_token] = user.remember_token
  self.current_user = user
end

def signed_in?
  !current_user.nil?
end

def current_user=(user)
  @current_user = user
end

def current_user
  @current_user ||= User.find_by_remember_token(cookies[:remember_token])
end