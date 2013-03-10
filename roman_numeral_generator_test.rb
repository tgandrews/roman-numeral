require './roman_numeral_generator.rb'
require 'test/unit'

class RomanNumeralGeneratorTest < Test::Unit::TestCase

	def test_simplest_values
		assert_equal("I", RomanNumeralGenerator.generate(1))
	end
end
