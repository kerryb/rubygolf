class Golf;class<<self;def hole1 a;a.inject &:*;end;def hole2 a;a.split.sort{|b,c|b[1]<=>c[1]}.join" ";end;def hole3 a;(2..a).inject &:*;end;def hole4 a;a.map{|b|b.sub(/(ma.*)/,'hat(\1)').sub(/(do.*)\)/,'\1(bone))').sub /cat(.*)/,'dead\1'};end;def hole5 a;(1..a.size).map{|b|a.each_cons(b).to_a}.uniq.flatten(1);end;def hole6 a;(1..a).map{|b|c=(b%3==0?"fizz":"")+(b%5==0?"buzz":"");c.empty? ? b: c};end
def hole8 a
  b=[1,1]
  (3..a).each{|c|b<<b[-2]+b[-1]}
  b
end
end;end
