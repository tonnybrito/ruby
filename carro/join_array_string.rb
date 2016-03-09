irb(main):037:0> meu_array
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):038:0>
irb(main):039:0*
irb(main):040:0*
irb(main):041:0*
irb(main):042:0* tels = Telefone.new(meu_array)
=> #<Telefone:0x00000001b8fa78 @phone=[#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]>
irb(main):043:0> tels.num_phone
=> "([#)<Tel-efon"
irb(main):044:0> tels = Telefone.new(num_phone)
NameError: undefined local variable or method `num_phone' for main:Object
  from (irb):44
  from /usr/bin/irb:12:in `<main>'
irb(main):045:0> tels = Telefone.new(phones)
NameError: undefined local variable or method `phones' for main:Object
  from (irb):45
  from /usr/bin/irb:12:in `<main>'
irb(main):046:0> tels = Telefone.new(p_1)
NameError: undefined local variable or method `p_1' for main:Object
  from (irb):46
  from /usr/bin/irb:12:in `<main>'
irb(main):047:0> tels = Telefone.new(0..100)
=> #<Telefone:0x00000001c3c890 @phone=0..100>
irb(main):048:0> tels.num_phone
=> "(0.).100-"
irb(main):049:0> tels = Telefone.new()
ArgumentError: wrong number of arguments (0 for 1)
  from /home/tonny/sandbox/ruby/carro/telefone.rb:13:in `initialize'
  from (irb):49:in `new'
  from (irb):49
  from /usr/bin/irb:12:in `<main>'
irb(main):050:0> meu_array
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):051:0> tels.class
=> Telefone
irb(main):052:0> tels.class.class
=> Class
irb(main):053:0> tels.class
=> Telefone
irb(main):054:0> 419875.num_phone
NoMethodError: undefined method `num_phone' for 419875:Fixnum
  from (irb):54
  from /usr/bin/irb:12:in `<main>'
irb(main):055:0> 419875.class
=> Fixnum
irb(main):056:0> meu_array
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):057:0> meu_array.each do |fone|
irb(main):058:1* puts fone
irb(main):059:1> puts fone.class
irb(main):060:1> puts "=========================="
irb(main):061:1> end
#<Telefone:0x00000001afdd08>
Telefone
==========================
#<Telefone:0x00000001b179b0>
Telefone
==========================
#<Telefone:0x00000001bf1f98>
Telefone
==========================
#<Telefone:0x000000019f9628>
Telefone
==========================
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):062:0> meu_array.each do |fone|
irb(main):063:1* puts fone.num_phone
irb(main):064:1> puts "==============================="
irb(main):065:1> end
(41)3044-2099
===============================
(41)9875-5876
===============================
(41)3055-3734
===============================
(41)9792-4292
===============================
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):066:0> novo_array = []
=> []
irb(main):067:0> meu_array.each do |fone|
irb(main):068:1* novo_array.push(fone.num_phone)
irb(main):069:1> end
=> [#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]
irb(main):070:0> novo_array
=> ["(41)3044-2099", "(41)9875-5876", "(41)3055-3734", "(41)9792-4292"]
irb(main):071:0> novo_array.class
=> Array
irb(main):072:0> novo_array.join(",")
=> "(41)3044-2099,(41)9875-5876,(41)3055-3734,(41)9792-4292"
irb(main):073:0> novo_array.join(", ")
=> "(41)3044-2099, (41)9875-5876, (41)3055-3734, (41)9792-4292"
irb(main):074:0> novo_array.class
=> Array
irb(main):075:0> ^C
irb(main):075:0>
