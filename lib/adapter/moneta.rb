require 'moneta'
require 'adapter'

Adapter.define(:moneta) do
  def read(key, options = nil)
    client[key]
  end

  def write(key, attributes, options = nil)
    client[key] = attributes
  end

  def delete(key, options = nil)
    client.delete(key)
  end

  def clear(options = nil)
    client.clear
  end
end
