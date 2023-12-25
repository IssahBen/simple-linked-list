   class Element
    attr_accessor :datum, :next
    def initialize(datum)
      @datum = datum
      #@next = next_node
    end
  end
  
  class SimpleLinkedList
    def initialize(arr=[])
      @arr=arr.to_a
      if @arr.size >= 1
        @head=Element.new(@arr[0])
        limit= @arr.size-1
          (1..limit).each do |i|
            push(Element.new(@arr[i]))
          end
      end
    end
      
    @head=nil
    def first
      @head
    end
    def last
      current_node=first
      while current_node.next != nil
        current_node = current_node.next
      end
      return current_node
  
    end
    def push(element)
      if @head==nil
        @head=element
      else
  
      current_node=last
      current_node.next=element
      end
      return self
    end
  
    def pop
      return nil if @head==nil
      if first.next == nil
        pop=@head
         @head = nil
        return pop
      else
        
        current_node=first
        while current_node.next.next != nil
          current_node = current_node.next
        end
        pop=current_node.next
        current_node.next=nil
        return pop
      end
    end
    def add_first(data)
      @head=Node.new(data,@head)
    end
    def remove_first
      next_node=first.next
      @head=next_node
    end
  
    def length
      current_node=first
      count=0
      while current_node != nil
        current_node=current_node.next
        count+=1
      end
      count
    end
  
    def clear
      @head=nil
    end
  
    def print
      current_node=first
      while current_node != nil
        puts current_node.data
        current_node=current_node.next
      end
    end
    def to_a
      if first == nil
        return []
      else
        current_node=first
        arr=[]
        while current_node != nil
          arr << current_node.datum
          current_node=current_node.next
        end
        return arr.reverse.compact
      
      end
    end
      def reverse!
        previous = nil
        current = @head
  
        while current != nil
          next_node = current.next
          current.next = previous
          previous = current
          current = next_node
        end
  
        @head = previous
        return self
      end
        
  end