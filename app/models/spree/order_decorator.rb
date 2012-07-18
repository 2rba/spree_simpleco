Spree::Order.class_eval do
  #token_resource

  # Associates the specified user with the order and destroys any previous association with guest user if
  # necessary.
  def payment_required?
    false
  end
  def has_available_shipment
    return
  end
  def has_available_payment
    return
  end
end
