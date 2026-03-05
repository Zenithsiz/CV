#import "@preview/basic-resume:0.2.9": *
#import "/transl.typ": author, format_list, present, skills, technologies, transl

#project(
  name: "rustidy",
  role: author,
  dates: dates-helper(start-date: "2025", end-date: present),
  url: "github.com/Zenithsiz/rustidy",
)
- #context transl(
    en: [Created and maintain a very configurable formatter for the rust language.],
    pt: [Criei e mantenho um formatador muito configuravel para a lingua Rust],
  )
- #technologies: Rust
- #skills: #context transl(en: [Language parsing.], pt: [Análise Sintática de Linguagem.])
