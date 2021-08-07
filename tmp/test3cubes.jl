using ViewerGL, LinearAlgebra, SparseArrays, LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation; GL = ViewerGL

function testarrangement(V,CV,FV,EV)
		cop_EV = Lar.coboundary_0(EV::Lar.Cells);
		cop_FE = Lar.coboundary_1(V, FV::Lar.Cells, EV::Lar.Cells);
		W = convert(Lar.Points, V');

		V, copEV, copFE, copCF = Lar.space_arrangement(
				W::Lar.Points, cop_EV::Lar.ChainOp, cop_FE::Lar.ChainOp);
				
		V = convert(Lar.Points, V');
		V,CVs,FVs,EVs = Lar.pols2tria(V, copEV, copFE, copCF) # whole assembly
		GL.VIEW(GL.GLExplode(V,FVs,1.1,1.1,1.1,99,1));
		GL.VIEW(GL.GLExplode(V,EVs,1.5,1.5,1.5,99,1));
		GL.VIEW(GL.GLExplode(V,CVs,1,1,1,99,1));
end


# Errored model (in TGW: ERROR: no pivot)
# ---------------------------------------
V = [0.6540618 0.7142365 0.5941251 0.6542998 1.3260341 1.3862088 1.2660973 1.326272 -0.3874063 0.3249123 -0.1702819 0.5420367 -0.317917 0.3944016 -0.1007926 0.611526 0.7899026 0.46601 0.804323 0.4804304 0.7905452 0.4666527 0.8049656 0.4810731 -0.2261907 -0.0499888 -0.0677963 0.1084056 0.0988343 0.2750362 0.2572286 0.4334306; 0.2054992 0.1455625 0.8769965 0.8170598 0.2707609 0.2108241 0.9422582 0.8823214 0.4902226 0.707347 -0.0864242 0.1307001 0.0663064 0.2834308 -0.5103404 -0.2932161 0.0605793 0.0749997 0.3844725 0.3988929 0.060565 0.0749854 0.3844582 0.3988786 -0.0720455 0.0863489 0.219164 0.3775584 -0.2998291 -0.1414347 -0.0086196 0.1497748; 0.2972308 0.969203 0.3624924 1.0344647 0.2428771 0.9148494 0.3081388 0.980111 0.4536339 0.5231232 0.0297177 0.099207 1.0658723 1.1353616 0.6419561 0.7114454 0.6679889 0.6686316 0.6679746 0.6686173 0.9922023 0.992845 0.992188 0.9928307 0.4715635 0.7965885 0.24378 0.5688049 0.4063673 0.7313923 0.1785838 0.5036087]
CV = [[1, 2, 3, 4, 5, 6, 7, 8], [9, 10, 11, 12, 13, 14, 15, 16], [17, 18, 19, 20, 21, 22, 23, 24]];
FV = [[1, 2, 3, 4], [5, 6, 7, 8], [1, 2, 5, 6], [3, 4, 7, 8], [1, 3, 5, 7], [2, 4, 6, 8], [9, 10, 11, 12], [13, 14, 15, 16], [9, 10, 13, 14], [11, 12, 15, 16], [9, 11, 13, 15], [10, 12, 14, 16], [17, 18, 19, 20], [21, 22, 23, 24], [17, 18, 21, 22], [19, 20, 23, 24], [17, 19, 21, 23], [18, 20, 22, 24]];
EV = [[1, 2], [3, 4], [5, 6], [7, 8], [1, 3], [2, 4], [5, 7], [6, 8], [1, 5], [2, 6], [3, 7], [4, 8], [9, 10], [11, 12], [13, 14], [15, 16], [9, 11], [10, 12], [13, 15], [14, 16], [9, 13], [10, 14], [11, 15], [12, 16], [17, 18], [19, 20], [21, 22], [23, 24], [17, 19], [18, 20], [21, 23], [22, 24], [17, 21], [18, 22], [19, 23], [20, 24]];
testarrangement(V,CV,FV,EV);


# After face splitting
# -----------------------
V = [0.6540617999999998 0.7142364999999998 0.6872816200343089 0.5941250999999997 0.6542998079614951 0.6929229746417847 0.6660927570227951 0.6924256885846046 1.3260341 1.3862088 1.2660973 1.3262719920385087 0.7946185131077457 0.795311803386693 0.8049461769791598 0.6978893364451173 -0.38740630000000004 0.3249123 -0.17028190000000007 0.542036694733776 -0.317917 0.3944015999999999 -0.10079260000000007 0.6115259947337761 0.4729938678063347 0.4673971777131105 0.4666328572520818 0.5039882186318663 0.4707836778272794 0.4673140236772549 0.7899025999999999 0.46601 0.8043229999999999 0.4804303999999999 0.7905452000000002 0.46665270000000003 0.8049656 0.4810731000000001; 0.2054992 0.1455625 0.1724107693563844 0.8769965 0.8170598007732168 0.3843473621810608 0.3906268097799347 0.3894687221287142 0.2707609000000001 0.21082410000000004 0.9422582000000003 0.8823213992267827 0.1533691699791747 0.18207414025178234 0.3844586322271989 0.3892254686183435 0.49022260000000006 0.707347 -0.08642419999999995 0.13070013212634024 0.06630639999999999 0.28343080000000004 -0.5103404 -0.2932160678736597 0.07470259548304928 0.08956648867512645 0.07498584149882567 0.07330882745780876 0.18222015069807973 0.08983923498806379 0.060579300000000016 0.0749997 0.38447249999999994 0.3988929 0.060564999999999994 0.0749854 0.3844582 0.3988786; 0.2972308000000001 0.969203 0.6681972618528844 0.36249240000000005 1.0344646993560203 0.9924101013070119 0.66824889023436 0.9924113129852241 0.2428771 0.9148494000000003 0.3081388 0.9801110006439793 0.9627011677876783 0.6679835359595829 0.9823884300888783 0.9924004714668809 0.45363390000000015 0.5231232000000001 0.029717700000000125 0.09920695360173326 1.0658723 1.1353616 0.6419561000000001 0.7114453536017331 0.9819171231357612 0.992844167328483 0.9828352213039846 0.6685562398308738 0.6686268661789595 0.9928443441979011 0.6679888999999999 0.6686315999999999 0.6679745999999999 0.6686172999999999 0.9922023000000001 0.9928450000000001 0.9921880000000001 0.9928307000000001]
VV = [[1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [32], [33], [34], [35], [36], [37], [38]]
EV = [[1, 3], [2, 3], [4, 5], [1, 4], [2, 6], [5, 6], [3, 7], [7, 8], [6, 8], [9, 10], [11, 12], [9, 11], [10, 12], [1, 9], [2, 13], [10, 13], [3, 14], [13, 14], [4, 11], [5, 12], [13, 15], [15, 16], [6, 16], [17, 18], [19, 20], [17, 19], [18, 20], [21, 22], [23, 24], [21, 23], [22, 26], [25, 26], [24, 25], [25, 27], [26, 27], [17, 21], [18, 22], [19, 23], [20, 24], [28, 29], [25, 28], [29, 30], [26, 30], [28, 31], [28, 32], [7, 33], [7, 34], [14, 31], [14, 33], [29, 32], [29, 34], [35, 36], [16, 37], [8, 16], [8, 38], [35, 37], [30, 36], [30, 38], [31, 35], [27, 32], [27, 36], [15, 33], [15, 37], [34, 38], [26, 36], [26, 38], [26, 29]]
FV = [[7, 4, 3, 5, 8, 6, 1], [7, 2, 3, 8, 6], [9, 10, 11, 12], [9, 13, 10, 14, 3, 1], [13, 14, 2, 3], [4, 11, 5, 12], [4, 9, 11, 1], [13, 2, 16, 15, 6], [13, 10, 16, 5, 15, 6, 12], [20, 19, 17, 18], [23, 26, 25, 27, 21, 22, 24], [26, 25, 27], [17, 21, 22, 18], [23, 24, 19, 20], [23, 19, 17, 21], [24, 30, 28, 20, 26, 25, 29, 22, 18], [26, 25, 29, 28, 30], [7, 14, 31, 34, 29, 3, 28], [32, 29, 28], [7, 14, 3, 33], [37, 35, 16, 36, 8, 38, 6, 30], [16, 8, 6], [25, 31, 35, 27, 28, 36], [25, 32, 27, 28], [7, 16, 8, 15, 33], [7, 34, 8, 38], [37, 16, 15], [37, 13, 14, 31, 35, 15], [13, 14, 15, 33], [26, 32, 29, 27], [26, 34, 29, 38], [26, 27, 36]]

model = (([1 0 0.3;
                  0 1 0.2;
                  0 0 1] * V)[1:2,:], Lar.Cells[VV,EV,FV]);
GL.VIEW(GL.numbering(.1)(model));

copVE = Lar.boundary_1(EV)
copEF = Int8[1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 1 0 0 0 0 0 0 0 0 0 0 0 0; 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0; -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0; 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 -1 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0; 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0; 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 1 0 0 0 0 0; 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 -1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1; 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 -1 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 1 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 -1 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 1 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 -1; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 -1 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0]
copEF = SparseArrays.sparse(copEF)


# \partial_1 \circ \partial_2 \circ \mathbf{1} = \mathbf{0}
# ---------------------------------------------------------
julia> size(copVE), size(copEF), size(ones(32,1)) 
((38, 67), (67, 32), (32, 1))
julia> @show copVE * copEF * ones(32,1);  
copVE * copEF * ones(32, 1) = [0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0; 0.0]


# \mathbf{1}^\top \circ \delta_1 \circ \delta_2 = \mathbf{0}
# ----------------------------------------------------------
julia> size(ones(1,38)), size(copVE), size(copEF))
julia> @show ones(1,38) * copVE * copEF;
ones(1, 38) * copVE * copEF = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0]



