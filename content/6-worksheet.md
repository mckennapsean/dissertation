# Design Activity Framework Worksheets

<!-- Worksheets for Guiding Novices through the Visualization Design Process-->

For visualization pedagogy, an important but challenging aspect to teach is
design.
<!--Making and characterizing decisions with when they occur during the design-->
<!--process is tricky even for expert visualization designers.-->
Previous work on the design activity framework introduced a simplified but cross-cutting
framework for combining design decisions with where they fit in the design
process. However, this work does not present concrete steps
for a novice visualization designer to step through the design process on their
own. We have created a design worksheet for each of the four design activities:
*Understand*, *Ideate*, *Make*, and *Deploy*. Each
worksheet presents a high-level summary of the activity with actionable, guided
steps for a novice designer to follow. We validated the use of this framework
and the worksheets in a graduate-level visualization course taught at our
university. For this evaluation, we surveyed the class and 13 students who
voluntarily utilized these design worksheets for their cumulative projects. We
conducted a series of interviews to garner additional open-ended feedback and
suggestions. Lastly, we conclude this work with a discussion and highlight
various areas for future work on improving visualization design pedagogy.

## Introduction

To teach design in data visualization, educators combine many foundational
components, from user interface principles [@Shneiderman2004] to data and
encoding taxonomies [@Munzner2014]. Additional pedagogical materials for the
field focus on visual principles [@Tufte1986; @cairo2012] or perceptual
ones [@Ware2010] as a basis for creating and judging data visualizations.
Educators may also apply these principles and techniques in the classroom
through the use of design critiques or a cumulative project. These visualization
projects could be guided by several textbooks which expound upon different
design processes [@Ware2010; @Shneiderman2004] or design decision
models [@Munzner2014] to help novice visualization designers learn how to
effectively and methodically build and validate visualization systems.

Many of the pedagogical approaches to the visualization design process, however, 
are theoretical in nature. From our
own combined teaching experiences we have witnessed students struggle to incorporate these theory-based design concepts into their practical, hands-on projects.
%these challenges
%first-hand, and we have struggled to effectively teach visualization design
%process and methodologies to beginning graduate students since not all novice
%visualization designers grasp onto these concepts. 
As such, we believe there is an opportunity for new approaches to teaching
the next generation of visualization designers, equipping them with not just theoretical knowledge but
also the practical steps for building better systems and tools.

McKenna et al. [@McKenna2014] describe one such theoretical model of the
design process with four actionable design activities:
*understand*, *ideate*, *make*, and *deploy*. Each
of these activities includes a goal, target artifact or outcomes, and a table of
design methods, each of which were included to make the process model more actionable. We found, however, that the theoretical framing of the model restricted and limited its use and actionability in
the classroom or class project settings. To address these limitations we crafted
a design worksheet for each design activity with steps to assist a novice
through the visualization design process. Furthermore, we validated the use of
these worksheets in a graduate-level visualization course with 13 students in
their cumulative projects. In this paper we present the design activity worksheets --- concrete steps for novices to walk through
the process of designing visualizations --- along with an evaluation of the effectiveness of these worksheets, highlighting their strengths and limitations.

<!--
The contributions of this work are as follows:
-  design activity worksheets with concrete steps for novices to walk through
%the process of designing visualizations
-  an evaluation of the effectiveness of these worksheets highlighting what
%worked and improvements to be made
-->

## Related Work

The design activity framework introduced by McKenna et al. contains activities of
the design process with a breakdown of each activity's motivation, artifacts,
and design methods [@McKenna2014]. These activities are an extension of the
core design phase of Sedlmair \etalns's nine-stage framework for design
studies [@Sedlmair2012b]: discover, design, implement, and deploy. This adapted framework, however,
supports more general problem-driven visualization
challenges and researchers without visualization expertise, as well as projects with tight deadlines as is
often seen in the classroom. The authors of the design activity framework claim
its actionability, but this was never shown beyond the authors' use-case. A
clear path for future work remains to validate the actionability of this
framework to teach novices how to conduct a visualization design project.

For the past few decades, pedagogy for data visualization and human-computer
interaction has begun to shift from academic or theoretical foundations
towards including skills for design, critique, and critical
analysis [@Reimer2003; @Rushmeier2007; @Hearst2016; @He2017]. An effective
pedagogical methodology is the use of design studios incorporated into the
classroom setting [@Greenberg2009; @Reimer2003; @He2017], inspired by its use in
fields like architecture, design, and art. For visualization, educators often
incorporate practical exercises or real-world projects for students to learn
about design [@Kerren2008], such as VizIt cards [@He2017] to teach and
reinforce visualization concepts during an in-class design studio.
Human-computer interaction educators have noted that computer science students
in a design studio tend to focus more on idea refinement rather than broad idea
generation and innovation [@Cennamo2011]. As such, guidance for the design
process, both generating and evaluating visualization design artifacts, is often a
missing component within the visualization pedagogy.

The five design-sheet methodology [@Roberts2015] utilizes worksheets to
structure and guide visualization students through the ideation process. This
approach by Roberts et al. encourages engineering-type students to think
divergently, creatively, and sketch out ideas on paper when first designing a
visualization. Their approach begins with brainstorming, followed by three
unique designs, and a realization sheet for the final tool. The authors
validated their methodology with 53 students over several
years [@Roberts2015]. In a workshop at the 2016 IEEE VIS conference that used these worksheets, we
experienced a limitation of using this approach too soon: many steps must occur first
such as data collection, identifying the challenge, focusing on a target user,
and finding tasks. The authors elude to this in their paper with different
preparation steps, but these steps can be non-trivial and tricky for novices.
Thus, it would be beneficial to establish and evaluate more worksheets beyond
ideation for data visualization pedagogy.

<!--
\sm{below is on the evaluation of the 5-ds, which we can bring up briefly in
the methodology section instead}
The authors further evaluated this technique for teaching with masters
students in information visualization. In their evaluation, a total of 53
students completed these design sheets over the span of 2 hours to come up
with different ways to visualize their own chosen data set, after which they
received feedback and additional time to finalize their
designs [@Roberts2015]. After grading the sheets, the researchers compared
grades of the design sheets to the rest of the class with their final tool or
project grade and whole grade, as well as an anonymous survey to gather
feedback on the entire course including the design sheets. Generally, they
found that the design sheets aided students in planning and organizing a
design section for the project write-up, and it also encouraged students to
think divergently which is a skill not often taught in computer science.
-->

## Worksheets for the Design Activity Framework

The first contribution of this work is the creation of design worksheets that
follow the design process and decisions illustrated by the design activity
framework [@McKenna2014]. In this section, we discuss our process behind
creating these teaching materials and provide examples of their use. The
worksheets and teaching materials are located in a public
repository\footnotemark for their dissemination and use by
others, and we encourage feedback and improvements to these teaching materials
over time.

<!-- TODO how to do a footnote??? or appendix?
\footnotetext{Supplemental Materials can be accessed via:
\url{https://design-worksheets.github.io}}
-->

Inspired by the five design-sheet methodology [@Roberts2015], we wanted to embody the design process into worksheets to enhance the
teaching of an otherwise theoretical design process to new students. Our first goal
was to create a worksheet for each of the design activities:
*understand*, *ideate*, *make*, and *deploy*. To do
so, we reflected on our combined research and design experiences across each,
and we broke down each activity into a series of tangible and generalized steps (see [@tab:steps]). These steps are akin to design methods which can be generative or evaluative in nature.
<!-- TODO change table reference somehow? crossref may support? -->


<!-- TODO check out table! how to underline in markdown?-->
| *\underline{understand}* | *\underline{ideate}* | *\underline{make}* | *\underline{deploy}* |
| :-- | :-- | :-- | :-- |
| identify the challenge \& users | select a design requirement | set an achievable goal | pinpoint a target audience |
| find questions \& tasks | sketch first idea | plan encodings \& layouts | fix usability concerns |
| check with users or explore data | sketch another idea | plan support for interactions | improve points of integration |
| brainstorm design requirements | sketch final idea | sketching additional views | refine the aesthetics |
| compare \& rank design requirements | compare \& relate your ideas | build the prototype \& check-in | consider a method to evaluate |
![
  Each design activity was broken down into five concrete steps. The first
  four steps are generative, to establish design requirements, sketches,
  prototypes, or visualization systems. The fifth step is evaluative, to
  compare different artifacts in order to justify decisions and record that
  reasoning down for later use. We presented these five steps to students
  using design worksheets, like in {@fig:worksheets}.
](){#tab:steps}


<!-- TODO fbox around graphic? -->
![
  Here we show the Understand worksheet, tailored to help students identify
  their problem, users, data, and requirements for a data visualization
  system. The other worksheets we created are included in the Supplemental
  Materials.
](figures/worksheets/worksheet-understand.pdf){#fig:worksheets width="90%"}


We introduce the first design worksheet for the *understand* activity in
{@fig:worksheets}. At the top of each sheet we describe the goal and
resulting artifact or outcome for the activity. Each sheet can be
numbered in the top-right for keeping track of order, for planning, and
retrospection. For each worksheet's five steps we included additional helper
text to guide students towards finding the answer. We included warnings about
when to jump back to previous boxes or worksheets, and icons to illustrate the
expected type of answer for each box: a list, a sketch, or a table. Lastly, the
bottom contains a list of icons pointing to the potential next worksheet.
% depending on the success of previous activities, showing how to use the
% worksheets in a more complex, iterative process.

To create the worksheets, we combined the design activity framework
definitions with related worksheets used by a colleague
running design studios in our university's architecture and design department,
resulting in five steps for each design activity. Knowing that engineering-type
students could benefit from focusing on generation of artifacts, we utilized four
of the steps for generation, and the *ideate* sheet used three sketches
like the five-design sheet methodology. We targeted each
step's instructions for a visualization project based on our own experience
building visualization systems. After our first iteration we presented the
worksheets to our visualization research group and received a series of
recommendations for improvements including to place more of a focus on users early and to
simplify complex, theoretical terminology. We also walked through one of
our projects using the worksheets to identify further elements to add: more
helper text, warning icons, expected results for each step, and a label at the
top for attachments.

Before introducing design worksheets to students, we needed to form a basis of
understanding, both in terminology and contextualized into a real-world
visualization example. We created an 80-minute lecture on visualization design,
which teaches both the design activity framework and the
nested model for design decisions [@Munzner2009], which is used to help categorize design decisions during each activity, centered around the design
of a cyber-security visualization dashboard [@mckenna2016]. By utilizing
this real-world project we were able to explain the theory with actual
concepts. Additionally, we mocked up an example of this project using the design
worksheets to illustrate how to capture a complex, iterative design process
utilizing the design worksheets. An overview of this example is provided in
{@fig:example}. We include a copy of our lecture materials in the Supplemental Materials.


![
  We created these worksheets with linked sketches in collaboration with the
  original authors of the BubbleNet dashboard [@mckenna2016]. This
  real-world project showcases how to utilize the worksheets and highlights
  how to capture a complex, iterative design process. A detailed copy of each
  worksheet and sketches is included in Supplemental Materials.
](figures/worksheets/worksheet-example.jpg){#fig:example width="100%"}


## Evaluation Methodology

<!--
In order to conduct an evaluation of the design worksheets we created, we
employed the worksheets for use in a clasroom setting.
-->
We gave a lecture on
visualization design described in the previous section to all 66 students in our university's graduate-level visualization course. The lecture was followed by an in-class exercise that had
students analyze and redesign an existing visualization using the first two
worksheets: *understand* and *ideate*. As part of the course
students formed groups to complete a cumulative project, to design and build
a web-based interactive visualization system. We recruited 13 volunteers from
the course to complete the design worksheets for each of their six group
projects, mentored by the primary author of this work.
<!--
One student was not part of the original volunteers, but due to complications
with their project they reached out to the teaching staff for further help and
guidance with the design of their project.
-->
For details on the project expectations, deadlines, and grading criteria, please
see Supplemental Materials.
<!-- \footnotemark[\value{footnote}] \sm{this is on a previous page...}-->


To evaluate the efficacy of worksheets in supporting the design process of the final project we conducted a full-course survey, a focused survey for students
who used the worksheets, and interviews with student participants to elicit
in-depth worksheet feedback and clarify necessary details.
Additionally, the mentor met with each of the visualization
groups weekly to provide feedback on their design and on the worksheets. These meetings provided
a basis for obtaining in-person observations, in addition to the feedback
acquired anonymously through the surveys and detailed interviews. All of the
questions and prompts used for the surveys and interviews are included in the
Supplemental Materials.

To gather anonymous feedback and assess the utility of the design worksheets for
teaching the course, we sent a survey out to all of the students at the end of
the course. Specifically, we asked questions about students' comfort level with
design before and after taking the course along with which factors taught
students how to design visualizations: lectures, in-class exercises,
design worksheets, and the cumulative project. Additionally, we sent an
anonymous survey to those who used the design worksheets. In this survey we
asked which worksheets worked well and which ones did not, and why, along with ten questions on the worksheets' usefulness.
<!--which vary in their positivity, to avoid positivity bias towards the worksheets.-->

After the projects were completed 11 students, at least one from each project, participated in an interview to
provide feedback on the design worksheets.
<!--
We audio recorded each interview to more efficiently take notes.
For each person, we explained the goals of this project and at the end asked for
consent to utilize quotes in a publication.
-->
The interview questions focused on digging deeper into the survey findings.
We asked open-ended questions to gather improvements and suggestions for the
next iteration of the worksheets. At the beginning of the interview, we asked
each student to briefly describe the steps of the design process in their own
words in order to informally test recall of the high-level concepts.


## Evaluation Results

For the full-class survey we received 25 responses. All but 2 students showed an
improvement in their comfort level for visualization design, on average 2 out of
5 points higher by the end of the course. Students ranked these improvements
based on where they learned how to design, which was primarily through the
lectures, projects, and class exercises. The design worksheets received a
significantly larger portion of neutral responses for helping students learn,
possibly since only some students used them in their projects. We compared the
ratio of agreement to disagreement of these materials helping students learn,
and the design worksheets were on the level of other methods utilized in the
course: design worksheets (13:1), lectures (23:1), exercises (20:2), and
projects (18:2).

For the survey sent to the students who used the worksheets, we received a total
of 7 responses. Overall, the *ideate* (6 students) and
*understand* (4 students) worksheets were selected as the most helpful.
Students stated that the *ideate* worksheet helped them critique their own designs, while *understand* helped get their project off the ground.
<!--
As stated by some of the students: ``Ideate: critique of ones own design was
most helpful'' and ``[Ideate] is the most clear worksheet'' and that both
understand and ideate worksheets ``helped to get the project off the ground.''
-->
On the flip side, the *deploy* (4 students) worksheet was selected as the
least helpful because students often ran out of time at the end.
<!--
``we were out of time'' and ``once the
projects were off the ground, didn't seem too important.''
-->
Student feedback
highlighted a benefit for the specific steps in an activity to organize and
record their design process.
<!--
It seemed that the amount of text, guidance, and time taken achieved a proper
balance.
-->
Additional feedback highlighted some drawbacks to the worksheets, such
as vague terminology or phrasing, creative limitations, and not enough
structure. To uncover more information, we conducted interviews as a follow-up.
<!--
\mm{no participant numbers for these quotes? i'd say either use all the time, or not at all.}
\sm{removed the quotes, paraphrased instead}
-->

<!-- TODO should quotes be regular or escaped...? -->

During the follow-up interviews we asked students to describe the design process in their
own words, and all students were spot on in their descriptions of the
various activities.
<!--
Four students correctly recalled the activity names, but four other
students were fuzzy on the *deploy* activity---possibly since most groups
did not go through this activity.
-->
As with the survey, all of the students found
the *understand and *ideate* worksheets the most useful since it
forced them to consider different tasks, users, and ideas, whereas
*deploy* was often not reached in the course of the project. Students noted that the worksheets
provided a structured way to organize and compare notes of different design
artifacts. Three students stated that the worksheet example project was helpful
in showcasing how to use the worksheets. Nine students either followed their own
design process informed by the worksheets or stuck to the worksheets entirely.
One group that conducted their own design process acknowledged that their design
process, while different, still mapped onto the steps provided in each activity.
Another student recognized the flexibility of the worksheets:
<!-- for different visualization systems: -->
``if I had a different project, I would use each box in
different ways depending on the context'' (P8).

All of the students agreed that evaluation was a necessary and important step
for design in order to pinpoint flaws in your understanding of the problem, users,
tasks, and encodings. One group
discovered that their project was better suited to a subset of users, and
another group realized that a particular encoding resulted in points overplotting
from feedback during an advisor meeting. All
students agreed that worksheets helped them document their design process for their
final project report. These worksheets served as a ``snapshot in
time'' (P1) and were sufficiently detailed to explain their design process for
the report. Eight of the students described an iterative process that occurred
during the process, although informal and not written on any
worksheets. When digging into this informality, students pinpointed that
worksheets helped organize their thoughts.
<!-- and gave concise names for the design process. -->
Furthermore, the activities helped guide novice designers, such as one student
who used the design worksheets for the first time later in
their project and that ``when I used [the] worksheets it kept me focused on what
I was doing and trying to get more ideas or more [encodings]'' (P8).

An intriguing finding was that four students employed the worksheets in
surprisingly creative ways. For example, one student loaded the *ideate*
worksheet in PDF form on their tablet and zoomed in to sketch various
aspects of their visualization design, allowing them to expand and use more
space for the sketch. Also, another detail-oriented student
transferred the worksheet into textual form, to brainstorm and add detail to the
problem and requirements.
<!--
Since this student was very detail-oriented, having the additional space and
flexibility helped harness their creative ability.
-->
Four students expressed frustration with the paper worksheets because they
preferred another format, whether digital, larger paper, or the ability to
structure their notes how they wish. As one student put it, ``I
think the concepts are very helpful in the worksheets .... [but] for a free form
thinker ... if you box it in then it is sort of restricting your creativity, as
it tells you how much you have to fit into where'' (P9). Students suggested
improvements and other feedback which we explore in the next
section.


## Discussion

<!-- TODO again table ref -->
To address this constraint on creativity, a key improvement recommended by five
students was to convert the worksheets into a checklist for each step, as in
[@tab:steps].
<!-- Based on our interviews -->
We would recommend two
types of resources, since worksheets did provide structure, ``it's like a checklist to make sure everything is covered'' (P11),
but the worksheets did limit free-form thinkers: ``if you have a lot of things
on your mind, you won't fit everything in the box anyways'' (P6).
<!--
so the boxes are actually wasting paper''
While some visualization designers recommend paper for
sketching [@Roberts2015], there are those in the design community that argue
digital sketching can have functional benefits like shapes, undo, layers,
duplication, and
manipulation of details through
zooming [@Wu2011], which two students did.
-->
Another idea was to transform the
worksheets into an app: ``a clickable, interactive worksheet, where you click on
this [and] it will connect you with the other worksheet and have a screenshot'' (P8).

Students suggested adding more worksheets to the materials. Six students felt
that ``those activities frame the process well'' (P2). However, two students
brought up a crucial aspect of evaluation and feedback, since it may be
worthwhile to devote a whole worksheet towards these concepts, otherwise ``if
you have it on the other worksheets, [evaluation] doesn't seem to have as much
value'' (P10).
<!--
A key challenge for this project was finding the right dataset,
-->
Four students requested a worksheet to help you probe into and explore your
data
<!--
by providing guidance and questions on aspects of the data so that issues
with the data can be avoided later, which is exactly what happened with 2
projects.
-->
Lastly, 3 students requested a worksheet on
how to structure their code, particularly in the case of 1 group which had no
computer science background.
<!--
Such a resource would help students brainstorm how
to structure classes in their code, especially for best practices on classes in
Javascript.
and specific guidelines for best practices on structuring
code for the web with Javascript would have been useful even for more
experienced student programmers.
-->

<!--
Furthermore, there are some minor tweaks that can be made to improve the design
worksheets. Several students noted that the grey, helper text on the worksheets
confused them at a times, so a low-level editing pass and clarification could
help the worksheets. One student even suggested fleshing out that text into
more of a template but then providing blank boxes on separate worksheets for
each activity to be filled out. Several students noted that having another
example set of worksheets, such as a good student example, would help steer them
towards knowing what to put onto the worksheets. We also received
recommendations to use a date-field rather than a blank number-field to
encourage students to more simply organize their group worksheets over time as
the numbers were not often used and harder to coordinate among group members. We
also asked several students about the visual result and warning icons, and the
consensus was that most students did not realize what these were for so their
use may be superfluous. Providing weekly advisor feedback was crucial for
improving students' confidence in design: ``because we got to meet with [an
advisor] then we had time carved out [for] doing the worksheets'' (P5).
-->

Nevertheless, the design worksheets were able to teach students how to design,
guide them through actionable steps, and facilitated effective design
discussions both within a group and with their mentor. As students highlighted:
% ``in having that methodically prescribed ... you break down the process into
% those clear steps, and I think that's useful. It is an intuitive flow'' (P2),
``you break down the process into those clear steps... an intuitive flow'' (P2),
and: ``this was really good guidance for us'' (P3), and:
% ... well categorized for the beginner'' (P3), and:
% ``it was my first time doing something at this scale, and
``I didn't know where to start. It was nice to have steps along the way'' (P4),
and the benefit of generating ideas: ``we considered more options than we would
have'' (P1). Despite the many improvements that can be made, we
see the use of these worksheets as a success for teaching the visualization
design process to students in their cumulative projects.


## Conclusion \& Future Work

In this paper, we have introduced design worksheets to guide and teach novices
the process of designing a visualization system. These worksheets were designed
to simplify the theoretical concepts presented by the design activity
framework [@McKenna2014], and we include all of the materials we used to
teach these concepts to a graduate-level visualization course to 66 students. By
working with 13 students, we evaluated the use of the design activities and
worksheets through surveys and interviews to highlight what worked well and what
could be improved on these design worksheets going forward. Lastly, we
summarized these improvements and areas for future work on teaching
visualization design to novices.

These design worksheets are one step towards building more effective teaching
tools for data visualization and design, but plenty of work lies ahead. One
clear area for future work involves materials for design inspiration: brainstorm
visualization encodings, abstractions, and tasks. Initial work shared by He and
Adar in Vizit Cards [@He2017] is a step in this direction, and we
encourage the community to continue this line of work. While one student used
VizIt cards, they would have liked to see the cards generalized for other
visualization challenges.
<!--
Furthermore, the design process, steps, and guidance
can always be improved to be more descriptive, more clear, sufficiently
succinct, and encompass other design methods and methodologies.
-->
Other common methods for teaching are design studios [@He2017] and
exercises [@Bertini2017], and it would be worthwhile to adapt design
worksheets for these settings.
<!--
Lastly, scaffolding these materials from novices
to experts could provide support for the worksheets to grow and expand for more
advanced, creative, and flexible use.
-->
