#import "@preview/basic-resume:0.2.9": *
#import "/transl.typ": author, format_list, present, skills, technologies, transl

#project(
  name: "zbuild",
  role: author,
  dates: dates-helper(start-date: "2022", end-date: present),
  url: "github.com/Zenithsiz/zbuild",
)
- #context transl(
    en: [Created and maintain a high-performing build system with it's own language and powerful features.],
    pt: [Criei e mantenho um _build system_ de alto desempenho com a sua própria lingua e funcionalidades poderosas.],
  )
- #technologies: Rust
- #skills: #context transl(
    en: [Systems Programming, Asynchronous Programming, Language Parsing, Dependency Graphs, Parallel Programming.],
    pt: [Programação de sistemas, Programação Assincrona, Análise Sintática de Linguagem, Grafos de Dependencias, Programação Paralela.],
  )
