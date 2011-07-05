class Golf
  class<<self
    def hole1 a
      a.inject{|a,b|a*b}
    end
    def hole2 a
      a.split.sort{|a,b| a[1]<=>b[1]}.join " "
    end
  end
end
