# Case Study: Redesigning a Visualization System {#sec:formulation}

\sm{add in methods}
\sm{add in timeline}
\sm{explain role wrt to framework (reflective? during? team? etc)}

<!--\sm{to help this section, we should better highlight stuff from the nested model and 9-stage framework. what was missing? how did this help?}-->

The design activity framework was initially formulated from reflecting on a
previous project where I was very much a novice visualization designer. For this
project, visualization researchers worked with a team of designers, a
psychologist, and a cyber security firm to tackle a redesign of that firm's
visualization system [@McKenna2014]. We focused our redesign to create a series
of sketches, wireframes, and mockups that visually communicated our
visualization and interface ideas to the company's development team in order to
improve their tool. While the final changes to the system were limited by the
company's development budget and time, we found that a reflection on this
project yielded useful insights which we used to create the design activity
framework. In particular, the visualization design artifacts and methods we
utilized with other visualization novices played a significant role in the
success of this project. Lastly, we reflected on our team's overall design
process by incorporating and summarizing these aspects into a design timeline.





## Overview of the Redesign Project

I encountered the insufficiencies of current visualization process models while
working on a project with a multidisciplinary design team consisting of a
visualization expert, two designers, and one psychologist. I was a novice
visualization designer at the time, one year into my Ph.D. and still learning
about data visualization. Our team tackled the challenge of redesigning an
existing visualization tool in the area of cyber security. As our team attempted
to adopt the nine-stage framework for conducting design studies
[@Sedlmair2012b], I noted that we struggled to answer questions such as: If I'm
not starting from the beginning, where exactly am I in the design process? What
are the range of design methods that are useful at any given point? What types
of visualization artifacts should I be working towards along the way? How do I
know my artifacts are good, or even just good enough, when balanced against
real-world constraints? We believe that these questions point to a lack of
_actionability_ in current visualization process models, or a lack of
implementable and immediately usable guidance that helps a visualization novice
explicitly navigate a real-world visualization design process.


This seven-month project focused on improving the usability and effectiveness of
an existing, robust visualization system (RVS) for cyber security analysis.
Analysts working with cyber security data focus on maintaining the security of
computer networks, relying on data about how a network is functioning, known
network attack patterns, and a broad range of external sources of knowledge.
Specifically, our team was tasked with providing ideas and mock-ups for how to
redesign the visualizations and interface within RVS --- the implementation of
these redesigns within RVS was handled by developers at the company that
developed and maintains RVS.


Over the course of our redesign project we worked with: developers, researchers,
and managers at the RVS company; several Department of Defense intrusion
analysts who use RVS; and several cyber security analysts at the University of
Utah. This redesign project included several real-world constraints for our
design team, namely a strict time frame for producing redesign ideas, limited
funding available for implementing our ideas by software developers,
confidentiality issues surrounding cyber security data, and the engineering
realities of working within a large software system.


From our own teaching experience, we have found that showing off a real-world
visualization project is an effective way to initially teach visualization
design to novices. For this case study, we will describe our redesign project
and design process using the design activity framework. We will focus on a
single design activity at a time. We present this discussion in rough,
chronological order. In this discussion, we incorporate the methods we utilized
and the visualization artifacts which were achieved. Each method number we
reference stems from the collection of example methods in [@tbl:methods] and the
full list of 100 methods included in the Appendix, such as the method of
controlled experiments (_M-28_).
<!--\sm{TODO another reference to the appendix}-->


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
  moved into the _make_ activity with d) laying out
  interface components and e) designing a fully-detailed
  revised interface.
](){#fig:redesign}

<!--\al{figure is split across two pages?? figure is wonky...}-->
<!--\sm{agreed - how can we fix this? table issue is a problem. need to come up with a better solution, perhaps lay out figure in Illustrator? full page?}-->
<!--\sm{TODO fix this figure!!!}-->





## Redesign Project: Deploy Activity

Since our redesign project focused on analyzing an existing visualization
system, the RVS, we started our design process in the _deploy_ activity. Rather
than test RVS and simply clean up usability and aesthetic issues, however, our
design team was tasked with thinking of the broader task of cyber security
analysis, the needs of users within that workflow, and the role of visualization
for exploring computer network data. Ultimately, the RVS company was interested
in incorporating new visualization components into their tool.


Although _deploy_ is commonly the final activity for a completed, successful
visualization system, evaluating a deployed system may reboot the entire design
process to any earlier design activity in order to extend, edit, or even
redesign the system. In our redesign project we started in the _deploy_ activity
with the existing RVS tool as the given _deploy_ visualization artifact, forming
a constraint within our project. We received a copy of RVS in order to
understand what needs it currently addressed and what constraints it already
contained. We used a walkthrough tutorial and sample dataset (_M-75_) built by
the RVS company to explore the features and efficacy of the tool.


Our analysis of RVS revealed that it was necessary for us to take a step back to
the _understand_ activity so that we could better discern the needs of cyber
security analysts. Since the final visualization system is managed by the RVS
company, we did not revisit the _deploy_ activity ourselves, but we do know that
the changes that the company made to the tool were eventually pulled in as part
of their visualization product. However, the scope of our redesign visualization
project only started at this activity and took a step back to envision other
possible encodings and techniques to improve the existing visualization system.





## Redesign Project: Understand Activity

The field of cyber security analysis has many types of users, from those within
companies who maintain their own networks, to the military, which maintains and
monitors traffic across a global network grid. A number of cognitive scientists
have spent significant time observing and interviewing cyber security analysts
[@DAmico2008; @Erbacher2010a; @Fink2009] across these different facets. We used
the published work from these experts to form our base understanding of the
field as we had limited access to cyber security experts ourselves. First, we
conducted an extensive and broad literature review (_M-53_) across a series of
40 articles from several key domains: cyber security visualization, situational
awareness, and cognitive task analysis. From this review we informally evaluated
the articles based on their relevance and descriptive quality, isolating three
of the articles as the best representative samples with the highest impact for
forming our domain characterization for the visualization of cyber security
data.


Next, for these three articles each member of our team did an informal open
coding of the papers (_M-16_) to pull out salient themes. As individuals, we
tagged information broadly, and we then adjusted these tags as a team over a
series of meetings to organize and consolidate the key insights we pulled from
the papers. These insights formed our initial set of visualization artifacts,
which pointed to a number of unmet needs and opportunities for visualization
research. Some of these artifacts included design _opportunities_ such as
supporting provenance-based tasks, increasing the scalability of visualizations
to real-world datasets, preserving data context as it is filtered across many
different visualizations, and optimizing the representations of temporal data.


We revisited the RVS system with these design opportunities in mind. Since we
were working with an existing, deployed version of the RVS software, we
performed a broad artifact analysis (_M-8_) on the current software
architecture, illustrated in [@fig:redesign]a. By examining the workflow
supported by RVS, we identified which opportunities the tool already supported
and which aspects of the tool could be improved, and then evaluated these
against our initial list of design opportunities. These findings were combined
with our project-specific _constraints_ and _considerations_, which included
four months of the visualization team's time, one month of a developer's time,
and existing visual conventions in the field of cyber security such as
highlighting critical alerts in red.


Lastly, we conducted a series of semistructured interviews with different
stakeholders to identify needs and aspirations (_M-51_), where these
stakeholders included a developer who works on RVS and several cyber security
analysts and managers at the University of Utah. Based on this feedback, we met
as a design team and informally evaluated and filtered the list of design
opportunities by reaching a group consensus on those we felt best met the unmet
needs of our target users, balanced against the strengths and weaknesses of RVS
and taking into account the real-world constraints and considerations of the
project. The final thematic design opportunities for our visualization redesign
were 1) interface usability, 2) workflow improvements, 3) tool desirability, and
4) temporal data representation. We also developed a more low-level list of all
visualization artifacts, such as a detailed data and task abstraction.





## Redesign Project: Ideate Activity

After our design team had identified the specific design opportunities,
constraints, and considerations for our visualization redesign, we were ready to come up with
ideas to meet user needs. The _ideate_ activity took up several months as we sketched out a series of
possible ideas for modifying the current design of RVS. First, each member of
our team began to develop separate concept sketches (_M-23_) tackling a
specific design opportunity, as illustrated in [@fig:redesign]b. We chose this first
method based on the experience of the designers in our group as they were used
to sketching out possible concepts. We then came together as a team to review
these sketches and evaluate them based on which ones possessed the most
potential for impacting a redesign of RVS. This evaluation process was very
informal; we met as a visualization team and discussed some of the pros and cons for
each concept, ultimately coming to a group consensus. These meetings were
conducted as informal design critiques. We also shared a subset of these
idealized sketches with the researchers and managers at the RVS company in order
to further validate, filter, and confirm the different design concepts.


The ideas and concept sketches relied on two key data abstractions that we
identified: computer networks and time series data. For example, one of our
ideas for the visualization of a computer network is a simplification of the
nodes into subgroups and supporting details-on-demand in order to allow the
visualization to scale to a larger dataset. While scalability can be a later
concern in the _deploy_ activity, we found that perhaps revisiting the data
abstraction could help simplify and improve the resulting visualizations so they
could handle and show more data at once. For the time-series data, we explored
ideas for derived data, such as network alerts or general traffic and activity.
For each data type, we explored various encodings and interaction techniques
that would scale to different levels of the data; this scaling is critical due
to the quantity and spread of real-world cyber security data.


The concept sketches proved to be useful in exploring different ideas, but we
wanted to explore some of these ideas in more depth and detail. Thus we
synthesized the paper concept sketches into very low-fidelity paper prototypes
(_M-61_) that highlighted interactions inside the tool. These ideas were
eventually finalized into more concrete wireframes (_M-98_), shown in
[@fig:redesign]c, to mimic the look and feel of a real tool. Again, we evaluated
these wireframes very informally, internally as a visualization team and showed
our ideas to different members of the RVS company, to check that our _ideate_
visualization artifacts (sketches, paper prototypes, and wireframes) were on
track for meeting the analysts' needs. Due to the main constraint of time within
the project, we were unable to evaluate these wireframes more formally with
analysts.





## Redesign Project: Make Activity

The _make_ activity was conducted in small part by our visualization team and also in part by
the RVS development team. As a design team, we generated a number of digital
mockups; several of these were detailed wireframes (_M-98_) that focused
on the layout of different visualizations and interaction mechanisms, as shown
in [@fig:redesign]d.


In addition, we also mocked up more detailed prototypes (_M-67_) that showed how
the different visualizations would link together through user interactions.
These prototypes synthesized all of our design ideas into a revised interface,
as illustrated in [@fig:redesign]e. The purpose behind this method was to
envision what RVS _could_ be even though a complete software implementation was
beyond what our visualization could perform given our constraint of time. We
considered real-world datasets and user workflows when creating and formulating
both the digital mockups and detailed wireframes, which are the visualization
artifacts we created in the _make_ activity. While some may consider these as
ideas and not prototypes, our visualization team had finalized making decisions
at the abstraction level and focused not on new ideas but on encodings and
interaction techniques in these artifacts, so we argue that this goes beyond the
_ideate_ activity and resulted in visualization prototypes that could be tested
with users.

<!--\al{where is the line between ideate and make?}-->
<!--\sm{how does this help? I agree it was vague before, I added some clarifications}-->


After we finalized these detailed and revised mockups, the RVS development team
focused on implementing these concepts into the existing software. We note that
the distinction here between the visualization team and development team is
somewhat unique to our redesign project; most often in visualization design
these two groups of people overlap or work closely in cohort. As a result of
this implementation process, the development team created a software prototype
(_M-67_), which they evaluated with several network security analysts who work
with RVS. The RVS company sought a quick and easy approach to minimize the time
needed by network security analysts to participate; thus, this evaluation
consisted of an A/B testing method (_M-1_) coupled with a questionnaire
(_M-69_). This evaluation received positive feedback over the previous version
of RVS, which we took as a validation of the design ideas that had became
concretized within the final visualization artifact: a new prototype of RVS.
While the company behind RVS likely continued implementing changes and deploying
aspects into their visualization system, we were not involved with this design
and development process.





## Redesign Project Timeline


We provide a timeline for our redesign project in [@fig:redesignTimeline], where
design activities are represented as described in [@sec:timelines]. This
visualization project's timeline shows the flow over time as we conducted
multiple design activities, including nested activities and both forward and
backward movement. The timeline is annotated with many of the design methods we
used and some of the visualization artifacts we created and validated during our
redesign. Characterizing our design process and creating this timeline were
possible using the language and structure of the design activity framework,
which previous visualization design models did not support or outline.


![
  This timeline provides a concise overview
  of our redesign project. Key design activities
  are located in the middle, highlighting both
  backwards movement and activities nesting within
  each other when team members worked separately.
  Our redesign project contained several key
  time constraints, or deadlines, listed at the
  top. Towards the bottom, we highlight numerous
  design methods and visualization artifacts utilized throughout our project.
](figures/daf/timeline.pdf){#fig:redesignTimeline width="100%"}

<!--\al{why is there a separation/gap between activities? }-->
<!--\sm{revisit timeline, clean up any strange gaps that exist?}-->


We show this timeline in more detail in [@fig:redesignTimeline] than previously
shown in the bottom of [@fig:timelines]. The difference of these two timelines
shows the flexiblity of the design activity framework to capture both the
high-level view of a design project and the pattern or flow of design activities
as well as the low-level detail of specific visualization artifacts and design
methods utilized. These design timelines could be further enhanced by
highlighting levels of the nested model or details of visualization design
decisions made throughout the process. We found that keeping track of these
activities can help novices meet deadlines by focusing on specific design
activities and visualization artifacts as well, which is why we highlight these
deadlines explicitly in the timeline as well. These visualization design
timelines can help the communication of a design process internally with a
design team during the process or externally after the fact with research
colleagues or managers to provide a concise overview of the results and work
conducted.

