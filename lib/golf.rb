class Golf;class<<self;def hole1 a;a.inject &:*;end;def hole2 a;a.split.sort{|b,c|b[1]<=>c[1]}.join" ";end;def hole3 a;(2..a).inject &:*;end;def hole4 a;a.map{|b|b.sub(/(ma.*)/,'hat(\1)').sub(/(do.*)\)/,'\1(bone))').sub /cat(.*)/,'dead\1'};end
def hole5
end
end;end
