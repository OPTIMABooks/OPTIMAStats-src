<?xml version="1.0" encoding="UTF-8" ?>

<pretext xmlns:xi="http://www.w3.org/2001/XInclude" xml:lang="en-US">

  <docinfo>
    <latex-image-preamble>
      \usepackage{pgfplots}
      \usepackage{filecontents}
      \usepgfplotslibrary{fillbetween}
      \usetikzlibrary{patterns}
      \pgfmathdeclarefunction{gauss}{3}{%
        \pgfmathparse{1/(#3*sqrt(2*pi))*exp(-((#1-#2)^2)/(2*#3^2))}%
      }
      \pgfplotsset{compat=newest}
      \tikzset{
        hatch distance/.store in=\hatchdistance,
        hatch distance=10pt,
        hatch thickness/.store in=\hatchthickness,
        hatch thickness=2pt,
        hatch color/.store in=\hatchcolor,
        hatch color=black,
      }
      \pgfdeclarepatternformonly[%
        \hatchdistance,%
        \hatchthickness,%
        \hatchcolor%
      ]{flexible hatch}
      {\pgfqpoint{0pt}{0pt}}
      {\pgfqpoint{\hatchdistance}{\hatchdistance}}
      {\pgfpoint{\hatchdistance-1pt}{\hatchdistance-1pt}}%
      {
        \pgfsetlinewidth{\hatchthickness}
        \pgfpathmoveto{\pgfqpoint{0pt}{0pt}}
        \pgfpathlineto{\pgfqpoint{\hatchdistance}{\hatchdistance}}
        \pgfsetstrokecolor{\hatchcolor}%
        \pgfusepath{stroke}
      }
    </latex-image-preamble>
  </docinfo>

  <book>
    <title>OpenIntro Statistics</title>
    <frontmatter>
      <titlepage>
        <author>
          <personname>Jonathan Duncan, Ph.D.</personname>
          <department>Department of Mathematics</department>
          <institution>Walla Walla University</institution>
        </author>

        <date>
          <today/>
        </date>
      </titlepage>

      <colophon>
        <edition>1</edition>
        <copyright>
          <year>2008<ndash/>2020</year>
          <holder>Jonathan Duncan</holder>
          <minilicense>Creative Commons BY NC</minilicense>
          <shortlicense>
            Licensed to the public under Creative Commons Attribution-Noncommercial 4.0 International Public License
          </shortlicense>
        </copyright>
      </colophon>
      <preface>
        <p>This is a single section</p>
        </preface>

      </frontmatter>

      <chapter>
        <title>Section %%sec%%</title>
        <xi:include href="%%sec%%.ptx"/>
      </chapter>
    <backmatter>
    </backmatter>
  </book>
</pretext>
