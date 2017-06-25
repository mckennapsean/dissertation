# Reflections on Other Types of Research {#sec:reflections}

The design activity framework can apply to and provide insight into types of
research beyond design studies. This is one of the benefits of the framework,
since it can generalize to other types of research. In this chapter, we explore
two kinds of applied research projects: technique-driven [@mckenna2015s] and
evaluation [@mckenna2017] research. After exploring each project, we reflect on
the project's outcomes, research contributions, and implications using the
design activity framework. From these reflections, we have noted that the design
activity framework can capture steps of other research processes and the
visualization artifacts that are generated and evaluated.


In practice, visualization design can have implications for many types of
visualization research and be a research activity in itself, such as multiple
approaches to conduct research through design [@Gaver2012; @Obrenovic2011] or
the application of action design research to the process of creating
visualization systems [@McCurdy2016]. For example, the design study methodology
model includes research aspects, such as reflection and writing publications
[@Sedlmair2012b]. Action design research would similarly emphasize such
reflection and learning throughout the visualization design process
[@McCurdy2016]. Members of the visualization community need to consider other
types of research, beyond design studies or application-driven work. Munzner
identified a series of publication types for the field of data visualization ---
technique, design study, systems, evaluation, and model [@Munzner2008] --- which
is similar to different kinds of research contributions, such as in the field of
human-computer interaction [@Wobbrock2012]. In this chapter, we discuss two
applied projects that contain primary contributions in technique and evaluation
research.


For technique-driven research, we worked with a statistician and biology
collaborators to develop a new method for encoding projected correlation data
coupled with an interactive system to explore these correlation projections
[@mckenna2015s]. We reflect on the application of this technique to our biology
collaborators' challenges, to explore large datasets for which current
visualization methods for correlation did not scale appropriately. As a result
of analyzing this project through the design activity framework, we pinpoint
some of the design study pitfalls we fell into that previous visualization
design models did not capture. By illustrating how the design activity framework
describes technique-driven work, we show that design activities work as steps
for general visualization design.


For evaluation research, we conducted an exploration and evaluation of a design
space for visual narrative story flow, coupled with initial studies into a few
types of flow, such as steppers and scrollers [@mckenna2017]. In this work, the
design activity framework can be used to frame the steps of experimental design
and identify study limitations from a lack of generalizability. The design
activity framework timelines and worksheets further emphasize documenting and
recording the visualization design process, which are important for
reproducibility in evaluation research. Overall, we found that the design
activity framework can support thinking about other types of research beyond
just design studies, particularly research with an applied focus.





## A Technique-Driven Project

In this section, we provide details for a technique-driven research project, the
s-CorrPlot [@mckenna2015s]. We first explain the motivation for this
visualization technique, and then we provide the high-level mathematical
derivation of the visual encoding as well as the interactive component of the
technique. To conclude this project's description, we include the application of
this technique to an applied domain, visualization for biology datasets. We
reflected on this project using the design activity framework in order to
identify pitfalls and clarify the reasons why this project strayed from being a
problem-driven design study. We discovered that the design activity framework
can apply to steps of a technique-driven design process and enable us to
identify further pitfalls for design study research. Lastly, we found, through
this reflection, that visualization ideas in technique-driven work can span
across more levels of the nested model, such as a new algorithm.


### Visualizing Correlation

Many data analysis applications use the degree of correlation between variables
as a key measure of interdependence. The most common techniques for exploratory
analysis of pairwise correlation in multivariate datasets, such as scatterplot
matrices and clustered heatmaps, however, do not scale well to large datasets,
either computationally or visually. We present here a new visualization
technique that is capable of encoding pairwise correlation between hundreds of
thousands variables, called the s-CorrPlot [@mckenna2015s]. The s-CorrPlot
encodes correlation spatially between variables as points on scatterplot using
the geometric structure underlying Pearson's correlation. Furthermore, we extend
the s-CorrPlot with interactive techniques that enable animation of the
scatterplot to new projections of the correlation space, as illustrated in the
companion video on our project website.[^scorrplot] We provide the s-CorrPlot
technique and tool as an open-source R-package that we gave to our biology
collaborators studying correlation of gene expression.

[^scorrplot]: <http://mckennapsean.com/projects/s-corrplot/>


### Statistical Correlation

The s-CorrPlot is based on a geometrical interpretation of correlation
[@dempster1969elements; @rodgers1984linearly] where datasets are represented
with a **variable** as a vector in $\mathbb{R}^n$, where $n$ is the number of
**observations** per variable. In this interpretation, Pearson's correlation is
the cosine of the angle between the mean centered variables. Thus, correlation
can be spatially represented as $p$ points on a $(n-2)$-sphere. In statistical
language, the points on this sphere are termed standardized variables.


Pearson's correlation coefficient, $\hat{r}$, for any two variables $\mathbf{x} =
\{x_1, \; \ldots \;, x_n\}$ and $\mathbf{y} = \{ y_1, \;
\ldots \;, y_n\}$ can be written as
$$
  \hat{r}(\mathbf{x}, \mathbf{y}) = 
  \frac{
    \tilde{\mathbf{x}} \cdot \tilde{\mathbf{y}}
  }
  {
    \lVert \tilde{\mathbf{x}} \rVert \;\, \lVert \tilde{\mathbf{y}} \rVert 
  }
$$ {#eq:geom}
which highlights the geometrical nature of the correlation coefficient [@mckenna2015s].


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


Based on [@eq:geom], the correlation coefficient for two variables is equal to
the dot product between their vectors, such as for $\mathbf{p}$ and $\mathbf{x}$
as illustrated in [@fig:corr-plot](a) and reflected in [@fig:corr-plot](b). The
vertical grid lines in the s-CorrPlot, as in [@fig:corr-plot](c), specify values
of equal correlation to $\mathbf{p}$ for any location in the scatterplot. Thus,
since $\mathbf{x}_U = U \, \mathbf{x}$, it follows that, for any vector
$\mathbf{x}$, the correlation to $\mathbf{p}$ is directly encoded in the first
component of the vector $\mathbf{x}_U$. In fact, any vector that projects onto
the line $V_U$, shown in [@fig:corr-plot](b), has the same first component
value, and thus the same correlation to $\mathbf{p}$. Moving $V$ along the
vector $\mathbf{p}$ produces grid lines as shown in [@fig:corr-plot](c). For
further details about the mathematical derivation of the s-CorrPlot, including
the uncertainty bounds and density estimation technique, please see the original
publication [@mckenna2015s].


![
  Three variables ($\mathbf{p}$, $\mathbf{s}$, and $\mathbf{x}$) with four
  observations each projected onto the s-CorrPlot.
  We can illustrate our variables as standardized vectors on (a) the correlation
  sphere, directly in 3D. The correlation coefficient between any two variables
  is the dot product between their standardized vectors, such as with
  $\mathbf{p}$ and $\mathbf{x}$. With these two standardized variables, a
  $(n-2)$-flat $V$ is defined. The s-CorrPlot is defined by the projection plane
  $U$, containing both $\mathbf{p}$ and $\mathbf{s}$. Projection onto $U$
  results in (b) the s-CorrPlot, preserving correlation coefficients to both
  $\mathbf{p}$ and $\mathbf{s}$. In the s-CorrPlot, $V$ projects to a vertical
  line $V_U$ of equal correlation to $\mathbf{p}$. As such, these vertical lines
  can be generalized (c) as grid lines along $U$, denoting sets of equidistant
  correlation values to $\mathbf{p}$. Similarly, (d) grid lines to $\mathbf{s}$
  can be shown.
](figures/scorrplot/s-corrplot.pdf){#fig:corr-plot width="95%"}


### Interactive Exploration

This spatial encoding of correlation affords several advantages. For example,
the technique can encode categorical information using color, and the projection
is computed in linear time at interactive frame rates. We also designed the
s-CorrPlot technique to incorporate both interaction and animation, unlike
previous static correlation encodings [@corsten:biometrics76;
@trosset:jcgs05; @falissard:jcgs99]. In doing so, we illustrate how the
s-CorrPlot can be paired with multidimensional exploration techniques, in the
spirit of existing systems that employ user-driven exploration
[@swayne1998xgobi; @swayne2003ggobi; @Elmqvist08Rolling]. To easily understand
the interactive exploration aspects, we advise watching the companion video
available online.[^scorrplot]


The s-CorrPlot employs several simple aspects of user-driven exploration to help
examine the space of possible projections. These interactions increase the
effectiveness of the underlying spatial encoding of the s-CorrPlot. Users drive
the exploration of the multidimensional correlation sphere by selecting the
variables $\mathbf{p}$ and $\mathbf{s}$ of interest. After selecting a new
variable, the s-CorrPlot is reoriented through a continuous animation of a
rotation between the current projection and a newly selected one, by
interpolating across the vectors chosen for the projection. In addition, we
orient the viewer by projecting the primary vector to a fixed location on the
far right of the s-CorrPlot and draw the gridlines vertically with respect to
this primary vector in order to preserve the spatial encoding throughout the
animation. This animation results in seeing structures, such as clusters of
correlated variables, moving together (or apart) in 3D; perceptually, this is
known as seeing _"shape from motion"_ [@ullman:visualMotion].


### Employing the s-CorrPlot in Biology

While creating the s-CorrPlot visualization technique, we worked in tandem with
biology collaborators to customize and tailor aspects of the data visualization
tool for their problem: exploring correlation of gene expression datasets
[@mckenna2015s]. Biologists often analyze the correlation of **gene expression**
--- how much a gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively]. This analysis seeks to answer questions pertaining to
the relationship of correlation between genes, especially how these
relationships change over time, across species, or in the presence of disease.


We worked with a biologist at the University of Utah who is tackling similar
questions by studying genes that work together in the brain in order to uncover
genetic influences on brain function, behavior, and disease. Using
high-throughput sequencing, he measures the expression level of genes in
specific brain regions, even to the detail of expression of **exons**, which are
subparts of genes. He takes these measurements in different strains of mice,
which form the observations in his dataset. The genes and exons are the
variables he wants to correlate and study.


His typical study involves several dozen observations, and approximately 10,000
to 100,000 variables, where each variable is a measurement of expression from a
gene or exon in a brain region with observations across different subjects. The
state-of-the-art approach for studying the correlation of gene expression is
weighted gene co-expression network analysis (WGCNA) [@langfelder2008wgcna;
@oldham2008functional; @winden2009organization]. WGCNA uses the correlation or
similarity of genes to construct a weighted network among all genes, and this
network forms gene modules based on topological overlap. However, WGCNA was
designed to support only 10,000 to 20,000 genes, so it does not scale to the
size of datasets that our collaborator struggles to analyze.


At first, our collaborator explored 38,365 genes in two regions of the brain,
with 22 observations, using the s-CorrPlot, shown at the top of
[@fig:gene-case-study]. Since each gene can exist in either brain region, the
plot shows a combined total of 76,730 variables. The gene expression levels
measured in brain region 1 are shown in red, and those in brain region 2 are
shown in blue. Our collaborator first looked at only brain region 1 (red),
orienting the s-CorrPlot using the first principal component for these variables
--- he noted that no strong clusters emerged. He then did the same for only
brain region 2 (blue), and saw a significant grouping of correlated and
anticorrelated points, shown in the dashed ovals. Overlaying the two brain
regions confirmed interesting differences across the correlation of all genes
between these two regions. The biologist anticipated that the differences in the
correlation structure of the data reflect differences in the cell types and
mechanisms that regulate gene expression and the function of the two brain
regions.


![
  Two biological datasets visualized in the s-CorrPlot.
  Each dataset contains 76,730 (genes) and 120,000 (exons) variables, with 22
  and 37 observations, respectively. For each dataset, genes and exons have been
  colored according to two brain regions in which the expression levels were
  measured, resulting in separate and combined overlay visualizations. The
  s-CorrPlot highlights different patterns of correlation in each of these brain
  regions due to the gene and exon expression patterns varying on a global
  scale, i.e., the blue and red regions of these plots show different patterns,
  distributions, and clusters across the two regions, which indicates
  potentially significant differences in their biological processes.
](figures/scorrplot/case-studies.pdf){#fig:gene-case-study width="95%"}


Using a different dataset, our collaborator visualized the expression levels of
120,000 exons across the same two brain regions, as shown in the bottom half of
[@fig:gene-case-study]. This particular dataset contains 60,000 exons in each
brain region, for a total of 120,000 variables, with each variable containing 37
observations. This is the first analysis of correlation at the exon level that
our collaborator is aware of, perhaps due in part to the inability of existing
tools to handle these large datasets. With the s-CorrPlot, our collaborator was
able to interactively explore the many exons and deduce that there are also
region-specific patterns at the exon level. He noted that the patterns in the
exon dataset are significantly different from the data at the gene-level,
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


### Applying the Design Activity Framework

Although we created the s-CorrPlot technique for biology collaborators, this
project was not a typical visualization design study. In fact, this project's
primary contribution was a novel technique, generalizable and driven by an
algorithm stemming from statistical theory. When evaluating this tool, we
focused not on the problem domain or use-case in detail but rather if the
technique provided analytical insight through a case study with our
collaborators. This validation is in line with technique-driven research
[@Lam2011a] but not with a design study, which involves validation of
contributions consisting of a problem characterization, abstraction, and tool
that solves a domain expert's problem [@Sedlmair2012b]. When reflecting on our
process with the design activity framework, I realized that we never fully
characterized or tried to solve a more complete problem. When using this new
tool, our collaborators would find interesting patterns but then only had more
questions and needed to run further lab studies to learn more. We simply focused
heavily on the novelty within the specific tool rather than a design study.


Design studies can be faced with threats to their validity at multiple levels,
such as one at the problem-characterization level: _"wrong problem"_
[@Munzner2009]. This threat is characterized as _"target users do not in fact
have these problems"_ [@Munzner2009], but the s-CorrPlot tool did, in fact,
solve a problem faced by our collaborators, since they were unable to visualize
their full dataset with existing techniques. Using the design activity
framework, we were able to realize that instead what this project faced was an
"incomplete problem" threat, where we focused too heavily on only one of our
collaborators' dataset types. By not taking a step back for the bigger picture,
we left our collaborators with more questions than answers using this tool, and
this design study could have been improved by revisiting the _understand_
activity and fleshing out the situation blocks [@Meyer] more completely.
Nevertheless, this project was still a success as technique-driven research. We
can characterize the contributions of the s-CorrPlot using the levels of the
nested model, touching on the encoding, interaction, and algorithm levels. The
nested model is useful when determining which forms of validation are necessary
to evaluate a visualization system, and the types of evaluation we employed on
the s-CorrPlot match these levels: complexity analysis, interactive framerates
with large datasets, qualitative image analysis, and case studies with our
collaborators.


By turning to the design activity framework, we formed insights about the design
process and application of the s-CorrPlot technique to design study work. For
the s-CorrPlot project, I joined the team after the development of an initial
prototype; the nine-stage framework [@Sedlmair2012b] would classify this as the
"implement" step or the _make_ design activity. To improve the tool to meet our
collaborators' needs, I visited their lab weekly to observe the types of
research problems they faced, better understand the problem domain, and see how
they utilized the prototype, which is like going back to the "discover" stage or
_understand_ activity. While following the nine-stage framework, we had an
incomplete problem focus and fell into several problems in the "design" stage
[@Sedlmair2012b]. However, when looking to the _understand_ worksheet, I was
able to pinpoint several missing factors from our design process: thinking about
users' large-scale problems or challenges, different types of datasets to solve
this, and tasks to perform on the data. Our design process for this project had
focused on talking with and observing users, and the prototype that we had
deployed early on impacted the focus of these interactions significantly. Rather
than focus on the bigger picture and problems faced by our collaborators, we had
iterated on a prototype visualization tool to solve a single problem. Thus, our
reflections on the design activity framework contribute new pitfalls for design
studies, adding to previous ones [@Sedlmair2012b]:

- PF-33. not communicating information across teammates on the problem characterization and abstraction (discover / _understand_)
- PF-34. failing to identify the broad problem: solving small, specific problems may not be useful or impactful enough for domain experts (discover / _understand_)
- PF-35. not tailoring the system for domain experts but focusing on designing novel solutions (discover / _understand_)
- PF-36. deploying a prototype too early, thus limiting the problem and design focus --- instead aim to develop technology probes [@Hutchinson2003a] to shape design requirements, abstractions, and ideas (_deploy_)


The design activity framework, as a process model, is able to capture multiple
aspects of the s-CorrPlot project. When designing this tool, there were
distinct, iterative phases of the prototype. For example, the scatterplot
encoding is one such visualization artifact, which we validated in terms of its
ability to scale across many variables and dimensions, and to overlay multiple
datasets. A concept separate from the tool is the notion of interaction, with
selection of and animation between projections; this concept was not a novel
contribution on its own but added further value to the technique and s-CorrPlot
tool. Most of these artifacts stem from the _ideate_ activity, but they were
realized in a prototype system through the _make_ activity. We repeatedly
deployed this system to our collaborators as well. The visualization artifacts
of this technique-driven process correlate to the levels and contributions
designated by the nested model, and we note that a modification of the design
activity framework is required to allow ideas from technique-driven research to
map to algorithmic-level decisions [@Munzner2009]. We have illustrated here how
the design activity framework can uniquely apply to general visualization
design, such as the technique-driven project employed here. In particular, the
framework seems to work with research that has this applied focus.





## An Evaluation Project

In this project, we focused on several evaluation methods that enabled us to
generate guidelines for the applied area of creating data visualization stories
[@mckenna2017]. First, we preface this research with an overview and motivations
for the project, to study the visual narrative flow of data visualization
stories. By providing examples of two types of flow, scrollers and steppers, we
show how different these story experiences are to readers. Next, we characterize
this design space for visual narrative flow into seven flow-factors. We
conducted a crowdsourced study in order to measure and compare engagement for
different narrative flows. By reflecting on this project using the design
activity framework, we provide an initial validation that steps for experimental
design can map onto steps of the design process, where visualization artifacts
can capture evaluation guidelines and increase the reproducibility through
documentation of an experimental design. We also discuss how the framework
enabled us to reason about the evaluation methods' limitations of
generalizability.


### Project Motivation

Data-driven stories that tightly integrate visualizations have become a popular
communication device in a variety of fields [@Segel2010], which has led the
visualization research community to investigate the design factors that
practitioners employ to craft narratives, from visual and interactive techniques
[@Segel2010; @Stolper2016] to specific genres [@Amini2015; @Amini2016;
@bach2016telling]. Specific knowledge on these factors is growing, but we still
have little knowledge of which are predominant for, and how they may be combined
to create, effective **_visual narrative flows_** [@mckenna2017], which combine
a reader's input with story components and congruent visual feedback that tell
the story matching the author's intent and voice.


An ongoing informal debate on visual narrative flow centers around the effects
of allowing readers to navigate through data-driven stories using either a
click/tap input or a scroll input. We refer to this debate as the _stepper vs.
scroller debate_ (illustrated in [@fig:ml]). Clicking to step through a story is
like a slideshow, while scrolling is akin to panning up and down a long
document. Practitioners from _The New York Times_ recently advocated for
scrolling because their readers tend not to fully consume stories that are
delivered with steppers [@nyt; @nyt2]. Others advocate for steppers, as they
point out several potential issues pertaining to the use of scrolling (e.g.,
"scrolljacking") [@scourge].


![
  Two examples of visual narrative flow.
  These two examples highlight differences within a data visualization story.
  The scroller, by Yee and Chu, walks through (a) a story to teach a basic
  concept of machine learning [@ml], where scrolling not only moves down the
  page but also moves visualizations and continuously controls their linked
  animated transitions. We transformed this scroller into (b) a stepper
  narrative flow that uses buttons for navigating the story across the story
  text with timed animated transitions.
](figures/narrative-flow/scroller-stepper.pdf){#fig:ml width="100%"}


### Visual Narrative Flow

Here we introduce seven factors that contribute to visual narrative flow along
with illustrations of the various properties for each flow-factor as in
[@fig:design-space]. These factors were identified through a series of
individual consumption sessions, group discussions, and informal coding of a
corpus containing 80 stories [@mckenna2017], referred to with _S-#_. This design
space framework captures aspects of flow such as a reader's input, connection of
story components, and the visual feedback. Previous work by Segel and Heer
focused on high-level story components (e.g., animation, progress bars) along
with story genres and narrative approaches [@Segel2010]. However, these
flow-factors build upon their work by breaking down these properties to
characterize and explore a broader range of visual data-driven stories than
otherwise initially possible. For further details on each of these factors,
please see the original publication [@mckenna2017].


![
  Seven factors for visual narrative flow.
  We identified these flow-factors by analyzing and coding a corpus of 80 visual
  data stories. Each flow-factor contains multiple properties, which are not
  necessarily mutually exclusive, and hybrids can and often do occur in data
  visualization stories created by authors.
](figures/narrative-flow/design-space.pdf){#fig:design-space width="100%"}


The expressivity of the design space can be evaluated by looking at the model's
descriptive and generative power [@Beaudouin-Lafon2004]. One type of visual
narrative flow is the **stepper**: linear skip progression with button or swipe
input, discrete control over elements, slideshow layout, and a progress widget.
Conversely, **scrollers** commonly have linear progression, continuous control
over elements, document layout, and no progress widget. There are also different
kinds of scrollers, some of which use discrete control to trigger animations
(e.g., _S-2_, _S-3_, _S-5_) whereas others do so continuously based on the
scroll position (e.g., _S-1_, _S-13_, _S-18_). Thus, the design space
characterizes differences between these discrete and continuous scrollers that
the community previously called one category, demonstrating the framework's
descriptive power.


### Crowdsourced Study on Engagement

To study how different flow-factors of visual narrative flow affect readers'
engagement, we conducted a large-scale crowdsourced study with 240 participants
using Amazon Mechanical Turk. We selected four conditions to study in detail. We
identified two baseline conditions, one with only text and another with only
static visuals, to first see if there is a measurable benefit to scrolling
stories with visualization or with animation. Lastly, we included a stepper
narrative flow to explore measuring the difference in engagement we witnessed in
our exploratory studies. Specifically, our conditions were:

- _text_: a text-only story (baseline 1)
- _visual_: text paired with static visual images (baseline 2)
- _stepper_: text paired with visualizations and animated transitions via a stepper
- _scroller_: text paired with visualizations and animated transitions via a continuous scroller


For the two baseline conditions, we hypothesized that the inclusion of
visualizations (**_H1_**) and animation (**_H2_**) would increase the visual
appeal, attention, novelty, and felt involvement (all attributes of engagement)
for readers. Furthermore, from our observations of readers, we hypothesized that
transitions of dynamic data are more engaging using continuous control than
discrete one (**_H3_**). In other words, readers from previous studies expressed
that continuous scrolling was more of a gimmick until they experienced the final
story chapter, which uses continuous scrolling to show the time steps of an
algorithm. Thus, our hypotheses were:

- **_H1_**: Visualizations contribute to make the data-driven story more
  engaging.
- **_H2_**: Animated transitions contribute to make the data-driven story
  more engaging.
- **_H3_**: Pairing dynamic transitions with continuous control contributes to make the data-driven story more engaging.


We broke apart the machine learning story [@ml] into two chapters, and each
participant went through each chapter and then filled out a survey at the end.
For measuring engagement, we adapted a validated questionnaire from O'Brien and
Toms [@OBrien2010] containing 14 questions on reader-perceived engagement across
attributes such as usability, attention, aesthetics, and novelty. We performed a
linear mixed effects analysis using R [@rlang] and lme4 [@lme4] to study the
relationship between different types of narrative flows and reader-perceived
engagement (all 14 questions). We obtained the $p$-values reported here through
likelihood ratio tests of the full effects model to one without the effect of
different visual narrative flows. Our project website includes all materials and
conditions used for the study.[^narrative-flow]

[^narrative-flow]: <https://narrative-flow.github.io/>


[@fig:eng-model] shows the results of the model, which contains the average
engagement score for all 14 questions. According to the model, the different
conditions tested for this story affected the engagement score significantly ($p
< .001$, $\lambda^{2}(3)=30.71$), supporting **_H1_**. In other words, readers
ranked the engagement of stories with visualizations higher than the first
baseline, text-only story. It is important to note that these effects are small,
since they are averages of the 14 questions on engagement. Certain questions had
a stronger effect across the visual narrative flows, such as visualizations
scoring higher on an aesthetics question: _"This reading experience appealed to
my visual senses."_ We provide an engagement model for each question and
condition on our project website.


![
  Average engagement score across conditions.
  These scores stem from a mixed-effects model that represents the average
  engagement score and 95% confidence interval of all 14 questions for 240
  participants across the four conditions. The model shows increased engagement
  when using visuals and especially when using animated transitions, but the
  effects of the other visual narrative flows, stepper and scroller, were not
  significantly different.
](figures/narrative-flow/study-analysis.pdf){#fig:eng-model width="100%"}


The animated transition conditions scored significantly higher on engagement
than static visualizations ($p < .001$, $\lambda^{2}(2) = 18.04$), supporting
**_H2_** and suggesting that animated transitions increase the reader-perceived
engagement. We tested interaction effects of the engagement per chapter of the
story but found none to be significant, and so they were left out of the model.
Additionally, we found a significant effect on the chapter of the story ($p =
.017$, $\lambda^{2}(1) = 5.72$), where the second chapter received, on average,
a higher engagement score (0.10). In other words, the animated conditions scored
even higher in engagement for the second chapter of the story, which contained
dynamic transitions. A question on novelty scored higher for flows with
animations: _"The reading experience was different from a typical online reading
experience."_ Subsequently, animated transitions, such as navigation feedback,
showed a measurable benefit for reader-perceived engagement.


Regarding the stepper versus scroller debate, we did not find a significant
difference in engagement via our questionnaire, failing to support **_H3_**.
Whereas steppers scored higher for engagement on average, the difference over
scrollers was not significant in the model. Thus, we are unable to conclude if
continuous control over dynamic transitions, via scrolling, improves engagement
measured in the second chapter of the story. We note that the difference did
vary by reader preference and only for certain questions, such as those
regarding usability. Although our findings do not support **_H3_**, a carefully
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
  Participant preferences across conditions.
  We recorded readers' preferences between their two selected conditions ($N =
  240$). Each pair included 40 participants and was balanced based on which
  condition was first or second. On the left, preference totals across all
  conditions emphasize that participants largely preferred conditions with
  visualizations and animation (stepper, scroller); otherwise they had no
  preference.
](figures/narrative-flow/study-preferences.pdf){#fig:prefs width="100%"}


### Applying the Design Activity Framework

This project aimed to support the creation of a tool to help story authors
write, develop, and combine visualizations and animated transitions with text.
Although this project was also applied research, a major focus of this work was
to evaluate the qualitative story reading experience and compare engagement of
different visual narrative flows. As such, a process model for design studies is
not an apt fit to describe the steps we went through. However, the design
activity framework is able to generally describe some of these stages, to create
visualization artifacts, such as study hypotheses and story "prototypes." One
stage of this project was qualitatively coding a corpus of many visual data
stories, and this method was quite similar to other times we employed this
approach in the _understand_ activity. As before, the design requirements we
identified were critical to shaping the project, and here they are the seven
flow-factors we identified that motivated how we conducted user evaluation.
Then, we employed user studies that resulted in guidelines for future tools. The
design activity framework is able to capture and describe the results of these
evaluation methods to facilitate other visualization practitioners designing and
evaluating tools and techniques in this space.


By connecting the design process to design decisions, we were able to reflect on
how the study's guidelines fit within the overall design process of these
evaluation methods. By mapping to the nested model, the design activity
framework emphasized that the evaluation and user studies for this project
correspond to decisions made at the encoding and interaction levels. For
example, the different types of visual feedback, interaction techniques, and
levels of control all correspond to decisions we had to make when designing a
story on one or both of these levels. With this mapping to decisions, we
identified a limitation to the project. Specifically, the crowdsourced study
investigated reader-reported engagement and preference to compare visual
narrative flows. As a result of this study, we established guidelines to utilize
animation and visuals to increase engagement, implications for the _make_ and
_deploy_ activities. While the design activity framework can describe these
guidelines succinctly, the nested model extension [@Meyer] elucidates this
limitation, since the stories could be viewed as stacks of blocks, and the user
study guidelines were shown to be effective for only a single story rather than
generalized across many different stories.


On the other hand, we noted that we could reflect on how the design activity
framework can be utilized to model and describe this experimental design
process. As before, the experimental designer must first approach a given
problem to identify potential tasks, datasets to utilize, and which users to
test, and then establish hypotheses for the research problem. For example, this
study explored aspects of visual narrative flow for a single dataset and focused
on reading and comprehension tasks to measure engagement using a questionnaire.
Many of these components correlate with actions and visualization artifacts of
the _understand_ activity. A similar design process can be followed to create
visualization artifacts used as materials in a study, such as tools, techniques,
systems, and instantiations of a given encoding or interaction. This process
will involve testing for usability and feasibility, such as through the use of
pilots, similar to prototypes, in the _make_ activity. The process may not
perfectly overlap, but it shows that the design activity framework can map to
this style of formative or evaluative work in ways that the nine-stage framework
cannot. Additionally, the lack of generalizability of the study presented here
could be uncovered by reflecting on assumptions and artifacts generated, such as
the single story, one dataset, and subset of visualizations, which is fixed
throughout all of the conditions.


Lastly, the design activity framework worksheets emphasize the importance of
documenting and recording the design process, which overlaps with the importance
of reproducibility in experimental design. By recording visualization artifacts
and design decisions, a visualization designer can justify why specific tasks,
encodings, or interactions are selected or modified. In a design study, this
notion of reproducibility is not the goal, and Sedlmair et al.\ promote the goal
of transferability instead [@Sedlmair2012b] due to the subjective nature of
field work and based on methodologies of ethnography and action research.
However, in other types of design work, such as for experimental evaluation, it
is of vital importance to include materials and decisions to enable effective
reproduction of the evaluation in order to validate, or invalidate, its results.
Providing enough of the materials and procedures used in an experimental design
allows others to build off of, refute, or refine the guidelines established as a
result of an evaluation approach. By capturing more design decisions and
visualization artifacts throughout the process, the design activity framework
could increase the reproducibility of a project's evaluation. This record can
even provide benefit for application or problem-driven work for others with
similar challenges who want to build on the requirements, ideas, prototypes, and
systems that have been generated and shared with the research community.

