require 'test/unit'
require_relative '../leetcode/171_Excel_Sheet_Column_Number'
class ExcelSheetColumnNumberTest < Test::Unit::TestCase
  def setup
    @excel = ExcelSheetColumnNumber.new
  end

  def test_solution
    assert_equal @excel.title_to_number("AB"), 28
  end
end
