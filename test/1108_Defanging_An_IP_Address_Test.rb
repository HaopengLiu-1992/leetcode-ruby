require 'test/unit'
require_relative '../leetcode/1108_Defanging_An_IP_Address'
class DefangingAnIPAddressTest < Test::Unit::TestCase
  def setup
    @ip = '192.168.42.45'
    @defang = DefangingAnIPAddress.new
  end

  def test_solution
    sol = @defang.defang_i_paddr(@ip)
    assert_equal sol, '192[.]168[.]42[.]45'
  end
end
