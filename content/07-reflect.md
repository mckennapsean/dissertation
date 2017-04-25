# Reflecting on the Types of Research for the Framework {#sec:reflections}

\sm{focus on this for the implications or scoping of this work, role of projects}
\sm{include technique work, s-corrplot and failure of applied work}
\sm{include evaluative / formative work, the storytelling project}
\sm{scope out the details of these works}
\sm{add these details, as needed, into appendix}
\sm{focus on why DAF won't work / why it didn't}
\sm{how could you improve other projects with what we learned?}
\sm{Need intro...}


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
design process and application of the s-CorrPlot techinque to design study work.
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

<!-- previous sections... -->

Overview of technique, some math and figures and related work, all high-level.
Application of the technique (case study in biology).
- While creating the s-CorrPlot visualization technique, we worked in tandem with a biology collaborator to customize and tailor aspects of the data visualization tool for their problem: exploring correlation of gene expression datasets.


In collaboration with a statistician and biology researcher, we created a new
scatterplot for encoding correlation, the s-CorrPlot [@mckenna2015s]. As shown
in [@fig:scorrplot], the s-CorrPlot in (b) encodes as points different patches
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


<!-- previous sections... -->

Overview of design space, terminology, and pilot work.
Details of the full study we performed.

<!--##Case Study: Data Storytelling Authoring Tool {#sec:story}-->

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

