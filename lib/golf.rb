class Golf;class<<self;def hole1 a;a.inject{|a,b|a*b};end;def hole2 a;a.split.sort{|a,b| a[1]<=>b[1]}.join " ";end;def hole3 a;a==1?1:a*hole3(a-1);end
end;end
