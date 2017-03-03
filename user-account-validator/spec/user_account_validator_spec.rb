require_relative 'spec_helper'

describe UserAccountValidator do

  describe "#validate" do
    context "errors raised when running the program" do
      it "raises an error when there is no email address" do
        expect { raise EmailError, "Missing an email address"}.to raise_error("Missing an email address")
      end
      it "raises an error when it's missing '@'" do
        expect { raise StandardError, "Missing '@' symbol"}.to raise_error("Missing '@' symbol")
      end
      it "raises an error when it's missing a username" do
        expect { raise StandardError, "Missing a username"}.to raise_error("Missing a username")
      end
    end
  end
end
