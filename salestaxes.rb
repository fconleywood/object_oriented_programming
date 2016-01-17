class Goods
  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end




end



    puts "Grocery list first item: "
    item1 = "1 book at 12.49"  #test line
    item1 = gets.chomp
    list1_item1 = item1.split("")
    tax.list1_item1

    puts "Grocery list next item: "
    item2 = "1 music CD at 14.99"  #test line
    item2 = gets.chomp
    list1_item2 = item2.split("")
    tax.list1_item2

    puts "Grocery list next item: "
    item3 = "1 chocolate bar at 0.85" #test line
    item3 = gets.chomp
    list1_item3 = item3.split("")
    tax.list1_item3




    puts "Second Grocery list first item: "
    item1 = "1 imported box of chocolates at 10.00" #test line
    item1 = gets.chomp
    list2_item1 = item1.split("")
    tax.list2_item1

    puts "Grocery list next item: "
    item2 = "1 imported bottle of perfume at 47.50" #test line
    item2 = gets.chomp
    list2_item2 = item2.split("")
    tax.list2_item2




    puts "Third Grocery list first item: "
    item1 = "1 imported bottle of perfume at 27.99" #test line
    item1 = gets.chomp
    list3_item1 = item1.split("")
    tax.list3_item1

    puts "Grocery list next item: "
    item2 = "1 bottle of perfume at 18.99" #test line
    item2 = gets.chomp
    list3_item2 = item2.split("")
    tax.list3_item2

    puts "Grocery list next item: "
    item3 = "1 packet of headache pills at 9.75" #test line
    item3 = gets.chomp
    list3_item3 = item3.split("")
    tax.list3_item3

    puts "Grocery list next item: "
    item4 = "1 box of imported chocolates at 11.25"
    item4 = gets.chomp
    list3_item4 = item4.split("")
    tax.list3_item4



grocery_list1 = Goods.new(item, price)
grocery_list2 = Goods.new(item, price)
grocery_list3 = Goods.new(item, price)
