# Reflecting on the Types of Research for the Framework

\sm{focus on this for the implications or scoping of this work, role of projects}
\sm{include technique work, s-corrplot and failure of applied work}
\sm{include evaluative / formative work, the storytelling project}
\sm{scope out the details of these works}
\sm{add these details, as needed, into appendix}
\sm{focus on why DAF won't work / why it didn't}
\sm{how could you improve other projects with what we learned?}

\sm{Need intro...}

## Designing for a Novel Technique

In collaboration with a statistician and biology researcher, we created a new
scatterplot for encoding correlation, the s-CorrPlot [@mckenna2015s]. As shown
in {*@fig:scorrplot}, the s-CorrPlot in (b) encodes as points different patches
of the two images in (a) to enable measure of correlation exactly to a single
variable of interest, as opposed to the challenges brought by a cluttered
parallel coordinates plot (c) or clustered heatmap (d) for reading off these
values. The s-CorrPlot works by projecting the large data space into two
dimensions for a variable of interest, and further details can be found in the
discussion of the technique [@mckenna2015s]. The scatterplot approach enabled
useful interactions for exploring the plot and animating between projections of
the data. Several coordinated views were linked with the s-CorrPlot to
illustrate its utility and released open-source as an R-package.


![
  Multiple correlation visualizations for two datasets containing a total of
  over 130,000 variables, $9 \times 9$ patches of two images (a), with 81
  observations (pixels) each. The proposed s-CorrPlot (b) reveals correlation
  structures between variables such as the highly correlated image patches shown
  at the bottom corresponding to a horizontal shift of a vertical edge. These
  continuous variations visible in the s-CorrPlot are not emphasized in a
  parallel coordinates plot (c) or a clustered heatmap of pairwise correlation
  coefficients (d). In (b) and (c), color indicates membership of the displayed
  variable from the images in (a). In (d), purple indicates strong positive
  correlation and orange strong negative correlation. Only the s-CorrPlot can
  plot all variables, due to computational and screen-space limitations of (c)
  and (d).
](figures/scorrplot/corr-house.pdf){#fig:scorrplot width="100%"}
\al{explain more about it - what does position mean? example is not clear!}


We worked with a biologist at the University of Utah who analyzes the
correlation of **gene expression** --- how much a gene is turned on or off in a
cell --- across datasets to gain insights into gene functions and to infer novel
relationships between genes [@seo2002interactively]. However, state-of-the-art
approaches only support 10,000 to 20,000 genes [@langfelder2008wgcna;
@oldham2008functional; @winden2009organization] so they did not scale to the
size of datasets that our collaborator struggles to analyze.


Using the s-CorrPlot tool, we enabled our collaborator to analyze the
correlation of over 75,000 genes at once. \al{why so many? need to explain brain
regions x genes} This enabled quick insights into the general correlation
structure, such as that strong clusters emerged for one region of genes in the
brain. He anticipated that this data could reflect differences in the cell types
and mechanisms that regulate gene expression and the function of those two brain
regions. \al{how many samples? why many samples? what are they?} \al{what is the
data? why do exon level comparison?} \al{is exon level useful, why?} \al{are you
comparing exons from different genes?} With a second dataset of 120,000 exons,
or subparts of genes, our collaborator performed the first exon-level
correlation analysis that he is aware of, noting that patterns in the exon data
are significantly different than that for the data at the gene-level. This
implies that differences in these brain regions could be described at a smaller
scale than genes. These insights are completely unknown and unexplored in our
collaborator's field. He commented:
*"This is revealing new brain-region specific patterns in the data
  that we were completely unaware of. It offers the potential for deriving
  entirely new hypotheses about the functional relationships between genes
  in different brain regions that we can test experimentally."*
\al{clarify on what BR-specific patterns are?}


While this is very promising work for a novel technique, the s-CorrPlot also
failed our collaborator. When publishing this work, we had to focus on the novel
components and the mathematical description of why it worked. Even when sharing
this with our biology researchers in our collaborator's lab, we had difficulty
in explaining what any particular scatterplot meant. \al{neither do I!}
\sm{clearly, need to clean up this section. tough...} There were significant
barriers to others using this tool for exploring their large datasets, and even
when they could use the tool it still limited them by what features were
supported. This is because the tool was designed as a general-purpose
proof-of-concept of this novel projection technique. When reflecting on this
project, we realize that we had no formalized design process to ensure that user
needs were being fed back into the design of this tool, and that collaboration
with another researcher led to different contributions and a less useful tool
for our collaborators.

## Case Study: Data Storytelling Authoring Tool {#sec:story}

For this investigation, we have begun to analyze various techniques used by
authors on the web to convey data in a storytelling fashion using visualization.
From these techniques we observe, we will design a novel data storytelling
authoring tool according to strategies we have seen. For example, one such
technique is the varying use of either scrolling or stepping for navigating a
story with animated transitions. We will employ several quantitative studies to
evaluate the effectiveness of the storytelling techniques and the feasibility of
this authoring tool to support them. Finally, we plan to release the contents of
this authoring tool for others to utilize these data storytelling techniques in
their own work. By reflecting on our design process of this authoring tool, this
project will highlight the flexibility of the design activity framework by
capturing and describing a project with more rigorous quantitative user
evaluation of various visualization and interaction techniques.


Traditionally, stories in any medium are broken down into different states: from
chapters in a book to scenes in a movie. When consuming digital media on the
web, readers have control of how they navigate through visual stories. Two
common practices for navigating these stories are first an arrow-button or
stepper mechanic, clicking through multiple states one at a time, and the second
practice is to scroll down the page, revealing further states as they move onto
the page. In practice, visual storytelling seems to have utilized both of these
mechanics, from traditional scrolling webpages to stepping through annotations
on a chart to an interactively scrollable visual story. With a pilot study, we
found that users are split on favoring the scroller or stepper navigation
mechanics. This identified key features that are best in both: steppers are
simple for a mouse or keyboard, require less interaction, and sync better with
the text, while scrollers are more novel, provide a finer level of control, and
work better for trackpads or touchscreens with inertial scrolling.


As a result of this pilot study, we will create a storytelling authoring tool,
Steller, that combines both steppers and scrollers into a novel navigational
paradigm for readers to navigate a visual story. We have also found a
distinction between various visual story components and the dimensions of a
visual storytelling/reading experience, so this authoring tool will focus on the
novelty of these dimensions over the components which have been explored in
previous work [@Satyanarayan2014]. We will evaluate output of this authoring
tool by performing a user study on how effective this authoring tool is for
users to create their own visual stories. We hope to find that our authoring
tool is usable and meets this purpose and that novel navigational mechanics will
improve upon both the stepper and scroller design, to carve a path for more
effective way for visual storytelling.

\al{seems distant from the rest. how to tie in?}
\sm{what about talking about evaluation and its ties to the design process?
motivation for future design studies by formative work like this?}
