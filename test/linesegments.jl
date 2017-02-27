@testset "linesegments" begin
    @testset "intersection" begin
        p1 = Point2D(1.0, 3.0)
        p2 = Point2D(3.0, 1.0)
        p3 = Point2D(1.0, 1.0)
        p4 = Point2D(3.0, 3.0)

        s1 = LineSegment2D(p1, p2)
        s2 = LineSegment2D(p3, p4)

        @test intersection(s1,s2)
    end
end
