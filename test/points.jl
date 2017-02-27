@testset "points" begin
    @testset "order" begin
        p1 = Point2D(1.0, 2.0)
        p2 = Point2D(1.1, 2.1)
        p3 = Point2D(1.1, 2.2)

        @test p1 < p2
    end

    @testset "conversion" begin
        point = [1.0 ; 2.0]
        p = convert(Point2D, point)
        p1 = Point2D(1.0, 2.0)
        p2 = Point2D(1.1, 2.1)
        @test p == p1
        @test p != p2
    end
end
