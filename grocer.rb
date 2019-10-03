def consolidate_cart(cart = {})
  new_cart = {}
  cart.each {|object| 
  object.each {|item, info| 
  if new_cart[item] 
    new_cart[item] [:count] += 1 
  else
    new_cart[item] = info 
    new_cart[item] [:count] = 1 
  end
  }
}
  new_cart
end








def apply_coupons(cart, coupons)
  coupons.each {|deal| 
  item = deal[:item]
  couponed_item = "#{item} W/COUPON"
  discounted_item_cost = deal[:cost] / deal [:num]
  original_item = cart[item]
end


















def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
