module LinearAlgebraicRepresentation

	using NearestNeighbors
	using DataStructures
	using IntervalTrees
	#using Triangle
	using Triangulate
	using SparseArrays
	using LinearAlgebra
	using Distributed
	Lar = LinearAlgebraicRepresentation
	export Verbose

	"""
		Points = Array{Number,2}

	Alias declation of LAR-specific data structure.
	Dense `Array{Number,2,1}` ``M x N`` to store the position of *vertices* (0-cells)
	of a *cellular complex*. The number of rows ``M`` is the dimension
	of the embedding space. The number of columns ``N`` is the number of vertices.
	"""
	const Points = Matrix


	"""
		Cells = Array{Array{Int,1},1}

	Alias declation of LAR-specific data structure.
	Dense `Array` to store the indices of vertices of `P-cells`
	of a cellular complex.
	The linear space of `P-chains` is generated by `Cells` as a basis.
	Simplicial `P-chains` have ``P+1`` vertex indices for `cell` element in `Cells` array.
	Cuboidal `P-chains` have ``2^P`` vertex indices for `cell` element in `Cells` array.
	Other types of chain spaces may have different numbers of vertex indices for `cell`
	element in `Cells` array.
	"""
	const Cells = Array{Array{Int,1},1}


	const Cell = SparseVector{Int8, Int}


	"""
		Chain = SparseArrays.SparseVector{Int8,Int}

	Alias declation of LAR-specific data structure.
	Binary `SparseVector` to store the coordinates of a `chain` of `N-cells`. It is
	`nnz=1` with `value=1` for the coordinates of an *elementary N-chain*, constituted by
	a single *N-chain*.
	"""
	const Chain = SparseArrays.SparseVector{Int8,Int}


	"""
		ChainOp = SparseArrays.SparseMatrixCSC{Int8,Int}

	Alias declation of LAR-specific data structure.
	`SparseMatrix` in *Compressed Sparse Column* format, contains the coordinate
	representation of an operator between linear spaces of `P-chains`.
	Operators ``P-Boundary : P-Chain -> (P-1)-Chain``
	and ``P-Coboundary : P-Chain -> (P+1)-Chain`` are typically stored as
	`ChainOp` with elements in ``{-1,0,1}`` or in ``{0,1}``, for
	*signed* and *unsigned* operators, respectively.
	"""
	const ChainOp = SparseArrays.SparseMatrixCSC{Int8,Int}


	"""
		ChainComplex = Array{ChainOp,1}

	Alias declation of LAR-specific data structure. It is a
	1-dimensional `Array` of `ChainOp` that provides storage for either the
	*chain of boundaries* (from `D` to `0`) or the transposed *chain of coboundaries*
	(from `0` to `D`), with `D` the dimension of the embedding space, which may be either
	``R^2`` or ``R^3``.
	"""
	const ChainComplex = Array{ChainOp,1}


	"""
		LARmodel = Tuple{Points,Array{Cells,1}}

	Alias declation of LAR-specific data structure.
	`LARmodel` is a pair (*Geometry*, *Topology*), where *Geometry* is stored as
	`Points`, and *Topology* is stored as `Array` of `Cells`. The number of `Cells`
	values may vary from `1` to `N+1`.
	"""
	const LARmodel = Tuple{Points,Array{Cells,1}}


	"""
		LAR = Union{ Tuple{Points, Cells},Tuple{Points, Cells, Cells} }

	Alias declation of LAR-specific data structure.
	`LAR` is a pair (*Geometry*, *Topology*), where *Geometry* is stored as
	`Points`, and *Topology* is stored as `Cells`.
	"""
	const LAR = Union{ Tuple{Points, Cells},Tuple{Points, Cells, Cells} }
	Verbose = false


   include("./interface.jl")
   #include("./utilities.jl")
   include("./simplexn.jl")
   include("./largrid.jl")
   include("./mapper.jl")
   include("./struct.jl")
   include("./integr.jl")
   include("./refactoring.jl")
   include("./graphalgorithms.jl")
   include("./fragface.jl")
   include("./svg2lar.jl")
   include("./bool3d.jl")
   include("./bool2d.jl")
   include("./fenvs.jl")
   include("./two2three.jl")
   include("./localcongruence.jl")

   include("./arrangement/arrangement.jl")
   #planar_arrangement_1 = Arrangement.planar_arrangement_1
   #planar_arrangement_2 = Arrangement.planar_arrangement_2
   planar_arrangement = Arrangement.planar_arrangement
   #spatial_arrangement = Arrangement.spatial_arrangement
end
