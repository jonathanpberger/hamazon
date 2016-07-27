Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

clothing = Spree::TaxCategory.find_by_name!("Clothing")

products = [
  {
    name: "Tactical Bacon",
    tax_category: food,
    price: 17.99
  },
  {
    name: "Berkshire Pork Chops",
    tax_category: food,
    price: 12.99
  },
  {
    name: "Berkshire Ham",
    tax_category: food,
    price: 39.99
  },
  {
    name: "Piggy Mug",
    tax_category: food,
    price: 12.99
  },
  {
    name: "Ribs in a Can",
    tax_category: food,
    price: 8.79
  },
  {
    name: "Berkshire Bacon",
    tax_category: food,
    price: 4.79
  },
  {
    name: "Cartoon Pig Print",
    price: 15.00
  },
  {
    name: "Adopt a Pig",
    price: 150.00
  },
  {
    name: "Escort Services",
    price: 600.99,
  }
]

default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")

products.each do |product_attrs|
  Spree::Config[:currency] = "USD"
  eur_price = product_attrs.delete(:eur_price)

  new_product = Spree::Product.where(name: product_attrs[:name],
                                     tax_category: product_attrs[:tax_category]).first_or_create! do |product|
    product.price = product_attrs[:price]
    product.description = FFaker::Lorem.paragraph
    product.available_on = Time.zone.now
    product.shipping_category = default_shipping_category
  end

  if new_product
    Spree::Config[:currency] = "EUR"
    new_product.reload
    new_product.price = eur_price
    new_product.save
  end
end

Spree::Config[:currency] = "USD"