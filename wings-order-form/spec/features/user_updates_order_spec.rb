require "rails_helper"

feature "user updateswing orders" do
  let(:honey_bbq_flavor) { Flavor.create(name: "Honey BBQ") }
  let(:sweet_chili_flavor) { Flavor.create(name: "Sweet Chili") }
  let(:buffalo_flavor) {Flavor.create(name: "Buffalo") }
  let(:wing_order) do
    WingOrder.create(
      customer_name: "Gene Parmesean",
      city: "Boston",
      state: "MA",
      quantity: 100,
      ranch_dressing: true
    )
  end
  let!(:order_first_flavor) { OrderFlavor.create(wing_order: wing_order, flavor: honey_bbq_flavor) }
  let!(:order_second_flavor) { OrderFlavor.create(wing_order: wing_order, flavor: sweet_chili_flavor) }
  let!(:order_first_flavor) { OrderFlavor.create(wing_order: wing_order, flavor: buffalo_flavor) }

  scenario "edits an order" do
    visit edit_wing_order_path(wing_order)

    fill_in "Full Name", with: "Anthony Roni"
    fill_in "City", with: "Portland"
    select "Maine", from: "State"
    choose "50 wings"
    check "Add Ranch Dressing"
    check "Buffalo"
    check "Sweet Chili"
    click_button "Place Order"
  end
end
