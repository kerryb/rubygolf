class Golf;class<<self;def hole1 a;a.inject &:*;end;def hole2 a;a.split.sort{|b,c|b[1]<=>c[1]}.join" ";end;def hole3 a;(2..a).inject &:*;end;def hole4 a;a.map{|b|b.sub(/(ma.*)/,'hat(\1)').sub(/(do.*)\)/,'\1(bone))').sub /cat(.*)/,'dead\1'};end
def hole5 a;(1..a.length).map{|b|a.each_cons(b).to_a}.uniq.flatten(1);end
def hole6 a
  (1..a).map{|b|if b%3==0;"fizz"elsif b%5==0;"buzz";else b;end}
end
end;end
