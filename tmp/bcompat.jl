# esistono spigoli dove insiste una sola faccia?  (superfici non chiuse)

V = [0.6540617999999998 0.7142364999999998 0.6872816200343089 0.5941250999999997 0.6542998079614951 0.6929229746417847 0.6660927570227951 0.6924256885846046 1.3260341 1.3862088 1.2660973 1.3262719920385087 0.7946185131077457 0.795311803386693 0.8049461769791598 0.6978893364451173 -0.38740630000000004 0.3249123 -0.17028190000000007 0.542036694733776 -0.317917 0.3944015999999999 -0.10079260000000007 0.6115259947337761 0.4729938678063347 0.4673971777131105 0.4666328572520818 0.5039882186318663 0.4707836778272794 0.4673140236772549 0.7899025999999999 0.46601 0.8043229999999999 0.4804303999999999 0.7905452000000002 0.46665270000000003 0.8049656 0.4810731000000001; 0.2054992 0.1455625 0.1724107693563844 0.8769965 0.8170598007732168 0.3843473621810608 0.3906268097799347 0.3894687221287142 0.2707609000000001 0.21082410000000004 0.9422582000000003 0.8823213992267827 0.1533691699791747 0.18207414025178234 0.3844586322271989 0.3892254686183435 0.49022260000000006 0.707347 -0.08642419999999995 0.13070013212634024 0.06630639999999999 0.28343080000000004 -0.5103404 -0.2932160678736597 0.07470259548304928 0.08956648867512645 0.07498584149882567 0.07330882745780876 0.18222015069807973 0.08983923498806379 0.060579300000000016 0.0749997 0.38447249999999994 0.3988929 0.060564999999999994 0.0749854 0.3844582 0.3988786; 0.2972308000000001 0.969203 0.6681972618528844 0.36249240000000005 1.0344646993560203 0.9924101013070119 0.66824889023436 0.9924113129852241 0.2428771 0.9148494000000003 0.3081388 0.9801110006439793 0.9627011677876783 0.6679835359595829 0.9823884300888783 0.9924004714668809 0.45363390000000015 0.5231232000000001 0.029717700000000125 0.09920695360173326 1.0658723 1.1353616 0.6419561000000001 0.7114453536017331 0.9819171231357612 0.992844167328483 0.9828352213039846 0.6685562398308738 0.6686268661789595 0.9928443441979011 0.6679888999999999 0.6686315999999999 0.6679745999999999 0.6686172999999999 0.9922023000000001 0.9928450000000001 0.9921880000000001 0.9928307000000001]
VV = [[1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [32], [33], [34], [35], [36], [37], [38]]
EV = [[1, 3], [2, 3], [4, 5], [1, 4], [2, 6], [5, 6], [3, 7], [7, 8], [6, 8], [9, 10], [11, 12], [9, 11], [10, 12], [1, 9], [2, 13], [10, 13], [3, 14], [13, 14], [4, 11], [5, 12], [13, 15], [15, 16], [6, 16], [17, 18], [19, 20], [17, 19], [18, 20], [21, 22], [23, 24], [21, 23], [22, 26], [25, 26], [24, 25], [25, 27], [26, 27], [17, 21], [18, 22], [19, 23], [20, 24], [28, 29], [25, 28], [29, 30], [26, 30], [28, 31], [28, 32], [7, 33], [7, 34], [14, 31], [14, 33], [29, 32], [29, 34], [35, 36], [16, 37], [8, 16], [8, 38], [35, 37], [30, 36], [30, 38], [31, 35], [27, 32], [27, 36], [15, 33], [15, 37], [34, 38], [26, 36], [26, 38], [26, 29]]
FV = [[7, 4, 3, 5, 8, 6, 1], [7, 2, 3, 8, 6], [9, 10, 11, 12], [9, 13, 10, 14, 3, 1], [13, 14, 2, 3], [4, 11, 5, 12], [4, 9, 11, 1], [13, 2, 16, 15, 6], [13, 10, 16, 5, 15, 6, 12], [20, 19, 17, 18], [23, 26, 25, 27, 21, 22, 24], [26, 25, 27], [17, 21, 22, 18], [23, 24, 19, 20], [23, 19, 17, 21], [24, 30, 28, 20, 26, 25, 29, 22, 18], [26, 25, 29, 28, 30], [7, 14, 31, 34, 29, 3, 28], [32, 29, 28], [7, 14, 3, 33], [37, 35, 16, 36, 8, 38, 6, 30], [16, 8, 6], [25, 31, 35, 27, 28, 36], [25, 32, 27, 28], [7, 16, 8, 15, 33], [7, 34, 8, 38], [37, 16, 15], [37, 13, 14, 31, 35, 15], [13, 14, 15, 33], [26, 32, 29, 27], [26, 34, 29, 38], [26, 27, 36]]
copEF = Int8[1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; -1 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 1 0 0 0 0 0 0 0 0 0 0 0 0; 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0; -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0; 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 -1 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0; 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0; 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 1 0 0 0 0 0; 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 -1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1; 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 -1 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 1 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 -1 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -1 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 -1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 1 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 -1; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 -1 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0 0 0 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 1 0]
copEF = SparseArrays.sparse(copEF)
copFE = SparseArrays.sparse(copEF')


EF = Lar.cop2lar(copEF)
@show collect(enumerate(EF));
[(1, [1, 4]),
 (2, [2, 5]),
 (3, [1, 6]),
 (4, [1, 7]),
 (5, [2, 8]),
 (6, [1, 9]),
 (7, [1, 2, 18, 20]),
 (8, [1, 2, 25, 26]),
 (9, [1, 2, 21, 22]),
 (10, [3, 4]),
 (11, [3, 6]),
 (12, [3, 7]),
 (13, [3, 9]),
 (14, [4, 7]),
 (15, [5, 8]),
 (16, [4, 9]),
 (17, [4, 5, 18, 20]),
 (18, [4, 5, 28, 29]),
 (19, [6, 7]),
 (20, [6, 9]),
 (21, [8, 9, 28, 29]),
 (22, [8, 9, 25, 27]),
 (23, [8, 9, 21, 22]),
 (24, [10, 13]),
 (25, [10, 14]),
 (26, [10, 15]),
 (27, [10, 16]),
 (28, [11, 13]),
 (29, [11, 14]),
 (30, [11, 15]),
 (31, [11, 16]),
 (32, [12, 17]),
 (33, [11, 16]),
 (34, [11, 12, 23, 24]),
 (35, [11, 12, 30, 32]),
 (36, [13, 15]),
 (37, [13, 16]),
 (38, [14, 15]),
 (39, [14, 16]),
 (40, [16, 17, 18, 19]),
 (41, [16, 17, 23, 24]),
 (42, [16, 17]),
 (43, [16, 17]),
 (44, [18, 23]),
 (45, [19, 24]),
 (46, [20, 25]),
 (47, [18, 26]),
 (48, [18, 28]),
 (49, [20, 29]),
 (50, [19, 30]),
 (51, [18, 31]),
 (52, [21, 23]),
 (53, [21, 27]),
 (54, [22, 25]),
 (55, [21, 26]),
 (56, [21, 28]),
 (57, [21]),
 (58, [21]),
 (59, [23, 28]),
 (60, [24, 30]),
 (61, [23, 32]),
 (62, [25, 29]),
 (63, [27, 28]),
 (64, [26, 31]),
 (65, [32]),
 (66, [31]),
 (67, [30, 31])]

FE = Lar.cop2lar(convert(Lar.ChainOp,copEF'));
@show collect(enumerate(FE));
[(1, [1, 3, 4, 6, 7, 8, 9]),
 (2, [2, 5, 7, 8, 9]),
 (3, [10, 11, 12, 13]),
 (4, [1, 10, 14, 16, 17, 18]),
 (5, [2, 15, 17, 18]),
 (6, [3, 11, 19, 20]),
 (7, [4, 12, 14, 19]),
 (8, [5, 15, 21, 22, 23]),
 (9, [6, 13, 16, 20, 21, 22, 23]),
 (10, [24, 25, 26, 27]),
 (11, [28, 29, 30, 31, 33, 34, 35]),
 (12, [32, 34, 35]),
 (13, [24, 28, 36, 37]),
 (14, [25, 29, 38, 39]),
 (15, [26, 30, 36, 38]),
 (16, [27, 31, 33, 37, 39, 40, 41, 42, 43]),
 (17, [32, 40, 41, 42, 43]),
 (18, [7, 17, 40, 44, 47, 48, 51]),
 (19, [40, 45, 50]),
 (20, [7, 17, 46, 49]),
 (21, [9, 23, 52, 53, 55, 56, 57, 58]),
 (22, [9, 23, 54]),
 (23, [34, 41, 44, 52, 59, 61]),
 (24, [34, 41, 45, 60]),
 (25, [8, 22, 46, 54, 62]),
 (26, [8, 47, 55, 64]),
 (27, [22, 53, 63]),
 (28, [18, 21, 48, 56, 59, 63]),
 (29, [18, 21, 49, 62]),
 (30, [35, 50, 60, 67]),
 (31, [51, 64, 66, 67]),
 (32, [35, 61, 65])]


julia> @show SparseArrays.findnz(copEF);
SparseArrays.findnz(copEF) = ([1, 3, 4, 6, 7, 8, 9, 2, 5, 7, 8, 9, 10, 11, 12, 13, 1, 10, 14, 16, 17, 18, 2, 15, 17, 18, 3, 11, 19, 20, 4, 12, 14, 19, 5, 15, 21, 22, 23, 6, 13, 16, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 32, 34, 35, 24, 28, 36, 37, 25, 29, 38, 39, 26, 30, 36, 38, 27, 31, 33, 37, 39, 40, 41, 42, 43, 32, 40, 41, 42, 43, 7, 17, 40, 44, 47, 48, 51, 40, 45, 50, 7, 17, 46, 49, 9, 23, 52, 53, 55, 56, 57, 58, 9, 23, 54, 34, 41, 44, 52, 59, 61, 34, 41, 45, 60, 8, 22, 46, 54, 62, 8, 47, 55, 64, 22, 53, 63, 18, 21, 48, 56, 59, 63, 18, 21, 49, 62, 35, 50, 60, 67, 51, 64, 66, 67, 35, 61, 65], [1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 25, 25, 25, 25, 25, 26, 26, 26, 26, 27, 27, 27, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 30, 30, 30, 30, 31, 31, 31, 31, 32, 32, 32], Int8[1, -1, -1, -1, 1, 1, -1, -1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1, 1, -1, 1, -1, -1, 1, 1, -1, -1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, 1, -1, 1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 1, -1, 1, 1, -1, -1, -1, -1, 1, -1, 1, 1, -1, 1, -1, -1, 1, 1, -1, 1, -1, 1, 1, 1, -1, -1, 1, -1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, 1, -1, -1, 1]);

julia> @show SparseArrays.findnz(copFE);
SparseArrays.findnz(copFE) = ([1, 4, 2, 5, 1, 6, 1, 7, 2, 8, 1, 9, 1, 2, 18, 20, 1, 2, 25, 26, 1, 2, 21, 22, 3, 4, 3, 6, 3, 7, 3, 9, 4, 7, 5, 8, 4, 9, 4, 5, 18, 20, 4, 5, 28, 29, 6, 7, 6, 9, 8, 9, 28, 29, 8, 9, 25, 27, 8, 9, 21, 22, 10, 13, 10, 14, 10, 15, 10, 16, 11, 13, 11, 14, 11, 15, 11, 16, 12, 17, 11, 16, 11, 12, 23, 24, 11, 12, 30, 32, 13, 15, 13, 16, 14, 15, 14, 16, 16, 17, 18, 19, 16, 17, 23, 24, 16, 17, 16, 17, 18, 23, 19, 24, 20, 25, 18, 26, 18, 28, 20, 29, 19, 30, 18, 31, 21, 23, 21, 27, 22, 25, 21, 26, 21, 28, 21, 21, 23, 28, 24, 30, 23, 32, 25, 29, 27, 28, 26, 31, 32, 31, 30, 31], [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23, 23, 24, 24, 25, 25, 26, 26, 27, 27, 28, 28, 29, 29, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 34, 34, 35, 35, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 40, 40, 40, 40, 41, 41, 41, 41, 42, 42, 43, 43, 44, 44, 45, 45, 46, 46, 47, 47, 48, 48, 49, 49, 50, 50, 51, 51, 52, 52, 53, 53, 54, 54, 55, 55, 56, 56, 57, 58, 59, 59, 60, 60, 61, 61, 62, 62, 63, 63, 64, 64, 65, 66, 67, 67], Int8[1, 1, -1, -1, -1, 1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, -1, 1, -1, -1, 1, -1, 1, 1, -1, -1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, 1, 1, -1, 1, -1, -1, 1, -1, 1, -1, 1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, 1, -1, 1, -1, 1, 1, -1, 1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, -1, 1, -1, 1, -1, 1, 1, -1, 1, -1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1, 1, 1, -1, -1, 1]);

function boundary_compatibility(copEF)
	out = []
	for f=1:size(copEF,2)
		bound = copEF[:,f]
		coboundOfBuond = convert(Lar.ChainOp, bound' * copEF)
		bocob = convert(Lar.ChainOp, copEF * coboundOfBuond')
		bocob_indices = SparseArrays.findnz(bocob)[1]
		faceboundary_indices = SparseArrays.findnz(copEF[:,f])[1]
		int = intersect(bocob_indices, faceboundary_indices)
		out = push!(out, int==faceboundary_indices ? 0 : f )
	end
	return [k for k in out if k≠0]
end

boundary_compatibility(copEF)

