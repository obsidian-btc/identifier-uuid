module UUID
  def self.format(uuid)
    uuid.to_s
  end

  def self.random
    Random.get
  end

  def self.zero
    '00000000-0000-0000-0000-000000000000'
  end
end
