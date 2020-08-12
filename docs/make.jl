using GithubPages
using Documenter

makedocs(;
    modules=[GithubPages],
    authors="Cédric Belmant",
    repo="https://github.com/serenity4/GithubPages.jl/blob/{commit}{path}#L{line}",
    sitename="GithubPages.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://serenity4.github.io/GithubPages.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/serenity4/GithubPages.jl",
)
