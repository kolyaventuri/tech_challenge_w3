require './lib/linked_list'

describe ListNode do
  it 'should be able to add elements' do
    ll = ListNode.new(1)
    ll.add(2)
    ll.add(3)

    expect(ll.next.val).to be(2)
    expect(ll.next.next.val).to be(3)
  end

  it 'should be able to print the list' do
    ll = ListNode.new(1)
    ll.add(2)
    ll.add(3)

    expect(ll.to_s).to eq('1->2->3')
  end

  it 'should be able to delete element from list' do
    ll = ListNode.new(1)
    ll.add(2)
    ll.add(3)
    ll.add(4)
    ll.add(5)

    head = remove_nth_from_end(ll, 2)

    expect(head.to_s).to eq('1->2->3->5')
  end
end
