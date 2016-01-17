class Goods
  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

  def tax(good)
      if good == "imported" then do duty(good)
      elsif good == "book", "chocolate", "chocolates", "pills" then do create.new
      elsif good do basic_tax
      end
    end
    # call on item [1] if == "imported" send good to duty method :
    # call on item [2] if "book", "chocolate", "chocolates"

  def duty(good)
      good[]
      # 0.5
      end
    end

end



    puts "Grocery list first item: "
    item1 = "1 book at 12.49"  #test line
    item1 = gets.chomp
    list1_item1 = item1.split("")
    list1_item1.tax(good)

    puts "Grocery list next item: "
    item2 = "1 music CD at 14.99"  #test line
    item2 = gets.chomp
    list1_item2 = item2.split("")
    list1_item2.tax(good)

    puts "Grocery list next item: "
    item3 = "1 chocolate bar at 0.85" #test line
    item3 = gets.chomp
    list1_item3 = item3.split("")
    list1_item3.tax(good)




    puts "Second Grocery list first item: "
    item1 = "1 imported box of chocolates at 10.00" #test line
    item1 = gets.chomp
    list2_item1 = item1.split("")
    list2_item1.tax(good)

    puts "Grocery list next item: "
    item2 = "1 imported bottle of perfume at 47.50" #test line
    item2 = gets.chomp
    list2_item2 = item2.split("")
    list2_item2.tax(good)




    puts "Third Grocery list first item: "
    item1 = "1 imported bottle of perfume at 27.99" #test line
    item1 = gets.chomp
    list3_item1 = item1.split("")
    list3_item1.tax(good)

    puts "Grocery list next item: "
    item2 = "1 bottle of perfume at 18.99" #test line
    item2 = gets.chomp
    list3_item2 = item2.split("")
    list3_item2.tax(good)

    puts "Grocery list next item: "
    item3 = "1 packet of headache pills at 9.75" #test line
    item3 = gets.chomp
    list3_item3 = item3.split("")
    list3_item3.tax(good)

    puts "Grocery list next item: "
    item4 = "1 box of imported chocolates at 11.25"
    item4 = gets.chomp
    list3_item4 = item4.split("")
    list3_item4.tax(good)



grocery_list1 = Goods.new(item, price)
grocery_list2 = Goods.new(item, price)
grocery_list3 = Goods.new(item, price)
