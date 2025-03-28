using NearestNeighbors, DataStructures, SparseArrays
using LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation
using ViewerGL, LinearAlgebra
GL = ViewerGL

function chaincongruence(W, Delta0, Delta_1)
    V, vclasses = vcongruence(W)
    EV, eclasses = cellcongruence(Delta_0, vclasses, dim=1)
    FE, fclasses = cellcongruence(Delta_1, eclasses, dim=2)
    return V, EV, FE
end

function cellcongruence(Delta, inclasses; dim)
    cellarray = Lar.cop2lar(Delta)
    newcell = Vector(undef, size(Delta,2))
    [ newcell[e] = k for (k, class) in enumerate(inclasses) for e in class ]
    cells = [map(x -> newcell[x], face) for face in cellarray]
    okcells = [cell for cell in cells if length(Set(cell)) > dim] # non-empty cells
    classes = DefaultOrderedDict{Vector, Vector}([])
    for (k,face) in enumerate(okcells)
        classes[face] == [] ? classes[face] = [k] : append!(classes[face], [k])
    end
    cells = collect(keys(classes))
    outclasses = collect(values(classes))
    return cells, outclasses
end

function vcongruence(V::Matrix; epsilon=1e-6)
   vclasses, visited = [], []
   kdtree = NearestNeighbors.KDTree(V);
   for vidx = 1 : size(V, 2) if !(vidx in visited)
      nearvs = NearestNeighbors.inrange(kdtree, V[:,vidx], epsilon)
      push!(vclasses, nearvs)
      append!(visited, nearvs) end
   end
   W = hcat([sum(V[:,class], dims=2)/length(class) for class in vclasses]...)
   return W, vclasses
end


W = convert(Matrix,[0.5310492999999998 0.8659989999999999 0.14191280000000003; 1.0146684 0.6827212999999999 0.2169682; 0.3477716 0.5268921 0.4947971000000001; 0.8313907882395298 0.3436144447063971 0.5698524407571428; 0.6061046999999998 1.2188832999999994 0.5200012; 1.0897237999999998 1.0356056999999999 0.5950565999999999; 0.42282699999999984 0.8797763999999998 0.8728855; 0.9064461979373597 0.6964987903021808 0.9479408896095312; 0.5310493 0.8659989999999999 0.14191279999999987; 1.0146684000000001 0.6827213 0.21696819999999994; 0.6061047 1.2188833 0.5200011999999999; 1.0897237772434623 1.035605657895053 0.5950566438156151; 0.3477716 0.5268921 0.4947971; 0.8313908 0.3436145 0.5698525000000001; 0.422827 0.8797764000000001 0.8728855; 0.9064462 0.6964988 0.9479409; 0.5310493 0.8659989999999999 0.14191280000000006; 0.34777160000000007 0.5268920999999999 0.4947971000000001; 0.6061047 1.2188833 0.5200012000000002; 0.4228270000000002 0.8797764 0.8728855000000001; 1.0146684 0.6827213 0.21696819999999994; 0.8313908 0.3436145 0.5698525000000001; 1.0897238 1.0356057 0.5950565999999999; 0.9064461675456482 0.6964988122992563 0.9479408949632379]');

Delta_0 = SparseArrays.sparse([1, 3, 1, 4, 2, 3, 2, 4, 5, 7, 5, 8, 6, 7, 6, 8, 9, 11, 9, 12, 10, 11, 10, 12, 13, 15, 13, 16, 14, 15, 14, 16, 17, 19, 17, 20, 18, 19, 18, 20, 21, 23, 21, 24, 22, 23, 22, 24], [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23, 24, 24], Int8[-1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1]);

Delta_1 = SparseArrays.sparse([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], Int8[1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1]);

V,EV,FE = chaincongruence(W,Delta_0,Delta_1)

FE = convert(Vector{Vector{Int64}},FE)
EV = convert(Vector{Vector{Int64}},EV)
FV = convert(SparseMatrixCSC{Int8, Int64},(Lar.lar2cop(FE)*Lar.lar2cop(EV) .÷ 2))
FV = Lar.cop2lar(FV)
GL.VIEW( GL.numbering(.5)((V,[[[k] for k=1:size(V,2)], EV, FV]),GL.COLORS[1]) );
