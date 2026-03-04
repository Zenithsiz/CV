#import "@preview/basic-resume:0.2.9": *

#let name = "Filipe Rodrigues"
#let location = "Lisbon, Portugal"
#let email = "filipejacintorodrigues1@gmail.com"
#let github = "github.com/zenithsiz"
#let linkedin = "linkedin.com/in/filipe-rodrigues-82a574385/"
#let phone = "+351 966 687 674"
#let personal-site = "filipejr.com"

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
)

*Systems programmer and network engineer*

- Passionate to design, deploy, maintain, and improve systems, programs, and networks.

== Education

#edu(
  institution: "Instituto Superior Técnico",
  dates: dates-helper(start-date: "2019", end-date: "2024"),
  degree: "Bologna Degree in Telecommunications and Informatics Engineering",
  consistent: true,
)

- Average: 15/20
- Relevant Courses: Electronics of Embedded Systems (18), Network Architectures (14), Computer Architecture (17), Operating Systems (18), Databases (15), Introduction to Algorithms and Data Structures (18)

#edu(
  institution: "Instituto Superior Técnico",
  dates: dates-helper(start-date: "2024", end-date: none),
  degree: "Bologna Master Degree in Telecommunications and Informatics Engineering",
  consistent: true,
)

- Average: 16.04/20
- Minor in *High-Performance Computing* (HPC)
- Relevant Courses: Advanced Network Security and Architectures (19), Performance Evaluation and Dimensioning of Networks and Systems (17), Traffic Engineering (18), Embedded Systems (18), Parallel and Heterogeneous Computing Systems (17), Software Security (17), 3D Programming (17)

== Work Experience

== Projects

#include "projects/website.typ"
#include "projects/ziv.typ"
#include "projects/zbuild.typ"
#include "projects/rustidy.typ"

== Skills
- *Programming Languages*: Rust (*Advanced*), C (*Advanced*, C89, C98, C11, C23), C++ (*Advanced*, C++11, C++17, C++20, C++23), Python (*Intermediate*), HTML/CSS (*Intermediate*), Makefile (*Intermediate*), Bash (*Intermediate*)
- *Technologies*: Git (*Advanced*), Unix/Linux (*Intermediate*), Nginx (*Intermediate*), WebGPU (*Beginner*)
- *Spoken/Written Languages*: Portuguese (*Native*), English (Written/Spoken *Fluent*)
