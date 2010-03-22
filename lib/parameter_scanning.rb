module ParameterScanning

  # module loader hook
  def transform(list)
    list ||= []
    list.flatten! if list.respond_to? :flatten
    
    if list.respond_to? :delete_if
      list.delete_if(&:nil?)
      list.delete_if {|item| (item.respond_to?(:empty?) && item.empty?) }
    end

    if list.kind_of? String
      list = list.split(',').map(&:to_i)
    end

    if list.respond_to? :map
      list.map!{|item|
        if item.kind_of? String
          item = item.split(',').map(&:to_i)
        elsif  item.respond_to? :map
          item = transform(item)
        end
        item
      }
    end
    list.flatten
  end

  def selected(proposed,existing)
      proposed = transform(proposed)
      existing = transform(existing)
      skip = (existing - (existing - proposed))
      [(proposed-skip).uniq,skip]
  end

end

