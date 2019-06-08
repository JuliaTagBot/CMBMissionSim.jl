using Documenter, CMBMissionSim

makedocs(;
    modules=[CMBMissionSim],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/ziotom78/CMBMissionSim.jl/blob/{commit}{path}#L{line}",
    sitename="CMBMissionSim.jl",
    authors="Maurizio Tomasi",
    assets=String[],
)

deploydocs(;
    repo="github.com/ziotom78/CMBMissionSim.jl",
)
