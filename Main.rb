require_relative './Node'
require_relative './LinkedList'
node_list = []
head = nil
size = 0
list = LinkedList.new(node_list, head)

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list.to_string
