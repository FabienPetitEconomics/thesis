# AMSE Thesis Template

<p align="justify">This thesis provides a template for Ph.D. students from the Aix-Marseille School of Economics, Aix-Marseille University. If you are interested in this template, it means that the end of your Ph.D. journey approaches. First of all, congratulations! This is the home straight! Do not hesitate to contribute to this template. This is a public good. People have spent time on that public good so that you can save some of yours, thus, please help the next AMSE generations by reporting bugs and/or by suggesting changes that you think would be useful to others.</p>

# List of directories and files

## General structure

The general structure of the thesis template is organized as follows.

| FILE/FOLDER                | DESCRIPTION |
| -------------------------- | -------------------------------------------------------------- |
| `chap1`                    | First chapter content |
| `chap2`                    | Second chapter content |
| `chap3`                    | Third chapter content |
| `fonts`                    | All fonts used |
| `logo`                     | All logos used|
| `tex`                      | Main files |
| `.latexmkrc`               | Latexmk script |
| `amse_these.cls`           | Configuration |
| `biblio.bib`               | Bibliography |
| `PETIT_Thesis.pdf`         | Thesis |
| `PETIT_Thesis_Defense.pdf` | Slides |
| `presentation.tex`         | Main file for slides |
| `t1fit.fd`                 | Font Definition script |
| `these.tex`                | Main file for thesis |

## Thesis structure

The structure of the thesis is called from the `these.tex` file. Dependencies are contained in the `tex` folder which is organized as follows.

| FILE/FOLDER             | DESCRIPTION                                                    |
| ----------------------- | -------------------------------------------------------------- |
| `abstract.tex`          | Abstract (EN) |
| `chap1.tex`             | First chapter structure |
| `chap2.tex`             | Second chapter structure |
| `chap3.tex`             | Third chapter structure |
| `conc.tex`              | Conclusion |
| `intro.tex`             | Introduction |
| `licence.tex`           | Licence |
| `remercie.tex`          | Acknowledgments |
| `resume.tex`            | Abstract (FR) |
| `titre.tex`             | Title page |

## Chapter structure

A chapter is called from the `these.tex` file. The structure of the chapter lies in the corresponding `tex` folder (e.g. `chap1.tex`), whereas the content of the chapter is contained in the corresponding folder (e.g. `chap1`). The structure of this latter folder is as follows.

| FILE/FOLDER             | DESCRIPTION                                                    |
| ----------------------- | -------------------------------------------------------------- |
| `chapters`              | Sections and content |
| `graphic`               | Figures (in image format) |
| `tabular`               | Tables (in tabular format) |

The figure and table environments are in the text.

# Instructions (aka the cooking recipe)

There are several recommended steps to move from your working papers to this thesis structure. This list is non-exhaustive. To add packages, insert your changes at the end of the `amse_these.cls` file.

## Title page (`titre.tex`)

- Add your numéro national de thèse (NNT) and numéro local (NL). Those can be found on  [https://depot-theses.univ-amu.fr/](https://depot-theses.univ-amu.fr/).
- Change the date of your thesis defense.
- Change the name (one Fabien Petit is enough, trust me) and the title.
- Check laboratories and research partners, check also the logos at the bottom. You can add logos into the `logo` folder. Adjust the minipage size if necessary.
- Double-check the institutions of your jury members.

## Licence (`licence.tex`)

- Change the names and the date.
- Sign it.

## Résumé/Abstract/Acknowledgements (`resume.tex`/`abstract.tex`/`remercie.tex`)

- You know what to do, you're a big grown Ph.D. student.

## Bibliography (`biblio.bib`)

- Insert **ALL** your references (from all chapters) into this bib file.
- Remove doi, url, isbn, eprint, and related fields for all references.
- Check duplicates.

## General Introduction/General Conclusion (`intro.tex`/`conclu.tex`)

- Normal citation: use `\citet` command
- Without parentheses citation: use `\citealt` command
- Pro tip: use CTRL+F to replace your `\cite{` with `\citet{`. Do not forget the `{`! (CTRL+F is Cmd+F for muggles)

## Any chapter (`chapX.tex`)

- This is where the fun begins!
- I would suggest you deal with one chapter at a time. Comment the `\input`command of chapters you're not working on when compiling, this should reduce the compilation time.
- In the `tex/chapX.tex` file, change the abstract, keywords, and JEL codes. Within the `refsection` environment, define the structure of your chapter. If you don't like working with chapters for your sections (i.e. you're a shambolic Ph.D. student), you can insert your whole paper in this file.
- You may have used the same labels in different chapters (e.g. `\label{eq:utility}`), thus, you want to avoid multiple references.
- For labels, replace `\label{` with `\label{chap1-`, `\ref{` with `\ref{chap1-`, and `\eqref{` with `\eqref{chap1-`.
- Check the `\input` location of your tables and figures. You may want to use the same trick for input, i.e. replace `\input{` with `\input{chap1/`.

# Acknowledgments

This template was copied and improved from [github.com/SCD-Aix-Marseille-Universite/latexamu](https://github.com/SCD-Aix-Marseille-Universite/latexamu) to fit AMSE students' needs. I am grateful to Julieta Peveri and Rosnel Sesssinou for their advice during the writing of this template.
