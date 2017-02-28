module GeometricStructures

include("points.jl")
include("linesegments.jl")
include("convexhull.jl")

export
    AbstractPoint,
    AbstractPoint2D,
    Point2D,
    LineSegment2D,
    convexhull

end # module
