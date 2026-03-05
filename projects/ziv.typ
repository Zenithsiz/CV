#import "@preview/basic-resume:0.2.9": *
#import "/transl.typ": author, format_list, present, skills, technologies, transl

#project(
  name: "ziv",
  role: author,
  dates: dates-helper(start-date: "2025", end-date: present),
  url: "github.com/Zenithsiz/ziv",
)
- #context transl(
    en: [Created and maintain a high-performing image viewer, designed to handle millions of images & videos.],
    pt: [Criei e mantenho um visualizador de imagens de alto desempenho, desenhado para lidar com milhões de imagens e videos.],
  )
- #technologies: Rust, `ffmpeg (libavcodec)`
- #skills: #context transl(
    en: [Graphics programming, Asynchronous programming.],
    pt: [Programação Gráfica, Programação Assincrona],
  )
