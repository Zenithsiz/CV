#import "@preview/basic-resume:0.2.9": *
#import "/transl.typ": author, format_list, present, skills, technologies, transl

#let homepage_link(contents) = link("https://filipejr.com", contents)
#let filipejr_gitea_link(contents) = link("https://gitea.filipejr.com", contents)

#let matrix_link = link("https://matrix.org/")[matrix]
#let gitea_link = link("https://gitea.com/")[Git/Gitea]
#let element_link = link("https://element.io/en")[Element + Element Call]
#let tuwunel_link = link("https://matrix-construct.github.io/tuwunel/")[Tuwunel]
#let keeweb_link = link("https://keeweb.info/")[KeePass / KeeWeb]

#project(
  name: context transl(
    en: [Personal website],
    pt: [Website pessoal],
  ),
  role: author,
  dates: dates-helper(start-date: "2023", end-date: present),
  url: "filipejr.com",
)
- #context transl(
    en: [Deployed and manage several self-hosted services on my own personal website, including #homepage_link[a homepage], #filipejr_gitea_link[personal git server], #matrix_link server and client, a password manager and others.],
    pt: [Instalo e administro vários servicos _self-hosted_ no meu website pessoal, incluindo #homepage_link[uma página inicial], #filipejr_gitea_link[servidor de git pessoal], servidor e cliente de #matrix_link, um gestor de _passwords_, entre outros.],
  )
- #technologies: #context transl(
    en: [#gitea_link (Git Server), #element_link (Matrix Web Client / RTC Server), #tuwunel_link (Matrix Server), #keeweb_link (Password manager)],
    pt: [#gitea_link (Servidor de git), #element_link (Client Web / Servidor RTC de Matrix), #tuwunel_link (Servidor de Matrix), #keeweb_link (Gestor de _passwords_)],
  )
- #skills: #context transl(en: [System/Web administration, Linux.], pt: [Administração de sistemas/web, Linux.])
