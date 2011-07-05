class Golf;class<<self;def hole1 a;a.inject{|b,c|b*c};end;def hole2 a;a.split.sort{|b,c| b[1]<=>c[1]}.join " ";end;def hole3 a;a==1?1:a*hole3(a-1);end;def hole4 a;a.map{|b|b.sub(/(ma.*)/,'hat(\1)').sub(/(do.*)\)/,'\1(bone))').sub /cat(.*)/,'dead\1'};end
end;end
