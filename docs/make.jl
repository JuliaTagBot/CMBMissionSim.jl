if Base.HOME_PROJECT[] !== nothing
    Base.HOME_PROJECT[] = abspath(Base.HOME_PROJECT[])
end

push!(LOAD_PATH, joinpath("..", "src"))

using Documenter, CMBMissionSim

makedocs(modules = [CMBMissionSim],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    sitename = "CMBMissionSim.jl",
    pages = [
        "Introduction" => "index.md",
        "Pointing generation" => "genpointings.md"
    ],
    repo = "https://github.com/ziotom78/CMBMissionSim.jl/blob/{commit}{path}#L{line}",
    authors = "Maurizio Tomasi")

deploydocs(repo = "github.com/lspestrip/CMBMissionSim.jl.git",
)
