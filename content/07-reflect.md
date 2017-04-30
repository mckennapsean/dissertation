# Reflecting on Types of Visualization Research {#sec:reflections}

In practice, visualization design can have implications for research and be a
research activity in itself, such as multiple approaches to conduct research
through design in HCI [@Gaver2012; @Obrenovic2011] or the application of action
design research to the process of creating visualization systems [@McCurdy2016].
For example, the design study methodology model includes research aspects, such
as reflection and writing publications [@Sedlmair2012b], and action design
research would similarly emphasize such reflection and learning throughout the
visualization design process [@McCurdy2016]. It is important to think about
other types of research and design, beyond design studies or application-driven
work. Munzner identified a series of publication types for the field of data
visualization: technique, design study, systems, evaluation, and model
[@Munzner2008], which is similar to different kinds of research contributions as
in the field of HCI [@Wobbrock2012]. Throughout this dissertation, the primary
type of research explored is a design study or application-driven work, where we
designed and built tools for cyber security developers, analysts, and managers
[@McKenna2014; @McKenna2015; @mckenna2016].


In this chapter, we focus on the implications of the design activity framework
for other types of visualization research, specifically technique and evaluation
research. For technique-driven research, we worked with a statistician and
biology collaborators to develop a new method for encoding projected correlation
data coupled with an interactive system to explore these correlation projections
[@mckenna2015s]. We reflect on the application of this technique to our biology
collaborators' challenges, to explore large datasets which current visualization
methods for correlation did not scale appropriately. As a result of analyzing
this project through the design activity framework, we pinpoint some of the
pitfalls we fell into that previous visualization design models failed to
effectively capture.


For evaluation-driven research, we conducted an exploration and evaluation into
a design space for visual narrative story flow, coupled with some initial
studies into a few types of flow like steppers and scrollers [@mckenna2017]. In
this work, the design activity framework can be used to frame the steps of
experimental design, despite the inability of existing process models, such as
the nine-stage framework for design studies [@Sedlmair2012b], to map to this
same process. Overall, we found that the design activity framework can support
thinking about other types of research beyond just design studies and
problem-driven work unlike existing visualization design models.

<!-- TODO check and clean all refs from this chapter! -->





## Overview of s-CorrPlot Technique

The degree of correlation between variables is used in many data analysis
applications as a key measure of interdependence. The most common techniques for
exploratory analysis of pairwise correlation in multivariate datasets, like
scatterplot matrices and clustered heatmaps, however, do not scale well to large
datasets, either computationally or visually.  We present here a new
visualization technique that is capable of encoding pairwise correlation between
hundreds of thousands variables, called the s-CorrPlot [@mckenna2015s].  The
s-CorrPlot encodes correlation spatially between variables as points on
scatterplot using the geometric structure underlying Pearson's correlation.
Furthermore, we extend the s-CorrPlot with interactive techniques that enable
animation of the scatterplot to new projections of the correlation space, as
illustrated in the companion video in the Appendix. We provide the s-CorrPlot
technique and tool as an open-source R-package which we gave to our biology
collaborators studying correlation of gene expression.

<!-- APPENDIX: add links to video/tool? -->


### Visualizing Correlation

A standard approach to visualize correlation among many variables are clustered
heatmaps [@wilkinson2009history; @seo2002interactively]. Heatmaps directly
visualize correlation between each pair of variables using a color encoding and
can highlight clusters of variables reasonably well, but they also have a number
of limitations: pairwise correlation computations grow quadratically with the
number of variables; clustering is necessary for pattern detection, but the
visual results are highly variable based on the clustering technique
[@seo2002interactively]; and accurate evaluation of correlation values is
difficult due to the relative nature of color perception [@Albers06Interaction;
@Wong10Color].


As an alternative to heatmaps, the s-CorrPlot encodes correlation structure
spatially among many variables as points in a scatterplot. This encoding scales
to large datasets containing hundreds of thousands of variables and thousands of
observations, both computationally and visually. The visual encoding of the
s-CorrPlot  is based on an 2D orthogonal projection of standardized variables.
The observation that standardized variables lie on a unit hypersphere leads to a
derivation of a new exact spatial encoding of correlation through orthogonal
projection. The derivation of this new spatial encoding is described in detail
by McKenna et al. [@mckenna2015s], where the encoding is precise for a subset of
all pairwise correlations with error bounds for the rest.


### Statistical Correlation

This work focuses on Pearson's and Spearman's correlation coefficients, which
measure the strength of linear and monotonic relationships between two
variables, respectively. Spearman's correlation coefficient is Pearson's
correlation but on ranked observations. The s-CorrPlot can apply to either
measure of correlation.


The s-CorrPlot is built off of a geometrical interpretation of correlation
[@dempster1969elements; @rodgers1984linearly] where datasets are represented
with a **variable** as a vector in $\mathbb{R}^n$, where $n$ is the number of
**observations** per variable. In this interpretation, Pearson's correlation is
the cosine of the angle between the mean centered variables. Thus, correlation
can be spatially represented as $p$ points on a $(n-2)$-sphere. In statistical
language, the points on this sphere are termed standardized variables.


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


In this geometric interpretation, the standardization of a variable can be
viewed as a projection onto the **correlation sphere** --- a specific,
$(n-2)$-sphere embedded in $\mathbb{R}^n$.  To standardize a variable, first,
the mean of the variable is subtracted from each observation, and second, the
variable is scaled to unit length. For any two variables, their correlation is
now directly encoded through the relative positions of their **standardized
variables**. For any two standardized variables close to each other on the
sphere, their dot product, and thus their correlation coefficient, is close to
$1$, and, for those that lie on opposite sides, it will be $-1$.


### The s-CorrPlot Encoding

The s-CorrPlot represents each variable as a point on a scatterplot as a novel
way to encode and read correlation. The scatterplot results from an orthogonal
projection of the standardized variables on the multidimensional correlation
sphere. We can project the standardized variables that lie on the correlation
sphere onto a plane through the origin. After this projection step, the
variables can be displayed as points on a scatterplot, the **s-CorrPlot**.


By selecting two noncollinear standardized variables, $\mathbf{p}$ and
$\mathbf{s}$ on the correlation sphere, as illustrated by $U$ in
[@fig:corr-plot], we can define such a plane through the origin. Projecting all
variables onto this plane collapses them to points on the s-CorrPlot. The
projection plane forms a circular intersection with the selected points due to
standardization. For any variable on this circular boundary, the correlation to
any other projected variable in the plane is encoded exactly. Furthermore, error
bounds exist to show that the approximation error increases slowly as one moves
away from the boundary [@mckenna2015s].


To graphically illustrate how the s-CorrPlot encodes correlation coefficients,
we will use a simple example of three variables with four observations. Thus,
the variables can be represented as vectors in $\mathbb{R}^4$, as with the three
standardized variables: $\mathbf{p}$, $\mathbf{s}$, and $\mathbf{x}$. Because
these standardized variables effectively reside in a 3D subspace of
$\mathbb{R}^4$, we can directly illustrate them in [@fig:corr-plot](a). Next,
the correlation sphere is intersected with a projection plane, $U$, which is
defined as going through the origin and containing any two noncollinear
variables $\mathbf{p}$ and $\mathbf{s}$. Any standardized variable,
$\mathbf{x}$, can be projected onto the plane $U$, producing the 2D coordinates
of the s-CorrPlot, shown in [@fig:corr-plot](b).


![
  As an example, we show how three variables ($\mathbf{p}$, $\mathbf{s}$, and
  $\mathbf{x}$) with four observations each project onto the s-CorrPlot. For
  (a), we can illustrate our variables as standardized vectors on the
  correlation sphere, directly shown in 3D here. The correlation coefficient
  between any two variables is the dot product between their standardized
  vectors, such as with $\mathbf{p}$ and $\mathbf{x}$. With these two
  standardized variables, a $(n-2)$-flat $V$ is defined. The s-CorrPlot is
  defined by the projection plane $U$, containing both $\mathbf{p}$ and
  $\mathbf{s}$. Projection onto $U$ results in the s-CorrPlot as shown in (b),
  preserving correlation coefficients to both $\mathbf{p}$ and $\mathbf{s}$. In
  the s-CorrPlot, $V$ projects to a vertical line $V_U$ of equal correlation to
  $\mathbf{p}$. As such, (c) these vertical lines can be generalized as grid
  lines along $U$, denoting sets of equidistant correlation values to
  $\mathbf{p}$. Similarly, (d) grid lines to $\mathbf{s}$ can be shown.
](figures/scorrplot/s-corrplot.pdf){#fig:corr-plot width="95%"}


Based on [@eq:geom], the correlation coefficient for two variables is equal to
the dot product between their vectors, such as for $\mathbf{p}$ and $\mathbf{x}$
as illustrated in [@fig:corr-plot](a) and reflected in [@fig:corr-plot](b). The
vertical grid lines in the s-CorrPlot, as in [@fig:corr-plot](c), specify values
of equal correlation to $\mathbf{p}$ for any location in the scatterplot. Thus
since $\mathbf{x}_U = U \, \mathbf{x}$, it follows that, for any vector
$\mathbf{x}$, the correlation to $\mathbf{p}$ is directly encoded in the first
component of the vector $\mathbf{x}_U$. In fact, any vector that projects onto
the line $V_U$, shown in [@fig:corr-plot](b), has the same first component
value, and thus the same correlation to $\mathbf{p}$. The line $V_U$ corresponds
to the projection of a $(n-2)$-flat, $V$, onto $U$, where $V$ is orthogonal to
$\mathbf{p}$ and contains $\mathbf{x}$.  Thus, any vector that lies on $V$ is at
the same distance from $\mathbf{p}$, and thus has the same correlation value.
We illustrate this $(n-2)$-flat $V$ in [@fig:corr-plot](a).  Moving $V$ along
the vector $\mathbf{p}$ produces grid lines as shown in [@fig:corr-plot](c). For
further details about the mathematical derivation of the s-CorrPlot, including
the uncertainty bounds and density estimation technique, please see the original
publication [@mckenna2015s].


This spatial encoding of correlation affords several advantages. First, the
geometric interpretation of correlation underlying the s-CorrPlot enables
multidimensional exploration techniques. Also, categorical information for
groups of variables can be encoded using color or shape. The projection, for $p$
variables, results in a $O(p)$ algorithm for generating any single projection on
the s-CorrPlot. This linear computation for each scatterplot enables scaling to
large datasets at interactive frame rates.


### Interactive Exploration with the s-CorrPlot

We designed the s-CorrPlot to incorporate both interaction and animation, unlike
previous static correlation encodings [@corsten:biometrics76; @trosset:jcgs05;
@falissard:jcgs99]. In doing so, we illustrate how the s-CorrPlot can be paired
with multidimensional exploration techniques, in the spirit of existing systems
that employ user-driven exploration [@swayne1998xgobi; @swayne2003ggobi;
@Elmqvist08Rolling]. We encourage our readers to watch the short companion video
in the Appendix to more easily understand the interactive exploration aspect.

<!-- APPENDIX: link in video -->


To better grasp multidimensional spaces, methods such as projection pursuit
[@huber1985projection; @Friedman87Exploratory], the grand tour method
[@Asimov85Grand], and combinations of both [@cook1995grand], explore
multidimensional space through sequences of 2D projections. Several mature
systems that implement these techniques include xgobi [@swayne1998xgobi] and
ggobi [@swayne2003ggobi], which provide animations and interactions to let the
user explore the complete space of projections. The spatial encoding of
correlation in the s-CorrPlot is also applicable within any of these existing
systems. Our implementation of the s-CorrPlot was motivated by these exploratory
techniques in order to create simple user-guided tours, or animations between
projections.


The s-CorrPlot employs several simple aspects of user-driven exploration to help
examine the space of possible projections. These interactions increase the
effectiveness of the underlying spatial encoding of the s-CorrPlot. Users drive
the exploration of the multidimensional correlation sphere by selecting the
variables $\mathbf{p}$ and $\mathbf{s}$ of interest. After selecting a new
variable, the s-CorrPlot is re-oriented through a continuous animation of a
rotation between the current projection and a newly selected one, by
interpolating across the vectors chosen for the projection. In addition, we
orient the viewer by projecting the primary vector to a fixed location on the
far-right of the s-CorrPlot and draw the gridlines vertically with respect to
this primary vector in order to preserve the spatial encoding throughout the
animation.


As with multidimensional exploration between projections, animating between
planes results in structures, such as clusters of correlated variables, moving
together (or apart) in 3D, giving the user a partial sense of the relationship
of the standardized variables in the multidimensional space. Perceptually,
the animation results in seeing "shape from
motion" [@ullman:visualMotion].





## Applying the s-CorrPlot Technique

While creating the s-CorrPlot visualization technique, we worked in tandem with
a biology collaborator to customize and tailor aspects of the data visualization
tool for their problem: exploring correlation of gene expression datasets
[@mckenna2015s]. Biologists often analyze the correlation of **gene expression**
--- how much a gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively]. This analysis seeks to answer questions pertaining to
the relationship of correlation between genes, especially how these
relationships change over time, across species, or in the presence of disease.


We worked with a biologist at the University of Utah who is tackling similar
questions, by studying genes that work together in the brain in order to uncover
genetic influences on brain function, behavior, and disease. Using
high-throughput sequencing, he measures the expression level of genes in
specific brain regions, even to the detail of expression of **exons**, which are
subparts of genes. These measurements are taken in different strains of mice,
which form the observations in his dataset. The genes and exons are the
variables he wants to correlate and study.


His typical study involves several dozen observations, and approximately 10,000
to 100,000 variables, where each variable is a measurement of expression from a
gene or exon in a brain region with observations across different subjects. The
state-of-the-art approach for studying the correlation of gene expression is
weighted gene co-expression network analysis (WGCNA) [@langfelder2008wgcna;
@oldham2008functional; @winden2009organization]. WGCNA uses the correlation or
similarity of genes to construct a weighted network among all genes, and, using
this network, genes that have a high degree of topological overlap are grouped
together into gene modules.  However, WGCNA was designed to support only 10,000
to 20,000 genes so does not scale to the size of datasets that our collaborator
struggles to analyze.


![
  Two different biological datasets containing 76,730 (genes) and 120,000
  (exons) variables, with 22 and 37 observations, respectively. For each
  dataset, genes and exons have been colored according to two different brain
  regions in which the expression levels were measured, resulting in separate
  and combined overlay visualizations. The s-CorrPlot highlights different
  patterns of correlation in each of these brain regions due to the gene and
  exon expression patterns varying on a global scale, i.e., the blue and red
  regions of these plots show different patterns, distributions, and clusters
  across the two regions. This indicates potentially significant differences in
  their biological processes.
](figures/scorrplot/case-studies.pdf){#fig:gene-case-study width="95%"}


At first, our collaborator explored 38,365 genes in two regions of the brain,
with 22 observations, using the s-CorrPlot, shown in the top of
[@fig:gene-case-study]. Since each gene can exist in either brain region, this
results in a combined total of 76,730 variables. The gene expression levels
measured in brain region 1 are shown in red, and those in brain region 2 are
shown in blue. He first looked at just brain region 1 (red), orienting the
s-CorrPlot using the first principal component for these variables --- he noted
that no strong clusters emerged. He then did the same for just brain region 2
(blue), and saw a significant grouping of correlated and anticorrelated points,
shown in the dashed ovals. Overlaying the two brain regions confirmed
interesting differences across the correlation of all genes between these two
regions. The differences in the correlation structure of the data are
anticipated to reflect differences in the cell types and mechanisms that
regulate gene expression and the function of the two brain regions.


Using a different dataset, our collaborator visualized the expression levels of
120,000 exons across the same two brain regions, as shown in the bottom-half of
[@fig:gene-case-study]. This particular dataset contains 60,000 exons in each
brain region, for a total of 120,000 variables, with each variable containing 37
observations. This is the first analysis of correlation at the exon level that
our collaborator is aware of, perhaps due in part to the inability of existing
tools to handle these large datasets. With the s-CorrPlot, our collaborator was
able to interactively explore the many exons and deduce that there are also
region specific patterns at the exon level. He noted that the patterns in the
exon data are significantly different than that for the data at the gene-level,
indicating that differences in these brain regions could be described at a
smaller scale than genes.


Taken as a whole, the differences in the patterns between the two regions of the
brain are completely unknown and unexplored in our collaborator's field. These
observations have prompted him to design follow-up computational studies and
wet-lab experiments, fueled by hypotheses, which are formed by his use of the
s-CorrPlot for correlation analysis. Based on [@fig:gene-case-study], he
commented:
_"This is revealing new brain-region specific patterns in the data
  that we were completely unaware of. It offers the potential for deriving
  entirely new hypotheses about the functional relationships between genes
  in different brain regions that we can test experimentally."_





## Designing for a Novel Technique

Although the s-CorrPlot technique was created for a biology collaborator, this
project was not a typical visualization design study. Via the definition from
Sedlmair et al., visualization design studies focus on solving real-world
problems that collaborators face, and the contributions that come out of such
projects can stem from the problem characterization, abstraction, validated
tool, or reflections on the design process [@Sedlmair2012b]. However, the final
design study outcome for the s-CorrPlot research project was a contribution
solely in the validation of the tool, primarily since this was a novel technique
with potential benefit to many other domains. Looking back on this project, the
final, validated tool did solve a problem our collaborators faced, to better
visualize and explore high-level features of their multidimensional datasets.
However, as a design study, this work did not really solve a complete problem
--- after finding interesting patterns in the tool, our collaborators just had
more questions and needed to run further lab studies to find out more. As a
result, while we followed a design process, joining mid-project with an already
fleshed out prototype limited the problem-finding and potential solutions that
were focused on.


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
domain experts outside of our tool. By failing to identify the appropriate set
of problems and challenges broadly, the project was less successful as a design
study. Thus, the "incomplete problem" threat we faced was not fully captured by
the nested model, and the design study could have been improved by fleshing out
the situation blocks [@Meyer] more completely.


The design activity framework, as a process model, is able to capture multiple
aspects of the s-CorrPlot project. For example, one focus of this project was
technique-driven: a new approach for visualizing multidimensional correlation.
Unlike the nine-stage framework, we discovered that the design activity
framework can apply to general visualization design, including technique-driven
work. For example, this project focused on the problem of visualizing
correlation in many dimensions where current techniques such as scatterplots,
scatterplot matrices, and heatmaps do not scale to many variables. As a
solution, the s-CorrPlot visualizes variables as points and projects them down
into 2D, supporting a compact representation of correlation that couples well
with interactive techniques. This approach requires interaction and exploration,
but it is one idea and implementation that was realized in a visualization
system, the s-CorrPlot tool built in R and OpenGL. It was then deployed to
collaborators, and successful case studies illustrate its utility for completely
visualizing large datasets. From the perspective of a design activity, this
technique and tool was built and deployed to solve this generalized problem
faced across various large datasets with 100k variables and 100's of dimensions.


The key research contributions of the s-CorrPlot project were the visualization
artifacts: the algorithm, encoding, interaction, and visualization tool which
realized these components. These artifacts stem from ideas that were built into
a prototype and then final visualization system, and decisions were made to
validate each over time. These concepts are all captured succinctly by the
design activity framework, and they overlap well with concepts from the nested
model. Lastly, this does highlight a difference with the design activity
framework, since ideas from technique-driven research can also involve
algorithmic level decisions [@Munzner2009].


By turning to the design activity framework, insights are formed about the
design process and application of the s-CorrPlot technique to design study work.
For the s-CorrPlot project, I joined the team after an initial prototype for an
idea was developed, and the nine-stage framework [@Sedlmair2012b] would classify
this as the "implement" step or the _make_ design activity. To improve the tool
to meet our collaborators' needs, I visited their lab weekly to observe the
types of research problems they faced, better understand the problem domain, and
see how they utilized the prototype. This is like going back to the "discover"
stage or _understand_ activity. When we followed the nine-stage framework for
design studies, this project was not as successful as a design study due to an
incomplete problem focus and falling into several problems in the "design" stage
[@Sedlmair2012b]. However, when reflecting on the design activities and
specifically the _understand_ worksheet, we are able to pinpoint several missing
factors from our design process: thinking about users' large-scale problems or
challenges, different types of datasets to solve this, and tasks to perform on
the data. Our design process focused on talking with and observing users, and
the prototype that we had deployed early on impacted the focus of these
interviews greatly. Rather than better understanding the bigger picture and
problems faced by our collaborators, we focused on the details of iterating a
prototype visualization to solve just a single problem. Thus, our reflections on
the design activity framework contribute new pitfalls for design studies:

- PF-33. not communicating information across teammates on the problem characterization and abstraction (discover / _understand_)
- PF-34. failing to identify the broad problem: solving small, specific problems may not be useful or impactful enough for domain experts (discover / _understand_)
- PF-35. not tailoring the system for domain experts but focusing on designing novel solutions (discover / _understand_)
- PF-36. deploying a prototype too early, thus limiting the problem and design focus --- instead aim to develop technology probes [@Hutchinson2003a] to shape design requirements, abstractions, and ideas (_deploy_)





## Exploring and Evaluating Visual Narrative Flow

Next, we explore an application of evaluation research for comparing different
visualizations in the space of visual data stories. Many factors can shape the
flow of visual data-driven stories, and thereby the way readers experience those
stories. Through the analysis of 80 existing stories found on popular websites,
we systematically investigated and identified seven characteristics of these
stories, which we name "flow-factors," and we illustrated how they feed into the
broader concept of "visual narrative flow" [@mckenna2017]. These flow-factors
are navigation input, level of control, navigation progress, story layout, role
of visualization, story progression, and navigation feedback. We describe a
series of studies we conducted, which shed initial light on how different visual
narrative flows impact the reading experience. We report on two exploratory
studies, in which we gathered reactions and preferences of readers for stepper-
vs. scroller-driven flows. We then report on a crowdsourced study with 240
participants, in which we explore the effect of the combination of different
flow-factors on readers' engagement. Our results indicate that visuals and
navigation feedback (e.g., static vs. animated transitions) have an impact on
readers' engagement, while level of control (e.g., discrete vs. continuous) may
not.


### Visual Narrative Flow Motivation

Data-driven stories that tightly integrate visualizations have become a popular
communication device in a variety of fields [@Segel2010]. This has led the
visualization research community to investigate the design factors that
practitioners employ to craft narratives, from visual & interactive techniques
[@Segel2010; @Stolper2016] to specific genres [@Amini2015; @Amini2016;
@bach2016telling]. While specific knowledge on these factors is growing, there
is still little understanding of which are predominant for, and how they may be
combined to create effective **_visual narrative flows_** --- which combine a
reader's input with story components and congruent visual feedback that tell the
story matching the author's intent and voice ([@fig:flow]).


An ongoing informal debate on visual narrative flow centers around the effects
of allowing readers to navigate through data-driven stories using either a
click/tap input or a scroll input. We refer to this debate as the _stepper vs.
scroller debate_ (illustrated in [@fig:ml]). Clicking to step through a story is
like a slideshow, while scrolling is akin to panning up and down a long
document. Practitioners from The New York Times recently advocate for scrolling
because their readers tend not to fully consume stories that are delivered with
steppers [@nyt; @nyt2]. Others advocate for steppers, as they point out several
potential issues pertaining to the use of scrolling (e.g., "scrolljacking")
[@scourge].


![
  Here we illustrate high-level characteristics impacting visual narrative
  flow: a reader's interactions with the story, the mechanisms tying the story
  components into a narrative, and the different forms of visual feedback
  perceived by the reader as they navigate, read, and interact with the visual
  data-driven story.
](figures/narrative-flow/narrative-flow.pdf){#fig:flow width="80%"}


While navigation input may influence the flow and reading experience of a
data-driven story, diverse examples from The Guardian [@guardian] and The Wall
Street Journal's Custom Studios team [@wsj] suggest that there is more to
shaping a visual narrative flow than just input. Furthermore, there is a limited
understanding of how different flows might influence reading experiences. Here,
we systematically examine what story design aspects are used by practitioners,
which we name **_flow-factors_**, that encompass reader input, story components,
and visual feedback as shown in [@fig:flow]. We then describe a series of
studies we conducted to provide initial empirical evidence on how different
combinations of flow-factors, i.e., how different visual narrative flows, can
impact reading experiences. We focus specifically on readers' reactions,
preferences, usability, and level of engagement with a visual, interactive,
data-driven story because these aspects are important and known outcomes of
readers' experiences with technology.


![
  These two examples highlight different visual narrative flow in a data
  visualization story. The scroller shown in (a), by Yee and Chu, walks through
  a story to teach a basic concept of machine learning [@ml], where scrolling
  not only moves down the page but moves visualizations and continuously
  controls their linked animated transitions. We transformed this into a stepper
  narrative flow, shown in (b) which uses buttons for navigating the story
  across the story text with timed animated transitions.
](figures/narrative-flow/scroller-stepper.pdf){#fig:ml width="100%"}


### Design Space for Visual Narrative Flow

Here we introduce seven factors that contribute to visual narrative flow along
with illustrations of the various properties for each flow-factor as in
[@fig:design-space]. These factors were identified through a series of
individual consumption sessions, group discussions, and informal coding of a
corpus containing 80 stories [@mckenna2017], referred to with _S-#_. This design
space framework captures aspects of flow like a reader's input, connection of
story components, and the visual feedback. Previous work by Segel and Heer
focused on high-level story components (e.g., animation, progress bars) along
with story genres and narrative approaches [@Segel2010]. However, these
flow-factors build upon their work by breaking down these properties to
characterize and explore a broader range of visual data-driven stories than
otherwise initially possible.


![
  The seven flow-factors for visual narrative flow were identified by analyzing
  and coding a corpus of 80 visual data stories. Each flow-factor contains
  multiple properties which are not necessarily mutually exclusive and hybrids
  can and often do occur in data visualization stories created by authors.
](figures/narrative-flow/design-space.pdf){#fig:design-space width="100%"}

<!-- ThesisOffice: check figure placement, should be within 3 pages of ref. -->


**Navigation input** is how a reader interacts to progress through a narrative
visualization. For example, an author can choose to use scrolling input to move
down a document, like in _S-51_ in the story corpus [@mckenna2017]. Another
input mechanism is a button, which corresponds to a click, tap, or keyboard
press e.g., _S-4_. Another element, though rare, is a slider, where a reader can
select and drag to choose where they wish to be in the story. A common theme
across all flow-factors is that multiple properties can be combined in a story.
For example, _S-79_ combines both buttons with a slider in a timeline chart.
Such a hybrid approach shows how the line between a stepper and scroller does
not need to be rigid in terms of reader input.


**Level of control** corresponds to how much control a reader has over the
motion or animated transitions of story components. For these levels of control,
a reader can have _discrete_ control if they trigger motion playback like the
scroller in _S-2_, or _continuous_ control if they can play through the
keyframes or time points of that motion like the machine learning scroller _S-1_
and in [@fig:ml]. It is also possible for a _hybrid_ style to combine or support
aspects of both, such as the scrolling story in _S-8_ with a timeline plot where
points can be clicked to navigate. We break down levels of control based on the
following categories: text, visualizations, and animated transitions. Text and
visualizations can move or fade in or out within the page, and this motion is
described by level of control for those elements. An animated transition is
defined here as more specific, data-relevant motion that preserves data context
across or within visualizations.


**Navigation progress** describes how the reader perceives their placement
within the entire story. Not all stories may show navigation progress, relying
on the implied progress of a scrollbar. Otherwise, stories may showcase this
progress in a variety of ways. A common way is to represent steps with dots like
the stepper in _S-4_, and another method utilizes numbers or text for story
steps like in _S-6_. Authors also use visualization to convey story progress,
such as a path on a small multiple map as utilized in _S-18_. These progress
widgets can also be combined with button input for navigation.


**Story layout** captures both the type of layout model and the number of
columns used in the story. Stories commonly utilize a single- or two-column
approach, but these can be mixed as in _S-44_, which changes the layout across
sections. The two kinds of layout models are either a document (e.g., _S-1_) or
a slideshow (e.g., _S-4_), but hybrids (e.g., _S-3_) also occur where this
example looks like a slideshow stepper but uses different animations and
scrolling for input. These layout models are similar to steppers and scrollers.


**Role of visualization** examines the purpose and the part that visualizations
serve with respect to the entire story. There are aspects of this flow-factor
which may get decided when first creating a story based on the author's intent,
but the role of visualization helps determine the visual narrative flow based on
how the visualizations and text interact with each other. From the visual,
interactive stories we surveyed, 29 stories have text and visualizations playing
an equal role in telling the stories, like the interplay between the text and
maps in _S-11_. However, other stories have visualizations serve as a figure to
help convey part of the story, like the progress map used in _S-18_. Lastly,
visualizations can drive telling a story, with text primarily annotating the
visual story, such as the animated chart in _S-16_.


**Story progression** categorizes the possible story paths which can occur in a
story, such as linear story points, skipping between, or more complex paths. The
most common story type we observed is linear, where a reader is guided through
each story point in order like in _S-21_. However, a variation of this approach
is a linear skip, where readers can jump backwards or ahead -- often included if
a navigation progress widget is present such as the stepper in _S-9_. A story
can also contain more complex story paths, such as a tree style or graph to
include cycles or loops, and a good example is _S-29_, a visual, interactive
story about how neurons work.


**Navigation feedback** combines animated transitions with additional animations
of story text or other components, such as fading or movement. This factor is
all about showing to readers that their input affects the story. For example, it
is possible for both the text and visualizations to transition or move on the
page simultaneously, or in sync, such as _S-5_ where visualizations and text
move down the page together. However, these animations can also occur one before
the other, just the text or just the visualizations, so they swap their order
like in _S-11_ which swaps between maps and the text. Animated transitions that
are not tied to data can show change using motion or fading, and these
animations can occur in different parts of the story interface: the text, the
progress widget, or the visualizations. The story in _S-80_ uniquely combines
all three kinds of feedback as a reader advances.


The expressivity of the design space can be evaluated by looking at the model's
descriptive and generative power [@Beaudouin-Lafon2004]. One type of visual
narrative flow is the **stepper**: linear skip progression with button or swipe
input, discrete control over elements, slideshow layout, and a progress widget.
Conversely, **scrollers** commonly have linear progression, continuous control
over elements, document layout, and no progress widget. There are also different
kinds of scrollers, some of which use discrete control to trigger animations
(e.g., _S-2_, _S-3_, _S-5_) while others do so continuously based on the scroll
position (e.g., _S-1_, _S-13_, _S-18_). Thus, the design space characterizes
differences between these discrete and continuous scrollers that were previously
called one category in the community, demonstrating the framework's descriptive
power.


### Exploratory Studies into Visual Narrative Flow

We conducted two exploratory studies to understand how visual narrative flow
impacts the reader experience as well as to investigate how to capture this
impact. We focused on two specific kinds of flows: steppers and scrollers, to
mimic real-world reading experiences. For this exploration, our goal was to
observe usability issues and reader preferences between the two different flows.
Two studies employed different protocols: an online pilot survey and in-person
observations and interviews.


For these exploratory studies, we utilized the story, "The Visual Introduction
to Machine Learning" by Yee and Chu [@ml]. As shown in [@fig:ml], this story is
a scroller, and we adapted the story and its various story points into another
type of flow: a stepper. We selected this story because it won several awards,
had many views, and was generally discussed as a good example of a scroller. In
addition, we believe that it could transfer well to a stepper (slideshow) model.
This story features technical insights and complex data visualizations in a
longer format. Thus we hypothesized that the visual narrative flow could
substantially impact the story usability and reader preference. To experience
this story and our stepper variant, please see the Appendix.

<!-- APPENDIX: add in link / url?
\footnotemark[\value{footnote}]
-->


We recruited eight participants in our lab to read through the machine learning
story and instructed them to "explore" different reading experiences by toggling
between the two types of narrative flow. After reading through the story,
participants answered an online questionnaire on the usability of each approach
and individual preference questions, selected from the system usability survey
(SUS) [@brooke1996sus]. Survey materials used are included in the Appendix. The
participants all have data visualization knowledge, different operating systems
(Linux, Mac OS, Windows), various browsers (Firefox, Chromium, Chrome), display
resolutions (1373x735 to 2560x1464), only three typically read visually animated
stories, and five had read this story before.

<!-- APPENDIX: add in link / url?
\footnotemark[\value{footnote}]
-->


The results from this study showed a mixed set of preferences for each
participant. Three participants preferred the stepper while five preferred the
scroller. Both visual narrative flows were also considered moderately usable,
scoring 62 and 60 out of 100, respectively. Thus, the differences we collected
between both approaches varied mostly by subjective preference. For example,
responses to open-ended questions pointed that three readers preferred steppers
for the progress bar or the arrow keys enabling efficient story progression,
while two others reported that scrolling required less effort. By analyzing
interaction logs from the stories, we found that participants generally spent
more time and interacted more in the flow they had rated higher.


To gather deeper insights on the impact of visual narrative flows on preferences
and usability, we conducted observations and semi-structured interviews with 10
participants. The study lasted 30 minutes on average, and we gave a $10
compensation. To allow participants to experience both conditions, we broke the
story into three different chapters. Participants experienced the two conditions
in a random order, and were asked to pick a flow for the final chapter based on
their preference. We improved the usability and breakpoints of the stepper
version from the previous study.


Participants read the story on the same touchscreen tablet device. After each
chapter, participants completed a longer usability questionnaire based on SUS
[@brooke1996sus]. After reading the entire story, we conducted a semi-structured
interview to gather preferences and feedback that the primary author analyzed
iteratively with 3-5 passes on the interview notes along with informal coding
techniques. Participants did not have formal training in data visualization, six
participants had machine learning knowledge, and three participants had seen
this story before. Materials used in the study are included in the Appendix.

<!-- APPENDIX: add in link / url? -->


The results of this study shed more light on reader preference. For usability,
the stepper scored 76 and scroller scored 80 out of 100, so both types of
narrative flow were rated strongly usable, likely due to improvements to our
implementations. Contrary to the previous study, only two (out of 10) readers
preferred the stepper; the remaining eight preferring the scroller version,
although two of them were not a strong preference. The interviews revealed that
the touch interface may have impacted the experience. Two participants commented
that if swiping gestures (rather than tapping arrows) were implemented in the
stepper version, they would have likely favored the stepper. These comments hint
that different properties of visual narrative flow can affect reader preference.


All but one participant agreed that these visual narrative flows impacted their
story reading experience. We observed that all participants in the scroller
condition, would scroll back and forth to align text or replay animated
transitions in certain positions on the screen. Three participants commented
that it was hard to find the "perfect" view while reading the story. In
contrast, we observed less interaction with the stepper. The participants
generally hovered their fingers over the buttons to facilitate navigation and
did not replay animation back and forth as much. We noted more expressions of
joy and pleasure, such as laughter, from three participants in the scrolling
experience. As participants stated: "scrolling allowed me to see the
transformations more fluidly" (participant #4, or P4), "scrolling is sexier in
some ways, it is unique ... and just more fun" (P10), and "my preference would
be a stepper with slides ... but scrolling goes over these expectations, since
it ... helps reasoning and understanding" (P5). Six participants expressed that
the continuous control over animations afforded by scrolling was very engaging,
though this could be an effect of novelty or self-reporting on engagement.





## Crowdsourced Evaluation for Visual Narrative Flow

To study how different flow-factors of visual narrative flow affect readers'
engagement, we conducted a larger scale crowdsourced study with 240 participants
using Amazon Mechanical Turk.


### Study Conditions and Hypotheses

We selected four conditions to study in detail. We identified two baseline
conditions, one with only text and another with only static visuals, to first
see if there is a measurable benefit to scrolling stories with visualization or
with animation. Lastly, we included a stepper narrative flow to explore
measuring the difference in engagement we witnessed in the exploratory studies.
Specifically, our conditions were:

- _text_: a text-only story (baseline 1)
- _visual_: text paired with static visual images (baseline 2)
- _stepper_: text paired with visualizations and animated transitions via a stepper
- _scroller_: text paired with visualizations and animated transitions via a continuous scroller 


For the 2 baseline conditions, we hypothesized that the inclusion of
visualizations (**_H1_**) and animation (**_H2_**) would increase the visual
appeal, attention, novelty, and felt involvement (all attributes of engagement)
for readers. Furthermore, from our observations of readers, we hypothesized that
transitions of dynamic data are more engaging using continuous control than
discrete one (**_H3_**). In other words, readers from previous studies expressed
that continuous scrolling was more of a gimmick until they experienced the final
story chapter which uses continuous scrolling to show the timesteps of an
algorithm. Thus our hypotheses were:

- **_H1_**: Visualizations contribute to make the data-driven story more
  engaging.
- **_H2_**: Animated transitions contribute to make the data-driven story
  more engaging.
- **_H3_**: Pairing dynamic transitions with continuous control contributes to make the data-driven story more engaging.


### Study Design

We selected the machine learning story [@ml] as in previous studies because of
its length and the various types of visualizations and transitions it included.
Both the text and visual conditions used a document layout and scrolling
navigation input. In the text condition, textual descriptions replaced the
visualizations while the visual condition utilizes static screenshots of the
visualizations. The scroller is the original story, and the stepper is our
implemented version, which contains a progress widget, does not animate text,
and controls animations by discrete button presses.


We broke apart the story into two chapters based on types of animated
transitions used, and each participant went through each chapter and then filled
out a survey at the end. Each participant received only two unique conditions,
one for each story chapter. Questions were reserved until the end of reading to
avoid breaking the reader's concentration and issues of memory recall of
responses that would result in less effective comparison results. The study is
balanced in design, with the four conditions crossed with the two chapters of
the story resulting in 12 combinations.


For measuring engagement, we adapted a validated questionnaire from O'Brien and
Toms [@OBrien2010] containing 14 questions on reader-perceived engagement across
attributes such as usability to attention to aesthetics to novelty. Each
statement then received a 5-point Likert response from the participant. These
statements were duplicated across the two conditions (or chapters) that the
participant had read. We randomized the order of questions, but questions per
chapter were adjacent to support effective comparison. For analysis, several of
the questions were negative attributes for engagement, so their responses were
flipped accordingly. All materials and conditions used for the study are
included in the Appendix.

<!-- APPENDIX: add in link / url? -->


### Crowdsourced Participants

In total, 240 participants read through the story, and they were compensated
$2.31 for their time. There were 20 participants per pair of conditions, or 40
per balanced set. Participants were recruited via Amazon's Mechanical Turk (at
least 98% HIT approval rate, at least 100 approved HITs, and English-speaking
countries only). We asked a series of questions to ensure that no one had seen
this particular story before and that participants were actively following
instructions and paying attention to the content of the story, both in the text
and the visuals. Participants have a varied educational background (46.2% high
school or some college, 39.2% with a bachelor's degree, 14.6% with masters or
beyond), 58.3% have never taken a Computer Science course, 87.0\% were
unfamiliar with machine learning, 74.6% read stories on the web multiple times
weekly or more, and 12.9% contain subscriptions to a popular news site. They
used a variety of input devices (75.4% mouse, 22.9% trackpad, 2 touch devices, 1
pen, and 1 trackball).


### Crowdsourced Study Results

We performed a linear mixed effects analysis using R [@rlang] and lme4 [@lme4]
to study the relationship between different types of narrative flows and
reader-perceived engagement (all 14 questions). As fixed effects, we used both
the four narrative flows and chapter (without the interaction term) in the
model. For random effects, we incorporated intercepts for participants and
engagement questions, as well as a by-participant and by-question random slope
model for the effect of engagement. Residual plots were visually inspected and
no extreme deviations from homoscedasticity or normality were found to violate
model assumptions. Despite the effect of engagement being captured using a
Likert scale, the underlying concepts are likely continuous in nature, and it is
accepted in several fields to utilize linear models for such ordinal data
without succumbing to a negative bias as with other approaches [@Bauer2011]. The
$p$-values reported here were obtained through likelihood ratio tests of the
full effects model to one without the effect of different visual narrative
flows.


[@fig:model] shows the results of the model, which contains the average
engagement score for all 14 questions. According to the model, the different
conditions tested for this story affected the engagement score significantly ($p
< .001$, $\lambda^{2}(3)=30.71$), supporting **_H1_**. In other words, readers
ranked the engagement of stories with visualizations higher than the first
baseline, text-only story. It is important to note that these effects are small,
since they are averages of the 14 questions on engagement. Certain questions had
a stronger effect across the visual narrative flows, such as visualizations
scoring higher on an aesthetics question: "This reading experience appealed to
my visual senses." We provide an engagement model for each question and
condition in the Appendix.

<!-- APPENDIX: add in link / url? -->


![
  This mixed-effects model represents the average engagement score and 95%
  confidence interval of all 14 questions for 240 participants across the
  conditions. The model shows increased engagement when using visuals and
  especially when using animated transitions, but the effect of the other
  visual narrative flows, stepper and scroller, were not significantly
  different.
](figures/narrative-flow/study-analysis.pdf){#fig:model width="100%"}


The animated transition conditions scored significantly higher on engagement
than static visualizations ($p < .001$, $\lambda^{2}(2) = 18.04$), supporting
**_H2_** and suggesting that animated transitions increase the reader-perceived
engagement. Interaction effects of the engagement per chapter of the story were
tested, but none were found to be significant so were left out of the model.
Additionally, we found a significant effect on the chapter of the story ($p =
.017$, $\lambda^{2}(1) = 5.72$), where the second chapter received, on average,
a higher engagement score (0.10). In other words, the animated conditions scored
even higher in engagement for the second chapter of the story, which contained
dynamic transitions. A question on novelty scored higher for flows with
animations: "The reading experience was different from a typical online reading
experience." Subsequently, animated transitions, such as navigation feedback,
showed a measurable benefit for reader-perceived engagement.


Regarding the stepper versus scroller debate, we did not find a significant
difference in engagement via our questionnaire, failing to support **_H3_**.
While steppers scored higher for engagement on average, the difference over
scrollers was not significant in the model. Thus, we are unable to conclude if
continuous control over dynamic transitions, via scrolling, improves engagement
measured in the second chapter of the story. We note that the difference did
vary by reader preference and only for certain questions, such as those
regarding usability. While our findings do not support **_H3_**, a carefully
controlled user study may be able to investigate and measure this effect.


Furthermore, we conducted an analysis on the preferred conditions selected by
the participants, shown in [@fig:prefs]. Note that each participant saw two
conditions, the order shown in the table. They ranked which of the two they
preferred for the story, or possibly none. We found that the stepper and
scroller were largely preferred over other conditions by almost twice as many
participants. However, a large portion of the participants overall did not have
a preference between the two conditions they experienced. Lastly, [@fig:prefs]
shows split in preference across participants for both stepper and scroller. By
inspecting the detailed breakdown of preferences, more participants preferred
animated transitions and scrollers for the second chapter of the story.


![
  Participant preferences were recorded across all of the pairs of conditions
  ($N = 240$). There were 20 participants per pair, and balanced based on which
  condition was first or second. On the left, preference totals across all
  conditions emphasize that participants largely preferred conditions with
  visualizations and animation (stepper, scroller), otherwise they had no
  preference.
](figures/narrative-flow/study-preferences.pdf){#fig:prefs width="100%"}


In addition to questions on engagement, we asked participants to complete five
comprehension questions, which varied in difficulty from terminology or concept
recall to complex application of a concept to a new problem. Overall,
participants comprehended the story well, scoring on average 4 out of 5. We did
not find any major differences in comprehension across condition pairs.





## Designing for Experiments and Evaluation

In framing and evaluating this design space for visual narrative flow, the
nine-stage framework was not a good fit for our process because this was not a
design study. For example, there was no specific set of domain experts who
create these visualization stories that we worked with. While the motivation
behind this work was to support the creation of a tool to help these authors
write, develop, and combine visualizations and animated transitions with text,
the primary contribution of this project was to explore and better understand
the various possibilities and common practices in the overall design space.
Although this work was problem-driven, the user study evaluation method produced
guidelines unlike those from design studies which typically result from inner
reflection and synthesis of the research and design process [@Sedlmair2012b].


With regard to the nested model, evaluation and user studies connect to the
encoding and interaction levels, plus this model highlights one of the
limitations of this project. For example, the crowdsourced user study described
previously focused on establishing subjective comparisons of engagement using a
questionnaire to produce guidelines on different visualization encoding and
interaction techniques, coined visual narrative flows in the study. Various
iterations of the study occurred, some which tested usability and others which
more formally test other aspects such as reader-reported engagement. These forms
of validation match their respective levels, and they also correspond to some of
the contributions of this work, guidelines to utilize animation and visuals to
increase engagement of visual data stories. However, the limitation stems from
the nested model extension [@Meyer] which would emphasize that these
visualization stories are built off of a series of stacks of blocks, and that
the guidelines are established and scoped to the given set of blocks presented.
As such, this model pinpoints a lack of generalizibility in the reported study,
since the findings and guidelines may be localized to the given story.


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
work in ways that the nine-stage framework cannot. Additionally, the lack of
generalizability of the studies presented here could be uncovered by reflecting
on assumptions and artifacts generated when forming the study, such as the
single story, one dataset, and subset of visualizations which is fixed
throughout all of the conditions and studies.


Lastly, the design activity framework worksheets emphasize an importance to
documenting and recording the design process, and this overlaps with the
importance of reproducibility in experimental design. By recording visualization
artifacts and design decisions, a visualization designer can justify why
specific tasks, encodings, or interactions were selected or modified. In a
design study, this notion of reproducibility is not the goal, and Sedlmair et
al. promote the goal of transferability instead [@Sedlmair2012b] due to the
subjective nature of field work and based on methodologies of ethnography and
action research. However, in other types of design work, such as for
experimental evaluation, it is of vital importance to include materials and
decisions to enable effective reproduction of the evaluation in order to
validate, or invalidate, its results. Providing enough of the materials and
procedures used in an experimental design allows others to build off of, refute,
or refine the guidelines established as a result of an evaluation approach. By
capturing more design decisions and visualization artifacts throughout the
process, the design activity framework could assist by increasing the
reproducibility of a project's evaluation. This record can even provide benefit
for application or problem-driven work for others with similar challenges that
want to build off of the requirements, ideas, prototypes, and systems that have
been built and shared with the research community.

