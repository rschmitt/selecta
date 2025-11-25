require_relative "spec_helper"

describe Text do
  describe "truncating" do
    it "can truncate itself to a given width" do
      expect(Text["this is long"].truncate_to_width(6)).to eq(Text["this i"])
    end

    it "sometimes leaves empty strings behind when truncating" do
      text = Text[:red, "one", :green, "two", :blue, "three"]
      expect(text.truncate_to_width(2)).to eq(Text[:red, "on", :green, "", :blue, ""])
    end
  end
end
