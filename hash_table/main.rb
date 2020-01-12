class HashTable
  def initialize
    @array_of_lists = [0,1,2,3,4,5,6,7,8,9]
  end
  def insert(key)
    keyHash = hash(key)
  end
  def hash(key)
    key.hash
  end
  def search(key)
  end
  def delete(key)
  end
end