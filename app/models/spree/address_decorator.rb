Spree::Address.class_eval do

  #validates :zipcode, :presence => true, :if => false
  _validators.reject!{ |key, _| key == :zipcode }

  _validate_callbacks.reject! do |callback|
    #callback.raw_filter == [:zipcode]
    true
  end
end
