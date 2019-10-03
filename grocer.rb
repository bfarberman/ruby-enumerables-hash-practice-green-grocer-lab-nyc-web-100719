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
  coupon_num = deal[:num] 
  if cart.include?(item) && cart.include?(couponed_item) 
    cart_count = original_item[:count]
    updated_count = cart_count - coupon_num
    if updated_count >= 0 
      original_item[:count] = updated_count
      cart[couponed_item] [:count] = cart[couponed_item] [:count] + deal[:num] 
    end
    elsif cart.include?(item)
    cart_count = original_item[:count]
    updated_count = cart_count - coupon_num
    if updated_count
end


















def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
