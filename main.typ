#import "@preview/basic-resume:0.2.9": *
#import "/transl.typ": format_list, skills, technologies, transl

#let name = "Filipe Rodrigues"
#let location = context transl(
  en: "Lisbon, Portugal",
  pt: "Lisboa, Portugal",
)
#let email = "filipejacintorodrigues1@gmail.com"
#let github = "github.com/zenithsiz"
#let linkedin = "linkedin.com/in/filipe-rodrigues-82a574385/"
#let phone = "+351 966 687 674"
#let personal-site = "filipejr.com"
#let lang = sys.inputs.at("lang", default: none)
#assert.ne(lang, none, message: "You must set the language using `--input=lang=<language>`")
#let supported_langs = ("en", "pt")
#assert(
  supported_langs.contains(lang),
  message: "Unsupported language: \""
    + lang
    + "\", expected one of "
    + supported_langs.map(s => "\"" + s + "\"").join(", ", last: " or "),
)

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
  lang: lang,
)

#context transl(
  en: [*Systems programmer and network engineer*],
  pt: [*Programador de sistemas e engenheiro de redes*],
)
- #context transl(
    en: [Passionate to design, deploy, maintain, and improve systems, programs, and networks],
    pt: [Apaixonado por desenhar, instalar, gerir, e melhorar sistemas, programas e redes],
  )

== #context transl(
  en: [Education],
  pt: [Educação],
)

#let relevant_courses = context transl(
  en: "Relevant courses",
  pt: "Cursos relevantes",
)

#let bachelor_courses = context transl(
  en: format_list(
    [Electronics of Embedded Systems (18)],
    [Network Architectures (14)],
    [Computer Architecture (17)],
    [Operating Systems (18)],
    [Databases (15)],
    [Introduction to Algorithms and Data Structures (18)],
  ),
  pt: format_list(
    [Electrónica dos Sistemas Embebidos (18)],
    [Arquitecturas de Redes (14)],
    [Arquitectura de Computadores (17)],
    [Sistemas Operativos (18)],
    [Bases de Dados (15)],
    [Introdução aos Algoritmos e Estruturas de Dados (18)],
  ),
)

#let master_courses = context transl(
  en: format_list(
    [Advanced Network Security and Architectures (19)],
    [Performance Evaluation and Dimensioning of Networks and Systems (17)],
    [Traffic Engineering (18)],
    [Embedded Systems (18)],
    [Parallel and Heterogeneous Computing Systems (17)],
    [Software Security (17), 3D Programming (17)],
  ),
  pt: format_list(
    [Segurança e Arquiteturas Avançadas de Redes (19)],
    [Desempenho e Dimensionamento de Redes e Sistemas (17)],
    [Engenharia de Tráfego (18)],
    [Sistemas Embebidos (18)],
    [Computação em Sistemas Paralelos e Heterogéneos (17)],
    [Segurança em Software (17)],
    [Programação 3D (17)],
  ),
)

#edu(
  institution: [Instituto Superior Técnico],
  dates: dates-helper(start-date: "2019", end-date: "2024"),
  degree: context transl(
    en: [Bologna Degree in Telecommunications and Informatics Engineering],
    pt: [Licenciatura Bolonha em Engenharia de Telecomunicações e Informática],
  ),
  consistent: true,
)
- #context transl(
    en: [Average: 15/20],
    pt: [Média: 15/20],
  )
- #relevant_courses: #bachelor_courses

#edu(
  institution: [Instituto Superior Técnico],
  dates: dates-helper(start-date: "2024", end-date: none),
  degree: context transl(
    en: [Bologna Master Degree in Telecommunications and Informatics Engineering],
    pt: [Mestrado Bolonha em Engenharia de Telecomunicações e Informática],
  ),
  consistent: true,
)
- #context transl(
    en: [Average: 16.04/20],
    pt: [Média: 16.04/20],
  )
- #context transl(
    en: [Minor in *High-Performance Computing* (HPC)],
    pt: [Minor em *Computação de Elevado Desempenho* (CED)],
  )
- #relevant_courses: #master_courses

== #context transl(
  en: [Work Experience],
  pt: [Percurso Profissional],
)

== #context transl(
  en: [Projects],
  pt: [Projetos],
)

#include "projects/website.typ"
#include "projects/ziv.typ"
#include "projects/zbuild.typ"
#include "projects/rustidy.typ"

== #skills

#let advanced = context transl(
  en: [*Advanced*],
  pt: [*Avançado*],
)
#let intermediate = context transl(
  en: [*Intermediate*],
  pt: [*Intermédio*],
)
#let beginner = context transl(
  en: [*Beginner*],
  // TODO: Better translation?
  pt: [*Básico*],
)

#let programming_languages_prefix = context transl(
  en: [Programming Languages],
  pt: [Linguas de programação],
);
#let programming_languages = context format_list(
  [Rust (#advanced)],
  [C (#advanced, C89, C98, C11, C23)],
  [C++ (#advanced, C++11, C++17, C++20, C++23)],
  [Python (#intermediate)],
  [HTML/CSS (#intermediate)],
  [Makefile (#intermediate)],
  [Bash (#intermediate)],
)
- *#programming_languages_prefix*: #programming_languages

#let network_technologies_prefix = context transl(
  en: [Networking technologies & protocols],
  pt: [Tecnologias e Protocolos de _Networking_],
);
#let network_technologies = context format_list(
  [IP (IPv4 & IPv6)],
  [MPLS],
  [TCP (TLS & SSL)],
  [UDP (QUIC)],
  [RIP (RIPv2 & RIPng)],
  [OSPF (v2 & v3)],
  [BGP (iBGP & EBGP)],
)
- *#network_technologies_prefix*: #network_technologies

#let technologies_list = context format_list(
  [Git (#advanced)],
  [Unix/Linux (#intermediate)],
  [Nginx (#intermediate)],
  [WebGPU (#beginner)],
)
- *#technologies*: #technologies_list

#let languages = context transl(
  en: [Spoken/Written Languages],
  pt: [Linguas Faladas/Escritas],
);
#let languages_list = context format_list(
  [Portuguese (*#native*)],
  [English (*#fluent_written_spoken*)],
)

#let languages_list = context transl(
  en: context format_list(
    [Portuguese (*Native*)],
    [English (*Written/Spoken Fluent*)],
  ),
  pt: context format_list(
    [Portugues (*Nativo*)],
    [Inglês (*Fluente Escrito/Falado*)],
  ),
)

- *#languages*: #languages_list
