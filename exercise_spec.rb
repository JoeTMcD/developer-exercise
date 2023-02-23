require 'minitest/spec'
require 'minitest/autorun'
require './exercise'

# From README.portable:
# "In order to run the tests,
#  you will need Minitest installed
#  (if you're running Ruby 1.9 or newer,
#  Minitest is already installed - otherwise,
#  install it from Rubygems by running gem install minitest)."
#
# My recent installation: "ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]"
#
# Received errors running this file stating the object of ".must_equal"
# needed to be surrounded by "_(" & ")" as seen in the modifications below.

describe Exercise do
  describe "#marklar" do
    it "should return a marklar'd string" do
      _(Exercise.marklar("The quick brown fox")).must_equal "The marklar marklar fox"
    end

    it "should capitalize Marklar when replacing capitalized words" do
      _(Exercise.marklar("Down goes Frazier")).must_equal "Down goes Marklar"
      _(Exercise.marklar("Monday is Martin Luther King day")).must_equal "Marklar is Marklar Marklar King day"
    end

    it "should keep end-of-word punctuation intact" do
      _(Exercise.marklar("How is the weather today? I have not been outside.")).must_equal "How is the marklar marklar? I have not been marklar."
    end
  end

  describe "#even_fibonacci" do
    it "should sum the even numbers in a Fibonacci sequence" do
      _(Exercise.even_fibonacci(5)).must_equal 2
      _(Exercise.even_fibonacci(11)).must_equal 44
      _(Exercise.even_fibonacci(19)).must_equal 3382
      _(Exercise.even_fibonacci(35)).must_equal 4_613_732
    end
  end
end
