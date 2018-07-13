class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    def add(val)
      curr = self
      until curr.next.nil?
        curr = curr.next
      end

      curr.next = ListNode.new(val)
    end

    def to_s
      res = val.to_s
      curr = self
      until curr.next.nil?
        curr = curr.next
        res += "->#{curr.val}"
      end

      res
    end
end

def remove_nth_from_end(head, n)
  curr = head
  prev = nil

  (n + 1).times do
    prev = curr
    curr = curr.next
  end

  prev.next = curr.next

  head
end
