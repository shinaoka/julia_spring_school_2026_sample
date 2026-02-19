using Test
using MonteCarloPi

@testset "MonteCarloPi" begin
    @testset "estimate_pi returns reasonable value" begin
        result = estimate_pi(1_000_000)
        @test result ≈ π atol=0.01
    end

    @testset "estimate_pi with small N" begin
        result = estimate_pi(100)
        @test 2.0 < result < 4.0
    end
end
