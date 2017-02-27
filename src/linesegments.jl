abstract AbstractLineSegment
abstract AbstractLineSegment2D <: AbstractLineSegment

immutable LineSegment2D{T<:Real} <: AbstractLineSegment2D

    p1::Point2D{T}
    p2::Point2D{T}

end

Base.isless(s1::LineSegment2D, s2::LineSegment2D) = isless(s1.p1, s2.p1) || (s1.p1 == s2.p1 && isless(s1.p2, s2.p2))

direction(p, q, r) = det([1 getx(p) gety(p); 1 getx(q) gety(q); 1 getx(r) gety(r)])

direction{T <: Real}(s::LineSegment2D{T}, r::Point2D{T}) = direction(s.p1,s.p2,r)

direction{T <: Real}(s::Array{T,2}, r::Array{T,1}) = direction(getpoint(s,1),getpoint(s,2),r)


function intersection(s1, s2)
    # Do line segments s1 and s2 intersect
    function onsegment{T <: Real}(s::LineSegment2D{T}, r::Point2D{T})
        # Is a point r that is known to be collinear on segment s?
        p, q = s.p1, s.p2
        min(p.x,q.x) <= r.x <= max(p.x,q.x) && min(p.y,q.y) <= r.y <= max(p.y,q.y)
    end

    function onsegement{T <: Real}(s1::Array{T,2}, r::Array{T,1})
        p, q = getpoint(s1,1), getpoint(s1,2)
        min(getx(p),getx(q)) <= getx(r) <= max(getx(p),getx(q)) &&
                                           min(gety(p),gety(q)) <= r.y <= max(gety(p),gety(q))
    end

    d1 = direction(s2, s1.p1)
    d2 = direction(s2, s1.p2)
    d3 = direction(s1, s2.p1)
    d4 = direction(s1, s2.p2)

    if ((d1 > 0 && d2 < 0) || (d1 < 0 && d2 > 0)) && ((d3 > 0 && d4 < 0) || (d3 < 0 && d4 > 0))
        true
    elseif d1 == 0 && onsegment(s2, s1.p1)
        true
    elseif d2 == 0 && onsegment(s2, s1.p2)
        true
    elseif d3 == 0 && onsegment(s1, s2.p1)
        true
    elseif d4 == 0 && onsegment(s1, s2.p2)
        true
    else
        false
    end

end
