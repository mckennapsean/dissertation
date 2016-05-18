
# Formulation of the Framework

The design activity framework was initially formulated from reflecting on previous failed projects.
At first, we pursued a design study in the field of biology, working with a research lab studying mouse genetics through correlation.
With a statistics researcher, we created a new technique, the s-CorrPlot, to encode correlation of large datasets in a scatterplot [@mckenna2015s].
However, this project did not yield us with a successful design study, since our collaborators could not go beyond exploration or basic hypothesis generation with the tool.
Upon reflection, we realized that we were driven to build this tool for a novel technique, not to support the needs of the researchers.
This led into a second case study, in the field of cyber security,
where we worked with a team of designers, a psychologist, and visualization experts to formulate the beginnings of the design activity framework [@McKenna2014].
In this work, our team worked with a cyber security firm to redesign one of their visualization software tools.
We focused our redesign to create a series of sketches, wireframes, and mockups that visually communicated our ideas to the company's development team in order to improve their tool,
but the final artifacts and changes were limited by the company's development budget.
We found that a common aspect of failure in these projects and design studies was that less reflection and less control of the design process led to projects which were not as successful as they otherwise could have been.





## Designing for a Novel Technique

In collaboration with a statistician and biology researcher, a new scatterplot for encoding correlation was created, the s-CorrPlot [@mckenna2015s].
As shown in [@fig:scorrplot], the s-CorrPlot in (b) encodes as points different patches of the two images in (a) to enable measure of correlation exactly to a single variable of interest, as opposed to the challenges brought by a cluttered parallel coordinates plot (c) or clustered heatmap (d) for reading off these values.
The s-CorrPlot works by projecting the large data space into two dimensions for a variable of interest,
and further details can be found in the discussion of the technique [@mckenna2015s].
The scatterplot approach enabled useful interactions for exploring the plot and animating between projections of the data.
Several coordinated views were linked with the s-CorrPlot to illustrate its utility and released open-source as an R-package.


![
  Multiple correlation visualizations for two datasets containing a total of
  over 130,000 variables, $9 \times 9$ patches of two images (a), with 81
  observations (pixels) each. The proposed s-CorrPlot (b) reveals correlation
  structures between variables such as the highly correlated image patches
  shown at the bottom corresponding to a horizontal shift of a vertical edge.
  These continuous variations visible in the s-CorrPlot are not emphasized in a
  parallel coordinates plot (c) or a clustered heatmap of pairwise correlation
  coefficients (d). In (b) and (c), color indicates membership of the
  displayed variable from the images in (a). In (d), purple indicates strong
  positive correlation and orange strong negative correlation. Only the s-CorrPlot
  can plot all variables, due to computational and screenspace limitations of
  (c) and (d).
](figures/scorrplot/corr-house.pdf){#fig:scorrplot width="100%"}


We worked with a biologist at the University of Utah
who analyzes the correlation of **gene expression** --- how much a
gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively].
However, state-of-the-art approaches only support 10,000 to 20,000 genes [@langfelder2008wgcna; @oldham2008functional; @winden2009organization]
so they did not scale to the size of datasets that our collaborator struggles to analyze.


Using the s-CorrPlot tool, we enabled our collaborator to analyze the correlation of over 75,000 genes at once.
This enabled quick insights into the general correlation structure, such as that strong clusters emerged for one region of genes in the brain.
He anticipated that this data could reflect differences in the cell types
and mechanisms that regulate gene expression and the function of those two brain regions.
With a second dataset of 120,000 exons, or subparts of genes, our collaborator performed the first exon-level correlation analysis that he is aware of,
noting that patterns in the exon data are significantly different than that for the data at the gene-level.
This implies that differences in these brain regions could be described at a smaller scale than genes.
These insights are completely unknown and unexplored in our collaborator's field.
He commented:
*"This is revealing new brain-region specific patterns in the data
  that we were completely unaware of. It offers the potential for deriving
  entirely new hypotheses about the functional relationships between genes
  in different brain regions that we can test experimentally."*


While this is very promising work for a novel technique, the s-CorrPlot also failed our collaborator.
When publishing this work, we had to focus on the novel components and the mathematical description of why it worked.
Even when sharing this with our biology researchers in our collaborator's lab, we had difficulty in explaining what any particular scatterplot meant.
There were significant barriers to others using this tool for exploring their large datasets,
and even when they could use the tool it still limited them by what features were supported.
This is because the tool was designed as a general-purpose proof-of-concept of this novel projection technique.
When reflecting on this project, we realize that we had no formalized design process to ensure that user needs were being fed back into the design of this tool,
and that collaboration with another researcher led to different contributions and a less useful tool for our collaborators.





## Redesigning a Visualization System

We encountered the insufficiencies of current
visualization process models while working on a project with
a multidisciplinary design team consisting of two
visualization experts, two designers, and one psychologist. Our
team tackled the challenge of redesigning an existing
visualization tool in the area of cyber security. As our team
attempted to adopt the nine-stage framework for conducting
design studies [@Sedlmair2012b], we struggled to answer
questions such as: If I'm not starting from the beginning,
where exactly am I in the design process? What are the range
of methods that are useful at any given point? What types of
artifacts should I be working towards along the way? How do I
know my artifacts are good, or even just good enough, when
balanced against real-world constraints? We believe that
these questions point to a lack of *actionability* in
current visualization process models, or a lack of
implementable and immediately usable guidance that helps a
visualization practitioner explicitly navigate a real-world
visualization design process.


This seven-month
project focused on improving the usability and
effectiveness of an existing, robust visualization
system (RVS) for cyber security analysis.
Analysts working with cyber security data focus on maintaining
the security of computer networks, relying on data about how
a network is functioning, known network attack patterns, and a
broad range of external sources of knowledge.
Specifically,
our team was tasked with providing ideas and mock-ups for how to redesign
the visualizations within RVS --- the implementation of these
redesigns within RVS was handled by developers at the company that developed and
maintains RVS.


Over the
course of our redesign project we worked with: developers,
researchers, and managers at the RVS company; several Department of Defense intrusion
analysts who use RVS; and several cyber security
analysts at the University of Utah. This redesign project
included several real-world constraints for our
design team, namely
a strict time frame for producing redesign ideas, limited
funding available for implementing our ideas by software
developers, confidentiality issues surrounding cyber security
data, and the engineering realities of working within a
large software system.





## Redesign Project Timeline


We provide a
timeline for our redesign project in
[@fig:timeline], where activities are represented
as colored boxes. This timeline shows the flow of the project 
through multiple activities, including nested activities and
both forward and backward movement.
The timeline is annotated with many of the methods we used and the
artifacts we developed in our redesign process.


![
  This timeline provides a concise overview
  of our redesign project. Key design activities
  are located in the middle, highlighting both
  backwards movement and activities nesting within
  each other when team members worked separately.
  Our redesign project contained several key
  time constraints, or deadlines, listed at the
  top. Towards the bottom, we highlight numerous
  methods and artifacts utilized throughout our project.
](figures/daf/timeline.pdf){#fig:timeline width="100%"}


Other researchers have shown the
feasibility and usefulness of a design process timeline as
an effective way to communicate a design
process [@McLachlan2008; @Walz1993], to foster
collaboration [@Bohøj2010], and to highlight some
aspects of the multilinear nature of a design
process [@Atman2009; @Wolf2006]. Communication of the
design process is important not only for understanding and
evaluating the visualization research process itself, but
also for supporting replicability of problem-driven work.
Visualization models such as the nested
model [@Munzner2009] are now widely used to communicate
design decisions made over the course of a visualization
process, and we advocate for the design activity framework
to structure communication of a visualization design process
in a similar way.





## Redesign Project in the Design Activity Framework

Here we will walk through our redesign project and describe
our design process using the framework. This section focuses on
each activity of our redesign project, presented 
in rough, chronological order, and the methods we used and the
artifacts we achieved.
<!--
TODO table???
TODO uncomment all table references?
We will refer to
methods listed in [@tab:methods] using a prefix, such as the method of
controlled experiments (*M-28*).
-->
We note that this description is a
simplification of our process for the purposes of illustration.
[@fig:timeline] presents further details.


|     |     |
| --- | --- |
| ![](figures/daf/redesign/1-analysis.pdf){width="50%"} | ![](figures/daf/redesign/2-sketch.pdf){width="50%"} |
| a)  | b)  |
| ![](figures/daf/redesign/3-wireframe.pdf){width="50%"} | ![](figures/daf/redesign/4-components.pdf){width="50%"} |
| c)  | d)  |

|     |
| --- |
| ![](figures/daf/redesign/5-interface.pdf){width="100%"} |
| e)  |

![
  We provide an overview of the artifacts for our redesign
  project, starting from our a) software analysis, which
  resulted in b) initial concept sketches and c)
  wireframes. As we focused on more of the details, we
  moved into the make activity with d) laying out
  interface components and e) designing a fully-detailed
  revised interface.
  <!--
  TODO: supplemental materials
  These artifacts are provided at
  full-resolution in the Supplemental Materials.
  -->
](){#fig:redesign}


### Deploy --- Redesign Project

Since our redesign project focused on analyzing an existing
visualization 
system, the RVS, we started our design process in the deploy
activity.
Rather than test RVS and simply clean up usability
and aesthetic issues, however, our design team was tasked with
thinking of the broader task of cyber security analysis, the needs of
users within that workflow, and the role of visualization for
exploring computer network data. Ultimately, the RVS company
was interested in incorporating new visualization components into
their tool.


Although deploy is commonly the final activity for a completed,
successful visualization system, evaluating a deployed system may reboot the entire
design process to any earlier activity in order to extend, edit, or
even redesign the system. In our redesign
project we started in the deploy activity with the
existing RVS tool as the given deploy artifact,
forming a
constraint within our project.
We received a copy of
RVS in order to understand what needs
it currently addressed and what constraints it already
contained. 
We used a walkthrough tutorial and 
sample dataset <!--(*M-75*)--> built by the RVS company to explore
the features and efficacy of the tool.
Our analysis of RVS revealed that it was 
necessary for us to take a step back to the understand activity so
that we could
better discern the needs of cyber security analysts.
We have not yet returned to the deploy activity as
the RVS company is still involved with major redesigns of the tool.


### Understand --- Redesign Project

The field of
cyber security analysis has many types of users,
from those within companies who maintain their own networks, to
the military, which maintains and monitors traffic across a global
network grid.
A number of cognitive scientists have spent significant time observing
and interviewing cyber security
analysts [@DAmico2008; @Erbacher2010a; @Fink2009] across these
different facets. We used the
published work from these experts to form our base understanding of
the field as we had limited access to cyber security experts ourselves. 
First, we conducted an
extensive and broad literature review <!--(*M-53*)--> across
a series of 40 articles from several key domains:
cyber security visualization, situational awareness, and
cognitive task analysis. From this review we informally
evaluated the articles based on their relevance and
descriptive quality, isolating three of the articles as the
best representative samples with the highest impact for
forming our domain characterization.


Next, for these three articles each member
of our team did an informal open coding of the papers
<!--(*M-16*)--> to pull out salient themes. As individuals,
we tagged information broadly, and we then adjusted these
tags as a team over a series of meetings to organize and consolidate
the key insights we pulled from the papers. These insights
formed our initial set of artifacts, which pointed to a number of unmet
needs and
opportunities for visualization research. Some of these
artifacts included *opportunities* such as supporting
provenance-based tasks, increasing the scalability of visualizations to real-world
datasets, preserving data context as it is filtered across
many different visualizations, and optimizing the
representations of temporal data.


We revisited the RVS system with these opportunities in mind.
Since we were working with an existing, deployed version of
the RVS software,
we performed a broad artifact analysis <!--(*M-8*)--> on the
current software architecture, illustrated in
[@fig:redesign]a. By examining the 
workflow supported by RVS, we identified which
opportunities the tool already supported and which aspects of
the tool could be improved, and then evaluated these against our
initial list of opportunities. These findings were combined
with our project-specific *constraints* and
*considerations*, which included four months of the design team's
time, one month of a developer's time, and
existing visual conventions in the field
such as highlighting critical alerts in red.


Lastly, we conducted a series of semistructured interviews
with different stakeholders to identify needs and aspirations
<!--(*M-51*)-->, where these stakeholders included a developer
who works on RVS and several cyber security analysts at the
University of Utah. Based on this feedback, we 
met as a design team and informally evaluated and filtered the
list of opportunities
by reaching a group consensus on
those we felt best met the unmet needs of our
target users, balanced against the 
strengths and weaknesses of RVS and taking into account
the real-world constraints and considerations of the
project.
The final thematic design opportunities for our
redesign were 1) usability, 2) workflow improvements, 3)
desirability, and 4) temporal data representation. We also
developed a more low-level list of all artifacts, which
included a detailed data and task abstraction.


### Ideate --- Redesign Project

After our design team had identified the specific
design opportunities, constraints, and considerations for
our redesign, we were ready to come up with ideas.
This activity
took up several months as we sketched out a
series of possible ideas for modifying the current design of
RVS. First, each member of our team began to develop
separate concept sketches <!--(*M-23*)--> tackling a specific
opportunity, as illustrated in [@fig:redesign]b.
We chose this first method based on the experience of the
designers in our group as
they were used to sketching out possible concepts.
We then came together as a team to review these sketches and evaluate
them based on which ones possessed the most
potential for impacting a redesign of RVS.
This evaluation process was very informal; we met
as a design team and discussed some of the pros and cons
for each concept, ultimately coming to a group consensus. These
meetings were conducted as informal design critiques.
We also
shared a subset of these idealized sketches with the
researchers and managers at the RVS company in order to further validate,
filter, and confirm the different design concepts.


The ideas and concept sketches relied on two key data abstractions
that we
identified: computer networks
and time series data.
For example, one of our ideas for the visualization of a
computer network is a simplification of the nodes into subgroups and
supporting details-on-demand in order to allow the visualization to
scale to a larger dataset. For the
time-series data, we explored ideas for derived data,
such as network alerts or general traffic and activity.
For each data type, we explored
various encodings and interaction techniques that would
scale to different levels of the data; this scaling is
critical due to the quantity and spread of real-world
cyber security data.


The concept sketches proved to be useful in exploring
different ideas, but we wanted to explore some of these ideas in
more depth and detail.
Thus we synthesized the paper concept sketches
into very low-fidelity paper prototypes <!--(*M-61*)--> that
highlighted
interactions inside the tool. These ideas were
eventually finalized into more concrete wireframes
<!--(*M-98*)-->, shown in [@fig:redesign]c, to
mimic the look and feel of a real tool.
Again, we evaluated these wireframes very informally,
internally as a design team and with different members of the
RVS company, to check that our redesigns were on track for
meeting the analysts' needs. Due to the main
constraint of time within the project, we were
unable to evaluate these wireframes more formally with analysts.
These sketches and wireframes formed the
artifacts of our ideate activity.


### Make --- Redesign Project

The make activity was
conducted in part by our design team and also in part by the
RVS development team. As a design team, we generated a
number of digital
mockups; several of these were detailed wireframes
<!--(*M-98*)--> that focused on the layout of different
visualizations and interaction mechanisms, as shown in
[@fig:redesign]d.
In addition, we also mocked up
more detailed prototypes <!--(*M-67*)--> that showed how the different
visualizations would link together through user interactions. These
prototypes
synthesized all of our design ideas into an idealized,
revised interface, as illustrated in
[@fig:redesign]e.
The purpose behind this method
was to envision what RVS *could* be even though the
software implementation was
beyond the scope of what the developers could achieve given the
constraint of one month of their time.


After we finalized these detailed
and revised mockups, the RVS development team focused
on implementing these concepts into the existing software.
We note that the distinction here between the design team and
development team is somewhat unique to our redesign project;
most often in visualization design these two groups of people are
the same.
As a result of this implementation process, the development
team created a software prototype <!--(*M-67*)-->,
which they evaluated with
several network security analysts who work with RVS.
The RVS company sought a quick
and easy approach to minimize the time needed by
analysts to participate;
thus, this evaluation consisted of an A/B testing method
<!--(*M-1*)--> coupled with a questionnaire <!--(*M-69*)-->.
This evaluation received
positive feedback over the previous version of RVS, which
we took as a
validation of the design ideas
that had became concretized within the final artifact:
a new prototype of RVS.

