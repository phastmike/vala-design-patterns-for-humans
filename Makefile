bindir = build

# 1 - Creational
1_1 = 1-1
1_2 = 1-2
1_3 = 1-3
1_4 = 1-4
1_5 = 1-5
1_6 = 1-6
1_1_name = simple-factory
1_2_name = factory-method
1_3_name = abstract-factory
1_4_name = builder
1_5_name = prototype
1_6_name = singleton

# 2 - Structural
2_1 = 2-1
2_2 = 2-2
2_3 = 2-3
2_4 = 2-4
2_5 = 2-5
2_6 = 2-6
2_7 = 2-7
2_1_name = adapter
2_2_name = bridge
2_3_name = composite
2_4_name = decorator
2_5_name = facade
2_6_name = flyweight
2_7_name = proxy

# 3 - Behavioral 
3_1 = 3-1
3_2 = 3-2
3_3 = 3-3
3_4 = 3-4
3_5 = 3-5
3_6 = 3-6
3_7 = 3-7
3_8 = 3-8
3_9 = 3-9
3_10 = 3-10
3_1_name = chain-of-responsability
3_2_name = command
3_3_name = iterator
3_4_name = mediator
3_5_name = memento
3_6_name = observer
3_7_name = visitor
3_8_name = strategy
3_9_name = state
3_10_name = template

all:
	mkdir -p build
	# (1)
	valac -o $(bindir)/$(1_1_name) $(1_1)-$(1_1_name).vala
	valac -o $(bindir)/$(1_2_name) $(1_2)-$(1_2_name).vala
	valac -o $(bindir)/$(1_3_name) $(1_3)-$(1_3_name).vala
	valac -o $(bindir)/$(1_4_name) $(1_4)-$(1_4_name).vala
	#valac -o $(bindir)/$(1_5_name) $(1_5)-$(1_5_name).vala
	valac -o $(bindir)/$(1_6_name) $(1_6)-$(1_6_name).vala
	# (2)
	valac -o $(bindir)/$(2_1_name) $(2_1)-$(2_1_name).vala
	valac -o $(bindir)/$(2_2_name) $(2_2)-$(2_2_name).vala
	valac -o $(bindir)/$(2_3_name) $(2_3)-$(2_3_name).vala
	valac -o $(bindir)/$(2_4_name) $(2_4)-$(2_4_name).vala
	valac -o $(bindir)/$(2_5_name) $(2_5)-$(2_5_name).vala
	valac -o $(bindir)/$(2_6_name) $(2_6)-$(2_6_name).vala --pkg=gee-0.8
	valac -o $(bindir)/$(2_7_name) $(2_7)-$(2_7_name).vala
	# (3)
	valac -o $(bindir)/$(3_1_name) $(3_1)-$(3_1_name).vala
	valac -o $(bindir)/$(3_2_name) $(3_2)-$(3_2_name).vala
	valac -o $(bindir)/$(3_3_name) $(3_3)-$(3_3_name).vala --pkg=gee-0.8
	valac -o $(bindir)/$(3_4_name) $(3_4)-$(3_4_name).vala
	valac -o $(bindir)/$(3_5_name) $(3_5)-$(3_5_name).vala
	valac -o $(bindir)/$(3_6_name) $(3_6)-$(3_6_name).vala --pkg=gee-0.8
	valac -o $(bindir)/$(3_7_name) $(3_7)-$(3_7_name).vala
	valac -o $(bindir)/$(3_8_name) $(3_8)-$(3_8_name).vala
	valac -o $(bindir)/$(3_9_name) $(3_9)-$(3_9_name).vala
	valac -o $(bindir)/$(3_10_name) $(3_10)-$(3_10_name).vala

clean:
	rm -f $(bindir)/$(1_1_name)
	rm -f $(bindir)/$(1_2_name)
	rm -f $(bindir)/$(1_3_name)
	rm -f $(bindir)/$(1_4_name)
	###rm -f $(bindir)/$(1_5_name)
	rm -f $(bindir)/$(1_6_name)
	#
	rm -f $(bindir)/$(2_1_name)
	rm -f $(bindir)/$(2_2_name)
	rm -f $(bindir)/$(2_3_name)
	rm -f $(bindir)/$(2_4_name)
	rm -f $(bindir)/$(2_5_name)
	rm -f $(bindir)/$(2_6_name)
	rm -f $(bindir)/$(2_7_name)
	#
	rm -f $(bindir)/$(3_1_name)
	rm -f $(bindir)/$(3_2_name)
	rm -f $(bindir)/$(3_3_name)
	rm -f $(bindir)/$(3_4_name)
	rm -f $(bindir)/$(3_5_name)
	rm -f $(bindir)/$(3_6_name)
	rm -f $(bindir)/$(3_7_name)
	rm -f $(bindir)/$(3_8_name)
	rm -f $(bindir)/$(3_9_name)
	rm -f $(bindir)/$(3_10_name)
