"""
## Convex hull

Calculation f convex hull of a sequence of points represented through an Float64
Array of N rows and 2 columns
"""
function convexhull{T <: Real}(points::Array{T,2})
    n = size(points,1)
    # Sort the points by x-coordinate, resulting in a sequence p 1 , . . . , p n
    p = sortrows(points)
    # Put the points p_1 and p_2 in a list L_upper , with p_1 as the first point
    upper = [p[1,:], p[2,:]]

    for i in 3:n
        while size(upper,1) >= 2 && direction(upper[end-1], upper[end], p[i,:]) <= 0
            pop!(upper)
        end

        push!(upper,p[i,:])
    end

    lower = [p[end,:], p[end-1,:]]

    for i in n-2:-1:1
        while size(lower,1) >= 2 && direction(lower[end-1], lower[end], p[i,:]) <= 0
            pop!(lower)
        end

        push!(lower,p[i,:])
    end

    append!(upper, lower[2:end-1])
end

function convexhull{T <: Real}(points::Array{Point2D{T}, 1})
    n = size(points,1)
    # Sort the points by x-coordinate, resulting in a sequence p 1 , . . . , p n
    p = sort(points)
    # Put the points p_1 and p_2 in a list L_upper , with p_1 as the first point
    upper = [p[1], p[2]]

    for i in 3:n
        while size(upper,1) >= 2 && direction(upper[end-1], upper[end], p[i]) <= 0
            pop!(upper)
        end

        push!(upper,p[i])
    end

    lower = [p[end], p[end-1]]

    for i in n-2:-1:1
        while size(lower,1) >= 2 && direction(lower[end-1], lower[end], p[i]) <= 0
            pop!(lower)
        end

        push!(lower,p[i])
    end

    append!(upper, lower[2:end-1])
end
