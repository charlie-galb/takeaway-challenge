require 'printer'
require 'order'

class Restaurant

  include Printer

  attr_reader :menu

  def initialize
    @menu = {
      trout_snout: 6.50,
      hog_soup: 4.90,
      mysterious_dumpling: 8.00,
      boring_sandwich: 4.00,
      cuttlefish_pate: 11.00,
      hoof_broth: 3.30
    }
  end

  def print_menu(printer = Printer)
    printer.menu_printer(@menu)
  end

  def create_order(order = Order)
    @order = order.new
  end

  def choose_dish
    #take choice of dish as number
    @choice = $stdin.gets.chomp
    @choice = @menu.to_a[@choice.to_i - 1]
    #take quantity as number
    @quantity = $stdin.gets.chomp.to_i
    @quantity.times { @order.add(@choice) }
  end

  def check_price

  end

end
