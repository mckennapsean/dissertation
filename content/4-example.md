# Formulation of the Framework {#sec:formulation}

\sm{update title and intro to reflect purpose}
\sm{add in methods}
\sm{add in timeline}
\sm{explain role wrt to framework (reflective? during? team? etc)}

\al{does this title work? eh on it...}
\sm{should I keep all of these projects together? or split them apart? include
sociology project? perhaps separate chapter for redesign project}
\sm{refocus this on just the one example project in the DAF}

The design activity framework was initially formulated from reflecting on
previous failed projects. At first, we pursued a design study in the field of
biology, working with a research lab studying mouse genetics through
correlation. With a statistics researcher, we created a new technique, the
s-CorrPlot, to encode correlation of large datasets in a scatterplot
[@mckenna2015s]. However, this project did not yield a successful design study,
since our collaborators could not go beyond exploration or basic hypothesis
generation with the tool. Upon reflection, we realized that we were driven to
build this tool for a novel technique, not to support the needs of the
researchers. This led into a second case study, in the field of cyber security,
where we worked with a team of designers, a psychologist, and visualization
experts to formulate the beginnings of the design activity framework
[@McKenna2014]. In this work, our team worked with a cyber security firm to
redesign one of their visualization software tools. We focused our redesign to
create a series of sketches, wireframes, and mockups that visually communicated
our ideas to the company's development team in order to improve their tool, but
the final artifacts and changes were limited by the company's development
budget. We found that a common aspect of failure in these projects and design
studies was that less reflection and less control of the design process led to
projects which were not as successful as they otherwise could have been.





## Redesigning a Visualization System

\al{why subsection? why not?}
\sm{perhaps we should have this be a chapter?}

We encountered the insufficiencies of current visualization process models while
working on a project with a multidisciplinary design team consisting of two
visualization experts, two designers, and one psychologist. Our team tackled the
challenge of redesigning an existing visualization tool in the area of cyber
security. As our team attempted to adopt the nine-stage framework for conducting
design studies [@Sedlmair2012b], we struggled to answer questions such as: If
I'm not starting from the beginning, where exactly am I in the design process?
What are the range of methods that are useful at any given point? What types of
artifacts should I be working towards along the way? How do I know my artifacts
are good, or even just good enough, when balanced against real-world
constraints? We believe that these questions point to a lack of *actionability*
in current visualization process models, or a lack of implementable and
immediately usable guidance that helps a visualization practitioner explicitly
navigate a real-world visualization design process.


This seven-month project focused on improving the usability and effectiveness of
an existing, robust visualization system (RVS) for cyber security analysis.
Analysts working with cyber security data focus on maintaining the security of
computer networks, relying on data about how a network is functioning, known
network attack patterns, and a broad range of external sources of knowledge.
Specifically, our team was tasked with providing ideas and mock-ups for how to
redesign the visualizations within RVS --- the implementation of these redesigns
within RVS was handled by developers at the company that developed and maintains
RVS.


Over the course of our redesign project we worked with: developers, researchers,
and managers at the RVS company; several Department of Defense intrusion
analysts who use RVS; and several cyber security analysts at the University of
Utah. This redesign project included several real-world constraints for our
design team, namely a strict time frame for producing redesign ideas, limited
funding available for implementing our ideas by software developers,
confidentiality issues surrounding cyber security data, and the engineering
realities of working within a large software system.





## Redesign Project Timeline


We provide a timeline for our redesign project in {*@fig:timeline}, where
activities are represented as colored boxes. This timeline shows the flow of the
project through multiple activities, including nested activities and both
forward and backward movement. The timeline is annotated with many of the
methods we used and the artifacts we developed in our redesign process.


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
\al{why is there a separation/gap between activities? }

Other researchers have shown the feasibility and usefulness of a design process
timeline as an effective way to communicate a design process [@McLachlan2008;
@Walz1993], to foster collaboration [@Bohøj2010], and to highlight some aspects
of the multilinear nature of a design process [@Atman2009; @Wolf2006].
Communication of the design process is important not only for understanding and
evaluating the visualization research process itself, but also for supporting
replicability of problem-driven work. Visualization models such as the nested
model [@Munzner2009] are now widely used to communicate design decisions made
over the course of a visualization process, and we advocate for the design
activity framework to structure communication of a visualization design process
in a similar way.





## Redesign Project in the Design Activity Framework

Here we will walk through our redesign project and describe our design process
using the framework. This section focuses on each activity of our redesign
project, presented in rough, chronological order, and the methods we used and
the artifacts we achieved.
<!--
We will refer to
methods listed in [@tab:methods] using a prefix, such as the method of
controlled experiments (*M-28*).
-->
We note that this description is a
simplification of our process for the purposes of illustration.
{*@fig:timeline} presents further details.


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
  These artifacts are provided at
  full-resolution in the Supplemental Materials.
  -->
](){#fig:redesign}

\al{figure is split across two pages?? figure is wonky...}

### Deploy

\al{here is a sub-sub-sections? is that working?}
\sm{moving to own chapter would fix that...}

Since our redesign project focused on analyzing an existing visualization
system, the RVS, we started our design process in the deploy activity. Rather
than test RVS and simply clean up usability and aesthetic issues, however, our
design team was tasked with thinking of the broader task of cyber security
analysis, the needs of users within that workflow, and the role of visualization
for exploring computer network data. Ultimately, the RVS company was interested
in incorporating new visualization components into their tool.


Although deploy is commonly the final activity for a completed, successful
visualization system, evaluating a deployed system may reboot the entire design
process to any earlier activity in order to extend, edit, or even redesign the
system. In our redesign project we started in the deploy activity with the
existing RVS tool as the given deploy artifact, forming a constraint within our
project. We received a copy of RVS in order to understand what needs it
currently addressed and what constraints it already contained. We used a
walkthrough tutorial and sample dataset <!--(*M-75*)--> built by the RVS company
to explore the features and efficacy of the tool. Our analysis of RVS revealed
that it was necessary for us to take a step back to the understand activity so
that we could better discern the needs of cyber security analysts. We have not
yet returned to the deploy activity as the RVS company is still involved with
major redesigns of the tool.


### Understand

The field of cyber security analysis has many types of users, from those within
companies who maintain their own networks, to the military, which maintains and
monitors traffic across a global network grid. A number of cognitive scientists
have spent significant time observing and interviewing cyber security analysts
[@DAmico2008; @Erbacher2010a; @Fink2009] across these different facets. We used
the published work from these experts to form our base understanding of the
field as we had limited access to cyber security experts ourselves. First, we
conducted an extensive and broad literature review <!--(*M-53*)--> across a
series of 40 articles from several key domains: cyber security visualization,
situational awareness, and cognitive task analysis. From this review we
informally evaluated the articles based on their relevance and descriptive
quality, isolating three of the articles as the best representative samples with
the highest impact for forming our domain characterization.


Next, for these three articles each member of our team did an informal open
coding of the papers <!--(*M-16*)--> to pull out salient themes. As individuals,
we tagged information broadly, and we then adjusted these tags as a team over a
series of meetings to organize and consolidate the key insights we pulled from
the papers. These insights formed our initial set of artifacts, which pointed to
a number of unmet needs and opportunities for visualization research. Some of
these artifacts included *opportunities* such as supporting provenance-based
tasks, increasing the scalability of visualizations to real-world datasets,
preserving data context as it is filtered across many different visualizations,
and optimizing the representations of temporal data.


We revisited the RVS system with these opportunities in mind. Since we were
working with an existing, deployed version of the RVS software, we performed a
broad artifact analysis <!--(_M-8_)--> on the current software architecture,
illustrated in {*@fig:redesign}a. By examining the workflow supported by RVS, we
identified which opportunities the tool already supported and which aspects of
the tool could be improved, and then evaluated these against our initial list of
opportunities. These findings were combined with our project-specific
_constraints_ and _considerations_, which included four months of the design
team's time, one month of a developer's time, and existing visual conventions in
the field such as highlighting critical alerts in red.


Lastly, we conducted a series of semistructured interviews with different
stakeholders to identify needs and aspirations (*M-51*), where these
stakeholders included a developer who works on RVS and several cyber security
analysts at the University of Utah. Based on this feedback, we met as a design
team and informally evaluated and filtered the list of opportunities by reaching
a group consensus on those we felt best met the unmet needs of our target users,
balanced against the strengths and weaknesses of RVS and taking into account the
real-world constraints and considerations of the project. The final thematic
design opportunities for our redesign were 1) usability, 2) workflow
improvements, 3) desirability, and 4) temporal data representation. We also
developed a more low-level list of all artifacts, which included a detailed data
and task abstraction.


### Ideate

After our design team had identified the specific design opportunities,
constraints, and considerations for our redesign, we were ready to come up with
ideas. This activity took up several months as we sketched out a series of
possible ideas for modifying the current design of RVS. First, each member of
our team began to develop separate concept sketches <!--(_M-23_)--> tackling a
specific opportunity, as illustrated in {*@fig:redesign}b. We chose this first
method based on the experience of the designers in our group as they were used
to sketching out possible concepts. We then came together as a team to review
these sketches and evaluate them based on which ones possessed the most
potential for impacting a redesign of RVS. This evaluation process was very
informal; we met as a design team and discussed some of the pros and cons for
each concept, ultimately coming to a group consensus. These meetings were
conducted as informal design critiques. We also shared a subset of these
idealized sketches with the researchers and managers at the RVS company in order
to further validate, filter, and confirm the different design concepts.


The ideas and concept sketches relied on two key data abstractions that we
identified: computer networks and time series data. For example, one of our
ideas for the visualization of a computer network is a simplification of the
nodes into subgroups and supporting details-on-demand in order to allow the
visualization to scale to a larger dataset. For the time-series data, we
explored ideas for derived data, such as network alerts or general traffic and
activity. For each data type, we explored various encodings and interaction
techniques that would scale to different levels of the data; this scaling is
critical due to the quantity and spread of real-world cyber security data.


The concept sketches proved to be useful in exploring different ideas, but we
wanted to explore some of these ideas in more depth and detail. Thus we
synthesized the paper concept sketches into very low-fidelity paper prototypes
<!--(_M-61_)--> that highlighted interactions inside the tool. These ideas were
eventually finalized into more concrete wireframes (_M-98_), shown in
{*@fig:redesign}c, to mimic the look and feel of a real tool. Again, we
evaluated these wireframes very informally, internally as a design team and with
different members of the RVS company, to check that our redesigns were on track
for meeting the analysts' needs. Due to the main constraint of time within the
project, we were unable to evaluate these wireframes more formally with
analysts. These sketches and wireframes formed the artifacts of our ideate
activity.


### Make

The make activity was conducted in part by our design team and also in part by
the RVS development team. As a design team, we generated a number of digital
mockups; several of these were detailed wireframes <!--(_M-98_)--> that focused
on the layout of different visualizations and interaction mechanisms, as shown
in {*@fig:redesign}d.


In addition, we also mocked up more detailed prototypes <!--(_M-67_)--> that
showed how the different visualizations would link together through user
interactions. These prototypes synthesized all of our design ideas into an
idealized, revised interface, as illustrated in {*@fig:redesign}e. The purpose
behind this method was to envision what RVS _could_ be even though the software
implementation was beyond the scope of what the developers could achieve given
the constraint of one month of their time.


After we finalized these detailed and revised mockups, the RVS development team
focused on implementing these concepts into the existing software. We note that
the distinction here between the design team and development team is somewhat
unique to our redesign project; most often in visualization design these two
groups of people are the same. As a result of this implementation process, the
development team created a software prototype (*M-67*), which they evaluated
with several network security analysts who work with RVS. The RVS company sought
a quick and easy approach to minimize the time needed by analysts to
participate; thus, this evaluation consisted of an A/B testing method (*M-1*)
coupled with a questionnaire (*M-69*). This evaluation received positive
feedback over the previous version of RVS, which we took as a validation of the
design ideas that had became concretized within the final artifact: a new
prototype of RVS.

\al{where is the line between ideate and make?}
\sm{deploy?}
