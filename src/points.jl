abstract AbstractPoint
abstract AbstractPoint2D <: AbstractPoint
import Base.convert


immutable Point2D{T <: Real} <: AbstractPoint2D
    x::T
    y::T
end

Base.isless(p1::Point2D, p2::Point2D) = isless(p1.x, p2.x) || (p1.x == p2.x && isless(p1.y, p2.y))

getpoint(points::Array{Point2D,1},i::Int) = points[i]
getx(p::Point2D) = p.x
gety(p::Point2D) = p.y

getpoint{T <: Real}(points::Array{T, 2}, i::Int) = points[i,:]
getx{T <: Real}(p::Array{T,1}) = p[1]
gety{T <: Real}(p::Array{T,1}) = p[2]

# convert{T <: Real}(Point2D, p::Array{T,1}) = Point2D(getx(p), gety(p))
