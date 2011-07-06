class Golf
  class<<self
    def hole1 a
      a.inject &:*
    end

    def hole2 a
      a.split.sort_by {|b| b[1] }.join" "
    end

    def hole3 a
      (2..a).inject &:*
    end

    def hole4 a
      a.map {|b|b.sub(/(ma.*)/, 'hat(\1)').sub(/(do.*)\)/, '\1(bone))').sub /cat(.*)/, 'dead\1' }
    end

    def hole5 a
      (1..a.size).map {|b| a.each_cons(b).to_a }.uniq.flatten 1
    end

    def hole6 a
      (1..a).map {|b| c = (b%3 == 0 ? "fizz" : "") + (b%5==0 ? "buzz" : "")
        c.empty? ? b : c
      }
    end

    def hole7 a
      b = [[a.shift]]
      a.each {|c| b[-1].include?(c-1) ? b[-1] << c :b <<[c] }
      b.map {|d| d[1] ? "#{d[0]}-#{d[-1]}" : d[0].to_s }
    end

    def hole8 a
      (3..a).inject([1,1]) {|b,c| b << b[-2] + b[-1] }
    end

    def hole9 a
      b = File.read(a).map{|b| b.chomp.split ", " }
      c = Hash.new {0}
      begin
        b.map(&:shift).compact.group_by{|d| d}.each{|k,v| c[k] += v.size }
      end until c.values.any?{|e| e.to_i >= b.size/2 }
      c.sort_by{|k,v| v }[-1][0]
    end
  end
end
