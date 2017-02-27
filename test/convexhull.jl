@testset "conxexhull" begin
    @testset "convexhull2" begin
        points = [27.0 68.0; 30.0 48.0; 43.0 67.0; 58.0 48.0; 58.0 27.0; 37.0 69.0; 38.0 46.0; 46.0 10.0; 61.0 33.0; 62.0 63.0; 63.0 69.0; 32.0 22.0; 45.0 35.0; 59.0 15.0; 5.0 6.0; 10.0 17.0; 21.0 10.0; 5.0 64.0; 30.0 15.0; 39.0 10.0; 32.0 39.0; 25.0 32.0; 25.0 55.0; 48.0 28.0; 56.0 37.0; 30.0 40.0; 37.0 52.0; 49.0 49.0; 52.0 64.0; 20.0 26.0; 40.0 30.0; 21.0 47.0; 17.0 63.0; 31.0 62.0; 52.0 33.0; 51.0 21.0; 42.0 41.0; 31.0 32.0; 5.0 25.0; 12.0 42.0; 36.0 16.0; 52.0 41.0; 27.0 23.0; 17.0 33.0; 13.0 13.0; 57.0 58.0; 62.0 42.0; 42.0 57.0; 16.0 57.0; 8.0 52.0; 7.0 38.0]
        hull = convexhull(points)
        @test size(hull,1) == 8
        @test hull == [[5.0, 6.0],[46.0,10.0],[59.0,15.0],[62.0,42.0],[63.0,69.0],[37.0,69.0],[27.0,68.0],[5.0,64.0]]
    end

    @testset "convexhull1" begin
        points = [GeometricStructures.Point2D{Float64}(27.0,68.0),
                    GeometricStructures.Point2D{Float64}(30.0,48.0),
                    GeometricStructures.Point2D{Float64}(43.0,67.0),
                    GeometricStructures.Point2D{Float64}(58.0,48.0),
                    GeometricStructures.Point2D{Float64}(58.0,27.0),
                    GeometricStructures.Point2D{Float64}(37.0,69.0),
                    GeometricStructures.Point2D{Float64}(38.0,46.0),
                    GeometricStructures.Point2D{Float64}(46.0,10.0),
                    GeometricStructures.Point2D{Float64}(61.0,33.0),
                    GeometricStructures.Point2D{Float64}(62.0,63.0),
                    GeometricStructures.Point2D{Float64}(63.0,69.0),
                    GeometricStructures.Point2D{Float64}(32.0,22.0),
                    GeometricStructures.Point2D{Float64}(45.0,35.0),
                    GeometricStructures.Point2D{Float64}(59.0,15.0),
                    GeometricStructures.Point2D{Float64}(5.0,6.0),
                    GeometricStructures.Point2D{Float64}(10.0,17.0),
                    GeometricStructures.Point2D{Float64}(21.0,10.0),
                    GeometricStructures.Point2D{Float64}(5.0,64.0),
                    GeometricStructures.Point2D{Float64}(30.0,15.0),
                    GeometricStructures.Point2D{Float64}(39.0,10.0),
                    GeometricStructures.Point2D{Float64}(32.0,39.0),
                    GeometricStructures.Point2D{Float64}(25.0,32.0),
                    GeometricStructures.Point2D{Float64}(25.0,55.0),
                    GeometricStructures.Point2D{Float64}(48.0,28.0),
                    GeometricStructures.Point2D{Float64}(56.0,37.0),
                    GeometricStructures.Point2D{Float64}(30.0,40.0),
                    GeometricStructures.Point2D{Float64}(37.0,52.0),
                    GeometricStructures.Point2D{Float64}(49.0,49.0),
                    GeometricStructures.Point2D{Float64}(52.0,64.0),
                    GeometricStructures.Point2D{Float64}(20.0,26.0),
                    GeometricStructures.Point2D{Float64}(40.0,30.0),
                    GeometricStructures.Point2D{Float64}(21.0,47.0),
                    GeometricStructures.Point2D{Float64}(17.0,63.0),
                    GeometricStructures.Point2D{Float64}(31.0,62.0),
                    GeometricStructures.Point2D{Float64}(52.0,33.0),
                    GeometricStructures.Point2D{Float64}(51.0,21.0),
                    GeometricStructures.Point2D{Float64}(42.0,41.0),
                    GeometricStructures.Point2D{Float64}(31.0,32.0),
                    GeometricStructures.Point2D{Float64}(5.0,25.0),
                    GeometricStructures.Point2D{Float64}(12.0,42.0),
                    GeometricStructures.Point2D{Float64}(36.0,16.0),
                    GeometricStructures.Point2D{Float64}(52.0,41.0),
                    GeometricStructures.Point2D{Float64}(27.0,23.0),
                    GeometricStructures.Point2D{Float64}(17.0,33.0),
                    GeometricStructures.Point2D{Float64}(13.0,13.0),
                    GeometricStructures.Point2D{Float64}(57.0,58.0),
                    GeometricStructures.Point2D{Float64}(62.0,42.0),
                    GeometricStructures.Point2D{Float64}(42.0,57.0),
                    GeometricStructures.Point2D{Float64}(16.0,57.0),
                    GeometricStructures.Point2D{Float64}(8.0,52.0),
                    GeometricStructures.Point2D{Float64}(7.0,38.0)]
        hull = convexhull(points)
        @test size(hull,1) == 8
        @test hull == [GeometricStructures.Point2D{Float64}(5.0,6.0),
                        GeometricStructures.Point2D{Float64}(46.0,10.0),
                        GeometricStructures.Point2D{Float64}(59.0,15.0),
                        GeometricStructures.Point2D{Float64}(62.0,42.0),
                        GeometricStructures.Point2D{Float64}(63.0,69.0),
                        GeometricStructures.Point2D{Float64}(37.0,69.0),
                        GeometricStructures.Point2D{Float64}(27.0,68.0),
                        GeometricStructures.Point2D{Float64}(5.0,64.0)]
    end

end
