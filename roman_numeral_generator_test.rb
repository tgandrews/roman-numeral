require './roman_numeral_generator.rb'
require 'test/unit'

class RomanNumeralGeneratorTest < Test::Unit::TestCase

	def test_simplest_values
		assert_equal("I", RomanNumeralGenerator.generate(1))
		assert_equal("IV", RomanNumeralGenerator.generate(4))
		assert_equal("V", RomanNumeralGenerator.generate(5))
		assert_equal("IX", RomanNumeralGenerator.generate(9))
		assert_equal("X", RomanNumeralGenerator.generate(10))
		assert_equal("XL", RomanNumeralGenerator.generate(40))
		assert_equal("L", RomanNumeralGenerator.generate(50))
		assert_equal("XC", RomanNumeralGenerator.generate(90))
		assert_equal("C", RomanNumeralGenerator.generate(100))
		assert_equal("CD", RomanNumeralGenerator.generate(400))
		assert_equal("D", RomanNumeralGenerator.generate(500))
		assert_equal("CM", RomanNumeralGenerator.generate(900))
		assert_equal("M", RomanNumeralGenerator.generate(1000))
	end

	def test_multiple_characters
		assert_equal("II", RomanNumeralGenerator.generate(2))
		assert_equal("MM", RomanNumeralGenerator.generate(2000))
	end
end
