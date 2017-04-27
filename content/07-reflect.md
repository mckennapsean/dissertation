# Reflecting on the Types of Research for the Framework {#sec:reflections}

<!-- TODO \sm{add details from these works, as needed, into appendix: derivations, design space?} -->

Role of design and research (cite some papers here), design can be conducted with research, overlapping nature (better wording).
Research is not just about papers, but about broader activities.
DSM, as a model for activities in a research process, and reflection and learning from ADR.
In data and infovis research projects, a primary goal and driver is the desired outcome, a specific paper type, of which Munzner identifies five: technique, design study, systems, evaluation, and model [Process and pitfalls].
In this dissertation, the primary type of research focused on is design study, application-driven work, designing and building tools for cyber security developers, analysts, and managers [].
In this chapter, we focus on other types of research, specifically technique and evaluation research.
For technique-driven research, we worked with a statistician to develop a new method for encoding correlation data in a projection coupled with an interactive system to explore these correlation projections [].
We reflect on this technique with regard to the design activities that lead to the creation of the technique, and we pinpoint some of the failures found in our application of existing design models at the time.
For evaluation driven research, we conducted an exploration into a design space for visual narrative story flow, coupled with some initial studies into a few types of flow like steppers and scrollers [].
In this work, the design activity framework can be used to frame the steps of experimental design, despite the inability of existing process models, such as the 9-stage framework for design studies, to map to this same process.
Overall, we found that the design activity framework can support thinking about other types of research beyond just design studies and problem-driven work that existing design models supported.

<!--At first, we pursued a design study in the field of biology, working with a research lab studying mouse genetics through correlation. With a statistics researcher, we created a new technique, the s-CorrPlot, to encode correlation of large datasets in a scatterplot [@mckenna2015s]. However, this project did not yield a successful design study, since our collaborators could not go beyond exploration or basic hypothesis generation with the tool. Upon reflection, we realized that we were driven to build this tool for a novel technique, not to support the needs of the researchers.-->





## Overview of s-CorrPlot Technique

The degree of correlation between variables is used in many data analysis
applications as a key measure of interdependence. The most common techniques
for exploratory analysis of pairwise correlation in multivariate datasets,
like scatterplot matrices and clustered heatmaps, however, do not scale well
to large datasets, either computationally or visually.  We present a new
visualization that is capable of encoding pairwise correlation between
hundreds of thousands variables, called the s-CorrPlot.  The s-CorrPlot 
encodes correlation spatially between variables as points on scatterplot
using the geometric structure underlying Pearson's correlation.
Furthermore, we extend the s-CorrPlot with interactive techniques
that enable animation of the scatterplot to new projections of the correlation
space, as illustrated in the companion video in Supplemental Materials. We
provide the s-CorrPlot technique and tool as an open-source R-package.

<!-- TODO links to video or tool? -->


### Visualizing Correlation

A standard approach to visualize correlation among many variables
are clustered heatmaps [@wilkinson2009history; @seo2002interactively].
Heatmaps directly visualize correlation between each
pair of variables using a color encoding and can highlight clusters of
variables reasonably well, but they also have a number of limitations: pairwise
correlation computations grow quadratically with the number of variables;
clustering is necessary for pattern detection, but the visual results are
highly variable based on the clustering technique [@seo2002interactively];
and accurate evaluation of correlation values is difficult due to the relative
nature of color perception [@Albers06Interaction; @Wong10Color].


As an alternative to heatmaps, the s-CorrPlot encodes correlation
structure spatially among many variables as points in a scatterplot. This encoding scales
to large datasets containing hundreds of thousands of variables and thousands of
observations, both computationally and visually. The visual encoding of the
s-CorrPlot  is based on an 2D orthogonal projection of standardized variables. The
observation that standardized variables lie on a unit hypersphere leads to a
derivation of a new exact spatial encoding of correlation through orthogonal
projection. The derivation of this new spatial encoding is described in
detail by McKenna et al. [], where the encoding is precise for a subset of all
pairwise correlations with error bounds for the rest.

<!-- TODO link in paper -->


### Statistical Correlation

This work focuses on Pearson's and Spearman's correlation coefficients, which
measure the strength of linear and monotonic relationships between two
variables, respectively.
Spearman's correlation coefficient is Pearson's correlation but on ranked
observations.
The s-CorrPlot can apply to either measure of correlation.


The s-CorrPlot is built off of a geometrical interpretation of correlation [@dempster1969elements; @rodgers1984linearly] where datasets are represented with a
**variable** as a vector in $\mathbb{R}^n$, where $n$ is the number of
**observations** per variable. In this interpretation, Pearson's correlation
is the cosine of the angle between the mean centered variables. Thus,
correlation can be spatially represented as $p$ points on
a $(n-2)$-sphere. In statistical language, the points on this sphere are termed
standardized variables.


Pearson's correlation coefficient, $\hat{r}$, for any two variables $\mathbf{x} =
\{x_1, \; \ldots \;, x_n\}$ and $\mathbf{y} = \{ y_1, \;
\ldots \;, y_n\}$ is
$$
\hat{r}(\mathbf{x}, \mathbf{y}) = \frac{ \sum_{i=1}^n (x_i
- \overline{x} ) (y_i - \overline{y} ) }{ \sqrt{\sum_{i=1}^n (x_i -
\overline{x} )^2} \sqrt{\sum_{i=1}^n (y_i - \overline{y} )^2} }
$$ {#eq:pearson}
where $\overline{x} = \frac{1}{n}\sum_{i=1}^{n} x_i$
and $\overline{y} = \frac{1}{n}\sum_{i=1}^{n} y_i$ are the means of $\mathbf{x}$
and $\mathbf{y}$, respectively.

By letting $\tilde{\mathbf{x}} = \{(x_1 -\overline{x}), \; \ldots \;, (x_n
-\overline{x})\}$ and $\tilde{\mathbf{y}} = \{(y_1 -\overline{y}), \; \ldots \;, (y_n
-\overline{y})\}$, [@eq:pearson] can be written as 
$$
  \hat{r}(\mathbf{x}, \mathbf{y}) = 
  \frac{
    \tilde{\mathbf{x}} \cdot \tilde{\mathbf{y}}
  }
  {
    \lVert \tilde{\mathbf{x}} \rVert \;\, \lVert \tilde{\mathbf{y}} \rVert 
  }
  \, ,
$$ {#eq:geom}
which highlights the geometrical nature of the correlation coefficient.


In this geometric interpretation, the standardization of a variable can be viewed as a
projection onto the **correlation sphere** --- a specific, $(n-2)$-sphere
embedded in $\mathbb{R}^n$.  To standardize a variable, first, the mean of the
variable is subtracted from each observation, and second, the variable is
scaled to unit length. For any two variables, their correlation is now directly
encoded through the relative positions of their **standardized variables**.
For any two standardized variables close to each other on the sphere, their dot
product, and thus their correlation coefficient, is close to $1$, and, for those
that lie on opposite sides, it will be $-1$.


### The s-CorrPlot Encoding

The s-CorrPlot represents each variable as a point on a
scatterplot as a novel way to encode and read correlation. The scatterplot results from an orthogonal projection of the standardized variables on the
multidimensional correlation sphere.
We
can project the standardized variables that lie on the correlation sphere onto a
plane through the origin. After this projection step, the variables can be
displayed as points on a scatterplot, the **s-CorrPlot**.


By
selecting two noncollinear standardized variables, $\mathbf{p}$ and $\mathbf{s}$ on
the correlation sphere, as illustrated by $U$ in [@fig:corr-plot], we can define such a plane through the origin.
Projecting all variables onto this plane collapses them to points on the s-CorrPlot.
The projection plane forms a circular intersection with the
selected points due to standardization. For any variable on this circular boundary, the correlation
to any other projected variable in the plane is encoded exactly.
Furthermore, error bounds exist to show that the approximation error increases slowly
as one moves away from the boundary [].

<!-- include link to paper -->


To graphically illustrate how the s-CorrPlot encodes correlation coefficients, we will
use a simple example of three variables with four observations.
Thus, the variables can be represented as vectors in $\mathbb{R}^4$, as with the
three standardized variables: $\mathbf{p}$, $\mathbf{s}$, and $\mathbf{x}$.
Because these standardized variables effectively reside in a 3D subspace of
$\mathbb{R}^4$, we can directly illustrate them in
[@fig:corr-plot](a). Next, the correlation sphere is intersected with a
projection plane, $U$, which is defined as going through the origin and
containing any two noncollinear variables $\mathbf{p}$ and $\mathbf{s}$.
Any standardized variable, $\mathbf{x}$, can be projected onto the plane $U$,
producing the 2D coordinates of the s-CorrPlot, shown in [@fig:corr-plot](b).

|     |     |     |     |
| --- | --- | --- | --- |
| ![](figures/scorrplot/correlation-sphere-projection.pdf){width="22%"} | ![](figures/scorrplot/projection-plane.pdf){width="22%"} | ![](figures/scorrplot/gridlines-p.pdf){width="22%"} | ![](figures/scorrplot/gridlines-s.pdf){width="26.5%"} |
| (a) | (b) | (c) | (d) |

![
  As an example, we show how three variables ($\mathbf{p}$, $\mathbf{s}$, and
  $\mathbf{x}$) with four observations each project onto the
  s-CorrPlot. For (a), we can illustrate our variables as standardized
  vectors on the correlation sphere, directly shown in 3D here.
  The correlation coefficient between any two variables is the dot product
  between their standardized vectors, such as with $\mathbf{p}$ and $\mathbf{x}$.
  With these two standardized variables, a $(n-2)$-flat $V$ is defined.
  The s-CorrPlot is defined by the projection plane $U$, containing both
  $\mathbf{p}$ and $\mathbf{s}$. Projection onto $U$ results in the s-CorrPlot as shown
  in (b), preserving correlation coefficients to both $\mathbf{p}$ and $\mathbf{s}$.
  In the s-CorrPlot, $V$ projects to a vertical line $V_U$ of equal
  correlation to $\mathbf{p}$. As such, (c) these vertical lines can be
  generalized as grid lines along $U$, denoting sets of equidistant correlation
  values to $\mathbf{p}$. Similarly, (d) grid lines to $\mathbf{s}$ can be shown.
](){#fig:corr-plot}

<!-- TODO check figure and turn into a single one? -->


Based on [@eq:geom], the correlation coefficient for two variables
is equal to the dot product between their vectors, such as for $\mathbf{p}$ and
$\mathbf{x}$ as illustrated in [@fig:corr-plot](a) and reflected in 
[@fig:corr-plot](b).
The vertical
grid lines in the s-CorrPlot, as in [@fig:corr-plot](c), specify values of equal correlation to $\mathbf{p}$ for any location in
the scatterplot.
Thus since $\mathbf{x}_U = U \, \mathbf{x}$, it
follows that, for any vector $\mathbf{x}$, the correlation to $\mathbf{p}$ is
directly encoded in the first component of the vector $\mathbf{x}_U$. In fact, any
vector that projects onto the line $V_U$, shown in
[@fig:corr-plot](b), has the same first component value, and thus the same
correlation to $\mathbf{p}$. The line $V_U$ corresponds to the projection of a
$(n-2)$-flat, $V$, onto $U$, where $V$ is orthogonal to $\mathbf{p}$ and contains
$\mathbf{x}$.  Thus, any vector that lies on $V$ is at the same distance from
$\mathbf{p}$, and thus has the same correlation value.  We illustrate this
$(n-2)$-flat $V$ in [@fig:corr-plot](a).  Moving $V$ along the vector
$\mathbf{p}$ produces grid lines as shown in [@fig:corr-plot](c).


This spatial encoding of correlation affords several
advantages. First, the geometric interpretation of correlation underlying the
s-CorrPlot enables multidimensional exploration techniques. Also, categorical
information for groups of variables can be encoded using color
or shape.
The projection, for $p$ variables, results in a $O(p)$ algorithm for
generating any single projection on the s-CorrPlot.
This linear computation for each scatterplot enables scaling to
large datasets at interactive frame rates.

<!-- TODO should I mention what is cut here and where to look for it? or include in Appendix? -->


### Interactive Exploration with the s-CorrPlot

We designed the s-CorrPlot
to incorporate both interaction and animation, unlike previous static
correlation encodings [@corsten:biometrics76; @trosset:jcgs05; @falissard:jcgs99].
In doing so, we illustrate how the s-CorrPlot can be paired with
multidimensional exploration techniques,
in the spirit of existing systems that employ user-driven
exploration [@swayne1998xgobi; @swayne2003ggobi; @Elmqvist08Rolling]. 
We encourage our readers to watch the short companion video in
Supplemental Materials to more easily understand the interactive
exploration aspect.

<!-- TODO link in video? -->


To better grasp multidimensional spaces, methods such as projection pursuit
[@huber1985projection; @Friedman87Exploratory], the grand tour method
[@Asimov85Grand], and combinations of both [@cook1995grand], explore
multidimensional space through sequences of 2D projections.
Several mature systems that implement these techniques include
xgobi [@swayne1998xgobi] and ggobi [@swayne2003ggobi], which provide
animations and interactions to let the user explore the complete space of
projections. The spatial encoding of correlation in the s-CorrPlot is also applicable
within any of these existing systems. Our implementation of the s-CorrPlot was
motivated by these exploratory techniques in order to create simple user-guided
tours, or animations between projections.


The s-CorrPlot
employs several simple
aspects of user-driven exploration to help examine the space of possible
projections. These interactions increase the effectiveness of the underlying
spatial encoding of the s-CorrPlot.
Users drive the exploration of the multidimensional correlation
sphere by selecting the variables $\mathbf{p}$ and $\mathbf{s}$ of interest. After
selecting a new variable, the s-CorrPlot is re-oriented through a
continuous animation of a rotation between the current projection and a
newly selected one, by interpolating across the vectors chosen for the
projection. In addition, we orient the viewer by projecting the primary vector
to a fixed location on the far-right of the s-CorrPlot and draw the gridlines
vertically with respect to this primary vector in order to preserve the
spatial encoding throughout the animation.


As with multidimensional exploration between projections, animating between
planes results in structures, such as clusters of correlated variables, moving
together (or apart) in 3D, giving the user a partial sense of the relationship
of the standardized variables in the multidimensional space. Perceptually,
the animation results in seeing "shape from
motion" [@ullman:visualMotion].





## Applying the s-CorrPlot Technique

<!-- TODO address Alex's comments throughout! -->

While creating the s-CorrPlot visualization technique, we worked in tandem with a biology collaborator to customize and tailor aspects of the data visualization tool for their problem: exploring correlation of gene expression datasets [@mckenna2015s].
Biologists often analyze the correlation of **gene expression** --- how much a
gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively]. This analysis seeks to answer questions pertaining
to the relationship of correlation between genes, especially how these
relationships change over time, across species, or in the presence of disease.


We worked with a biologist at the University of Utah
who is tackling similar questions, by studying genes that work together
in the brain in order to uncover genetic influences on brain
function, behavior, and disease. Using high-throughput sequencing, he
measures the expression level of genes in specific brain regions, even
to the detail of expression of **exons**, which are subparts of genes.
These measurements are taken in different strains of mice, which form
the observations in his dataset. The genes and exons are the variables
he wants to correlate and study.


His typical study involves several dozen observations, and approximately 10,000
to 100,000 variables.
\al{why so many? need to explain brain regions x genes}
The state-of-the-art approach for studying the
correlation of gene expression is weighted gene co-expression network analysis
(WGCNA) [@langfelder2008wgcna; @oldham2008functional; @winden2009organization].
WGCNA uses the correlation or similarity of genes to construct a weighted
network among all genes, and, using this network, genes that have a high degree
of topological overlap are grouped together into gene modules.  However, WGCNA
was designed to support only 10,000 to 20,000 genes so does not scale to the
size of datasets that our collaborator struggles to analyze.


|     |     |     |     |
| :-- | :-: | :-: | :-: |
|     | brain region #1 | brain region #2 | overlay |
| genes | ![](figures/scorrplot/gene-case-study-0.pdf){width="29%"} | ![](figures/scorrplot/gene-case-study-1.pdf){width="32%"} | ![](figures/scorrplot/gene-case-study-2.pdf){width="29%"} |
| exons | ![](figures/scorrplot/exon-case-study-0.pdf){width="29%"} | ![](figures/scorrplot/exon-case-study-1.pdf){width="31%"} | ![](figures/scorrplot/exon-case-study-2.pdf){width="29%"} |

![
  Two different biological datasets containing 76,730 (genes) and 120,000
  (exons) variables, with 22 and 37 observations, respectively. For each
  dataset, genes and exons have been colored according to two different
  brain regions in which the expression levels were measured, resulting in
  separate and combined overlay visualizations. The s-CorrPlot highlights different
  patterns of correlation in each of these brain regions, indicating
  potentially significant differences in their biological processes.
](){#fig:gene-case-study}

<!-- TODO convert table into one figure? or multiple? -->


At first, our collaborator explored 38,365 genes in two regions of the brain,
with 22 observations,
using the s-CorrPlot, shown in the top of [@fig:gene-case-study].
Since each gene can exist in either brain region, this results in a
combined total of 76,730 variables.
The gene expression levels measured in brain
region 1 are shown in red, and those in brain region 2 are shown in
blue. 
He first looked at just brain region 1 (red), orienting the
s-CorrPlot using the first principal component for these variables ---
he noted that no strong clusters emerged. He then did the same for just
brain region 2 (blue), and saw a significant grouping of correlated and
anticorrelated points, shown in the dashed ovals. Overlaying the two
brain regions confirmed interesting differences across the
correlation of all genes between these two regions. 
The differences in the correlation structure of the
data are anticipated to reflect differences in the cell types
and mechanisms that regulate
gene expression and the function of the two brain regions.


Using a different dataset, our collaborator visualized
the expression levels of different exons in the same two brain
regions, as shown in the bottom-half of
[@fig:gene-case-study].
\al{how many samples? why many samples? what are they?} \al{what is the
data? why do exon level comparison?} \al{is exon level useful, why?} \al{are you
comparing exons from different genes?}
This particular dataset contains
60,000 exons in each brain region, for a total of 120,000
variables, with each variable containing
37 observations. This is the first analysis of
correlation at the exon level that our collaborator is aware of,
perhaps due in part to the inability of existing tools to handle
these large datasets. With the s-CorrPlot,
our collaborator was able to interactively explore the many exons and
deduce that there are also region specific patterns at the exon level.
He noted that the patterns in the exon data are significantly
different than that for the data at the gene-level, indicating that
differences in these brain regions could be described at a smaller
scale than genes.


Taken as a whole,
the differences in the patterns between the two
regions of the brain are completely unknown and unexplored in our collaborator's
field. These observations have prompted him to design follow-up
computational studies and wet-lab experiments,
fueled by hypotheses, which are formed by his use
of the s-CorrPlot for correlation analysis.
He commented:
_"This is revealing new brain-region specific patterns in the data
  that we were completely unaware of. It offers the potential for deriving
  entirely new hypotheses about the functional relationships between genes
  in different brain regions that we can test experimentally."_
\al{clarify on what BR-specific patterns are?}





## Designing for a Novel Technique

Although the s-CorrPlot technique was created for a biology collaborator, this
project was not a typical visualization design study. Via the definition from
Sedlmair et al., visualization design studies focus on solving real-world
problems that collaborators face, and the contributions that come out of such
projects can stem from the problem characterization, abstraction, validated tool
that solves the problem, or reflections on the design process [@Sedlmair2012b].
However, the final design study outcome for the s-CorrPlot research project was
a contribution solely in the validation of the tool, primarily since this was a
novel technique with potential benefit to many other domains. Looking back on
this project, the final, validated tool did solve a problem our collaborators
faced, to better visualize and explore high-level features of their
multidimensional datasets. However, as a design study, this work did not really
solve a complete problem --- after finding interesting patterns in the tool, our
collaborators just had more questions and needed to run further lab studies to
find out more. As a result, while we followed a design process, joining
mid-project with an already fleshed out prototype limited the problem-finding
and potential solutions that were focused on.


With regard to the nested model, the contributions of the s-CorrPlot are in the
encoding, interaction, and algorithm levels. The nested model is useful when
determining which forms of validation are necessary to evaluate a visualization
system, and the types of evaluation we employed on the s-CorrPlot match these
levels: complexity analysis, interactive framerates with large datasets,
qualitative image analysis, and case studies with our collaborators. On the
other hand, with respect to a design study, there was a threat we squarely fell
upon at the problem characterization level: "wrong problem" [@Munzner2009].
Although this threat is characterized as "target users do not in fact have these
problems" [@Munzner2009], the real threat we faced was more that the problem on
its own was not the complete picture. The narrow focus to visualizing only one
type of dataset and one visualization technique did not capture the greater
problems that our domain experts were tackling. Although the s-CorrPlot tool did
solve one of these problems quite well, it left future questions and work for
domain experts. By failing to identify the appropriate set of problems and
challenges faced by domain experts, the project was less successful as a design
study. Thus, the "incomplete problem" threat we faced was not fully captured by
the nested model, and the design study could have been improved by fleshing out
the situation blocks more completely [@Meyer].


The design activity framework, as a process model, is able to capture multiple
aspects of the s-CorrPlot project more completely. For example, one focus of
this project was technique-driven: a new approach for visualization
multidimensional correlation. Unlike the 9-stage framework, the design activity
framework can apply to general visualization design, including technique-driven
work. For example, this project focused on the problem of visualizing
correlation in many dimensions where current techniques such as scatterplots,
scatterplot matrices, and heatmaps do not scale beyond the size of pixels in a
screen well and require a good clustering or order of variables. As a solution,
the s-CorrPlot visualizes variables as points and projects them down into 2-D,
supporting a compact representation of correlation that couples well with
interactive techniques. This approach requires interaction and exploration, but
it is one idea and implementation that was realized in a visualization system,
the s-CorrPlot tool built in R and OpenGL. It was then deployed to
collaborators, and successful case studies illustrate its utility for completely
visualizing large datasets. From the perspective of a design activity, this
technique and tool was built and deployed to solve this generalized problem
faced across various large datasets with 100k variables and 100's of dimensions.


The key research contributions of the s-CorrPlot project were the visualization
artifacts: the algorithm, encoding, interaction, and visualization tool which
realized these components. These stem from ideas that were built into a
prototype and then final visualization system, and decisions were made to
validate each over time. These concepts are all captured succinctly by the
design activity framework, and they overlap well with concepts from the nested
model. Lastly, this does highlight a difference with the design activity
framework, since ideas  can also involve algorithmic level decisions
[@Munzner2009] when performing technique-driven work.


By turning to the design activity framework, insights are formed about the
design process and application of the s-CorrPlot technique to design study work.
For the s-CorrPlot project, I joined the team after an initial prototype for an
idea was developed, and the 9-stage framework [@Sedlmair2012b] would classify
this as the "implement" step or the _make_ design activity. To improve the tool
to meet our collaborators' needs, I visited their lab weekly to observe the
types of research problems they faced, better understand the problem domain, and
see how they utilized the prototype, going back to the "discover" stage or
_understand_ activity. When we followed the 9-stage framework for design
studies, this project was not as successful as a design study. While this
project hit several pitfalls in the "design" stage [@Sedlmair2012b], the design
activities, specifically the _understand_ design worksheet, pinpoint several
missing factors from our design process: thinking about users' large-scale
problems or challenges, different types of datasets to solve this, and tasks to
perform on the data. Our design process focused on talking with and observing
users, and the prototype that we had deployed early on impacted the focus of
these interviews greatly. Thus, our reflections on the design activity framework
contribute new pitfalls for design studies:

- PF-33. not communicating information across teammates on the problem characterization and abstraction (discover / _understand_)
- PF-34. failing to identify the broad problem: solving small, specific problems may not be useful or impactful enough for domain experts (discover / _understand_)
- PF-35. not tailoring the system for domain experts but focusing on designing novel solutions (discover / _understand_)
- PF-36. deploying a prototype too early, thus limiting the problem and design focus (_deploy_)

<!-- TODO from Sam: NM is limited by low-level tasks. posits that iteration with DAF as a process model and diff. charac. and story, but think0-through reflection, as a research process, another iterative approach, is DAF for that? I explained no and that made sense to him. and then lack of pivot to non-design study work in NM/9SF, but type of reflection and evaluation shoudl change in this style of work. and then think of his weaver paper, hit a similar snag, related to the problem formulation (too general, so solution was not right for evaluation). thinks 34/35 are tied together. 36, may fall into wicked problems space. paper on fleshed out prototype may be worth citing here as well (ninas work?) and how do you provide solutions for htese pitfalls? worth thinking about! -->





## Exploring and Evaluating Visual Narrative Flow

Overview of design space, terminology, and pilot work.

<!-- previous section, very old content, so likely just cut, but check comments

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
-->





## Crowdsourced Evaluation for Visual Narrative Flow

Details of the full study we performed.





## Designing for Experiments and Evaluation

In framing and evaluating this design space for visual narrative flow, the
9-stage framework was not a good fit for our process because this was not a
design study. For example, there was no specific set of domain experts who
create these visualization stories that we worked with. While the motivation
behind this work was to support the creation of a tool to help these authors
write, develop, and combine visualizations and animated transitions with text,
the primary contribution of this project was to explore and better understand
the various possibilities and common practices in the overall design space.
Although this work was problem-driven, the user study evaluation method
produced guidelines, unlike the guidelines which design studies typically
produce from inner reflection and synthesis of the research and design process
[@Sedlmair2012b].


With regard to the nested model, evaluation and user studies connect to the
encoding and interaction levels, plus this model highlights one of the
limitations of this project. For example, the crowdsourced user study described
previously focused on establishing subjective comparisons of engagement using a
questionnaire to produce guidelines on different visualization encoding and
interaction techniques, coined visual narrative flows in the study. Various
iterations of the study occurred, some which tested usability and others which
more formally test other aspects such as reader-reported engagement. These forms
of validation match the given level, and they also correspond to some of the
contributions of this work, guidelines to utilize animation and visuals to
increase engagement of visual data stories. However, the nested model extension
[@Meyer] emphasizes that these visualization stories are built off of a series
of stacks of blocks, and that the guidelines are established and scoped to the
given set of blocks presented. As such, this model pinpoints a lack of
generalizibility in the reported study, since the findings and guidelines may be
localized to the given story.


On the other hand, the design activity framework can be utilized to model and
describe this experimental design process. As before, the experimental designer
must first approach a given problem to identify potential tasks, datasets to
utilize, what users to test, and then establish hypotheses for the research
problem. For example, this study explored aspects of visual narrative flow for a
single dataset and focused on reading and comprehension tasks to measure
engagement using a questionnaire. Many of these components correlate with
actions and visualization artifacts of the _understand_ activity. A similar
design process can be followed to create visualization artifacts used as
materials in a study, such as tools, techniques, systems, and instantiations of
a given encoding or interaction. This process will involve testing for usability
and feasibility, such as through the use of pilots, kind of like prototypes, in
the _make_ activity. The process may not perfectly overlap, but it shows that
the design activity framework can map to this style of formative or evaluative
work in ways that the 9-stage framework cannot. Additionally, the lack of
generalizability of these studies could be uncovered by reflecting on
assumptions and artifacts generated when forming the study, such as the single
story, one dataset, and subset of visualizations which is fixed throughout all
of the conditions.


Lastly, the design activity framework worksheets emphasize an importance to
documenting and recording the design process, and this overlaps with the
importance of reproducibility in experimental design. By recording visualization
artifacts and design decisions, a visualization designer can justify why
specific tasks, encodings, or interactions were selected or modified. In a
design study, this notion of reproducibility is not the goal, and Sedlmair et
al. promote the goal of transferability instead [@Sedlmair2012b] due to the
subjective nature of field work and based on methodologies of ethnography and
action research. However, in other types of design work, such as experimental
evaluation, it is of vital importance to include materials and decisions to
enable effective reproduction of the evaluation that is performed to validate,
or invalidate, its results. Providing enough of the materials and procedures
used in an experimental design allows others to build off of, refute, or refine
the guidelines established as a result of an evaluation approach. By capturing
more design decisions and visualization artifacts throughout the process, the
design activity framework can assist by increasing the reproducibility of a
project, and this can even provide benefit for application or problem-driven
work for others with similar challenges that want to build off of the
requirements, ideas, prototypes, and systems that been built and shared with the
research community.

<!-- TODO from Sam: sees the generalization from design to experimental design easily. metric for comparison of studies, and that this is a part of the process. could be that artifacts may be something else, like stories we had, or maybe tasks, but that they may be different for exp. design, or artifacts of that process, still a design process. and agrees that all this makes sense, including reproduc. stuff. -->

