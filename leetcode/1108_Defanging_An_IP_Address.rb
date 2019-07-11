# Leetcode 1108
class DefangingAnIPAddress
  def defang_i_paddr(address)
    address.gsub! '.', '[.]'
  end
end
