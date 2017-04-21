# Worksheets for the Design Activity Framework {#sec:worksheets}

For visualization pedagogy, an important but challenging aspect to teach is
design. This includes showing students how to make and also characterize the
decisions that they make when designing and evaluating a visualization encoding,
user interaction, or data visualization system. While our introduction of a new
framework for visualization design in [@sec:framework] codifies some of the
high-level steps of the process for visualization designers, the four activities
lack a breakdown or example of concrete steps to facilitate a novice utilizing
this framework to walkthrough their own, real-world design process. To provide
such a framing, we created new teaching materials for the design activity
framework, such as visualization design worksheet for each design activity, a
lecture on the design process showcased within a real-world project, and
resources for learning how to design and sketch visualizations.


These design activity worksheets for visualization novices present a high-level
summary of each activity with more actionable, guided steps for students to walk
through the process of designing their own visualization system. Furthermore, we
validated the effectiveness and use of these worksheets and the overall
framework in the context of a graduate-level visualization course taught at our
university. For this evaluation, we surveyed the class and 13 students who
voluntarily utilized these design worksheets for their cumulative projects. We
conducted a series of interviews to garner additional open-ended feedback and
suggestions that highlight the strengths and limitations of these teaching
materials.





## Motivation: Increasing Actionability of the Framework

To teach design in data visualization, educators combine many foundational
components, from user interface principles [@Shneiderman2004] to data and
encoding taxonomies [@Munzner2014]. Additional pedagogical materials for the
field focus on visual principles [@Tufte1986; @cairo2012] or perceptual ones
[@Ware2010] as a basis for creating and judging data visualizations. Educators
may also apply these principles and techniques in the classroom through the use
of design critiques or a cumulative project. These visualization projects could
be guided by several textbooks which expound upon different design processes
[@Ware2010; @Shneiderman2004] or design decision models [@Munzner2014] to help
novice visualization designers learn how to effectively and methodically build
and validate visualization systems.


Many of the pedagogical approaches to the visualization design process, however,
are theoretical in nature. From our own combined teaching experiences we have
witnessed students struggle to incorporate these theory-based design concepts
into their practical, hands-on projects. As such, we believe there is an
opportunity for new approaches to teaching the next generation of visualization
designers, equipping them with not just theoretical knowledge but also the
practical steps for building better systems and tools.


In [@sec:framework], we described one such theoretical model of the design
process with four actionable design activities: _understand_, _ideate_, _make_,
and _deploy_. Each of these activities includes a goal, target artifact or
outcomes, and a plethora of design methods to choose from, each of which were
described in such a way to make the process model more actionable. We found,
however, that the theoretical framing of the model restricted and limited its
use and actionability in the classroom or class project settings. To address
these limitations we crafted a design worksheet for each design activity with
steps to assist students walking through the visualization design process for
the first time. Furthermore, we sought to validate the use of these worksheets
in a graduate-level visualization course with students working on their
cumulative projects for the course.





## Worksheets for the Design Activity Framework

To create the visualization design worksheets, we first reflected on the design
process and decisions illustrated by the design activity framework
[@McKenna2014] across several of our own projects. Here, we discuss our process
behind creating these teaching materials and provide examples of their use. The
worksheets and teaching materials are located on a public-facing website for
their dissemination and use by others, and we encourage feedback and
improvements to these teaching materials by other visualization educators over
time.

<!-- TODO how to do a footnote??? or appendix?
repository\footnotemark
\footnotetext{Supplemental Materials can be accessed via:
\url{https://design-worksheets.github.io}}
-->


Inspired by the five design-sheet methodology [@Roberts2015], we wanted to
embody the visualization design process in its entirety into visualization
design worksheets to enhance the teaching of an otherwise theoretical design
process to new students. Our first goal was to create a worksheet for each of
the visualization design activities: _understand_, _ideate_, _make_, and
_deploy_. To do so, we reflected on our combined research and design experiences
across each visualization design activity, and we broke down these activities
into a series of tangible and generalized steps (see [@tbl:steps]). These steps
are akin to design methods which can be generative or evaluative in nature.


| _**understand**_ | _**ideate**_ | _**make**_ | _**deploy**_ |
| :--------------- | :--------------- | :--------------- | :--------------- |
| identify the challenge \& users | select a design requirement | set an achievable goal | pinpoint a target audience |
| | | | |
| find questions \& tasks | sketch first idea | plan encodings \& layouts | fix usability concerns |
| | | | |
| check with users or explore data | sketch another idea | plan support for interactions | improve points of integration |
| | | | |
| brainstorm design requirements | sketch final idea | sketching additional views | refine the aesthetics |
| | | | |
| compare \& rank design requirements | compare \& relate your ideas | build the prototype \& check-in | consider a method to evaluate |

: Each visualization design activity was broken down into five concrete steps.
  The first four steps of the process are generative, to establish design
  requirements, encoding and interaction sketches, visualization prototypes, or
  visualization systems. The fifth step is always evaluative, to compare
  different visualization artifacts in order to justify design decisions and
  record that reasoning down for later use. We presented these five steps to
  novice visualization designers, students, using design worksheets as a
  template, like in [@fig:u-worksheet; @fig:i-worksheet; @fig:m-worksheet;
  @fig:d-worksheet]. {#tbl:steps}


<!-- TODO fbox around graphics? -->

![
  Here we show the _understand_ worksheet, tailored to help students identify
  their problem, users, data, and requirements for a data visualization
  system.
](figures/worksheets/worksheet-understand.pdf){#fig:u-worksheet width="90%"}


![
  For the _ideate_ worksheet, a novice visualization designer must target a
  specific design opportunity or requirement in order to draw and compare three
  different sketches with each other.
](figures/worksheets/worksheet-ideate.pdf){#fig:i-worksheet width="90%"}


![
  The _make_ worksheet is about guiding visualization novices to create a
  prototype system, by planning out their encodings, layouts, and interactions,
  along with coding it all together.
](figures/worksheets/worksheet-make.pdf){#fig:m-worksheet width="90%"}


![
  The final _deploy_ worksheet involves making prototypes more useful as a
  polished visualization system that gets in the hands of the appropriate
  audience, along with fixing problems, speeding up the tool, and improving the
  aesthetics.
](figures/worksheets/worksheet-deploy.pdf){#fig:d-worksheet width="90%"}


We introduce the first design worksheet for the _understand_ activity in
[@fig:u-worksheet]. At the top of each sheet we describe the desired goal and
resulting visualization artifact or outcome for the activity. Each sheet can be
numbered in the top-right for keeping track of order, for planning, and
retrospection. For each worksheet's five steps we included additional helper
text to guide students towards finding the answer and completing each design
worksheet. For the details, please find the details on each of the design
activity worksheets, [@fig:u-worksheet; @fig:i-worksheet; @fig:m-worksheet;
@fig:d-worksheet]. We included warnings about when to jump back to previous
boxes or worksheets, and icons to illustrate the expected type of answer for
each box: a list, a sketch, or a table. Lastly, the bottom contains a list of
icons pointing to the potential next activity of the visualization design
process. These decisions about which activity to perform next are tricky and
require reflection on the visualization designer to validate and check on their
current visualization artifacts and if they are sufficient and succeed towards
addressing the desired problem or challenge in enough detail, and this is why
many visualization design processes may be iterative and complex to perform.


To create the worksheets, we combined the design activity framework definitions
with related worksheets used by a colleague running design studios in our
university's architecture and design department, resulting in the five steps for
each visualization design activity, shown in [@tbl:steps]. Knowing that
engineering-type students could benefit from focusing on coming up with many
types of visualization artifacts, we utilized four of the steps for generation,
and the _ideate_ sheet used three sketches like the five-design sheet
methodology. We targeted each step's instructions for a single visualization
project based on our own experience building visualization systems. After our
first iteration we presented the worksheets to our visualization research group
and received a series of recommendations for improvements including to place
more of a focus on users early and to simplify complex, theoretical terminology.
For example, the terminology of the nested model [@Munzner2009; @Meyer] were
included in the original design but were deemed less novice-friendly and
comprehensible so we simplified the terminology and recommendations or hints for
each step. We also walked through one of our projects using the worksheets to
identify further elements to add: more helper text, warning icons, expected
results for each step, and a label at the top for attachments.


Before introducing design worksheets to students, we needed to form a basis of
understanding, both in terminology and contextualized into a real-world
visualization example. We created an 80-minute lecture on visualization design,
which teaches both the design activity framework and the nested model for
visualization design decisions [@Munzner2009], which is used to help categorize
design decisions during each activity, centered around the design of a
cyber-security visualization dashboard [@mckenna2016]. By utilizing this
real-world visualization project we were able to explain the theory with actual,
tangible concepts. Additionally, we mocked up an example of this project using
the design worksheets to illustrate how to capture a complex, iterative design
process utilizing the design worksheets. An overview of this example is provided
in the next chapter. We include a copy of our lecture materials in the Appendix.

<!-- \sm{TODO should we include these in the appendix...? perhaps. or include some of it here? could use more detail} -->





## Evaluating the Worksheets


In order to conduct an evaluation of the visualization design worksheets, we
employed the worksheets for use in a clasroom setting. We gave a lecture on
visualization design to all 66 students in our university's graduate-level
visualization course. The lecture was followed by an in-class exercise that had
students analyze and redesign an existing visualization using the first two
worksheets: _understand_ and _ideate_. As part of the course students formed
groups to complete a cumulative project, to design and build a web-based
interactive visualization system. I recruited and mentored 13 volunteers from
the course to complete the design worksheets for each of their six group
projects. One student was not part of the original volunteers, but due to
complications with their project they reached out to the teaching staff for
further help and guidance for visualization design within the context of their
project. For details on the project expectations, deadlines, and grading
criteria, please see the Appendix.

<!-- \footnotemark[\value{footnote}] \sm{this is on a previous page...}-->
<!-- \sm{TODO note this is use of I here... because it was truly just me for the most part} -->
<!-- \sm{TODO what to include in appendix? and do so...} -->


To evaluate the efficacy of worksheets in supporting the visualization design process of a cumulative, final project we conducted a full-course survey, a focused survey for students
who used the worksheets, and interviews with student participants to elicit
in-depth worksheet feedback and clarify necessary details.
Additionally, the mentor met with each of the visualization
groups weekly to provide feedback on their design and on the worksheets. These meetings provided
a basis for obtaining in-person observations, in addition to the feedback
acquired anonymously through the surveys and detailed interviews. All of the
questions and prompts used for the surveys and interviews are included in the
Appendix.

<!-- \sm{TODO include in appendix? if at all?} -->


To gather anonymous feedback and assess the utility of the design worksheets for
teaching a visualization course, we sent a survey out to all of the students at
the end of the course. Specifically, we asked questions about students' comfort
level with visualization design before and after taking the course along with
which factors taught students how to design visualizations: lectures, in-class
exercises, design worksheets, and the cumulative project. Additionally, we sent
an anonymous survey to those who used the design worksheets. In this survey we
asked which worksheets worked well and which ones did not, and why, along with
ten questions on the worksheets' usefulness. To avoid positivity bias, questions
on the worksheets' usefulness varied equally between positively and negatively
worded questions.


After student projects were completed 11 students, at least one from each
project, participated in a semi-structured interview to provide feedback on the
visualization design worksheets. We audio recorded each interview to more
efficiently take notes and transcribed participant responses to ensure
accurateness and correctness. With each interviewee, we explained the goals of
this project and at the end asked for consent to utilize feedback obtained and
quotes for publication. The interview questions focused on digging deeper into
the survey findings. We asked open-ended questions to gather improvements and
suggestions for the next iteration of the visualization design worksheets. At
the beginning of the interview, we asked each student to briefly describe the
steps of the visualization design process in their own words in order to
informally test recall of the high-level concepts of the framework and
worksheets.





## Results of the Evaluation

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


For the survey sent to the students who used the visualization design
worksheets, we received a total of 7 responses. Overall, the _ideate_ (6
students) and _understand_ (4 students) worksheets were selected as the most
helpful design activity worksheets for their projects. Students stated that the
_ideate_ worksheet helped them critique their own designs, while _understand_
helped jumpstart a visualization project. As stated by students: "_ideate_:
critique of ones own design was most helpful" and "_Ideate_ is the most clear
worksheet" and that both _understand_ and _ideate_ worksheets "helped to get the
project off the ground." On the flip side, the _deploy_ (4 students) worksheet
was selected as the least helpful because students often did not have sufficient
time to focus on this activity, as students stated: "we were out of time" and
"once the projects were off the ground, [_deploy_] didn't seem too important."
Student feedback highlighted a benefit for the specific steps in an activity to
organize and record their design process, explaining that for the worksheets:
"It seemed that the amount of text, guidance, and time taken achieved a proper
balance." Additional feedback highlighted some drawbacks to the worksheets, such
as vague terminology or phrasing, creative limitations, and not enough
structure. To uncover more information, we conducted interviews as a follow-up.

<!--
\mm{no participant numbers for these quotes? i'd say either use all the time, or not at all.}
\sm{perhaps start labeling at P-12 onwards? possibly some overlap but it is more consistent?}
-->


During the follow-up interviews we asked students to describe the design process
in their own words, and all students were spot on in their descriptions of the
various activities. Specifically, four students correctly recalled the names of
each visualization design activity, but four other students were fuzzy on the
_deploy_ activity---possibly since most groups did not go through this activity.
As with the survey, all of the students found the _understand_ and _ideate_
worksheets the most useful since it forced them to consider different tasks,
users, and ideas, whereas _deploy_ was often not reached in the course of the
project. Students noted that the worksheets provided a structured way to
organize and compare notes of different visualization design artifacts. Three
students stated that the worksheet example visualization project was helpful in
showcasing how to use the design worksheets. Nine students either followed their
own design process informed by the worksheets or stuck to the worksheets
entirely. One group that conducted their own visualization design process
acknowledged that their design process, while different, still mapped onto the
steps provided in each visualization design activity. Another student recognized
the flexibility of the visualization design worksheets: "if I had a different
project, I would use each box in different ways depending on the context" (P8).

<!-- \sm{TODO check if more to that last quote?} -->


All of the students agreed that evaluation was a necessary and important step
for visualization design in order to pinpoint flaws in your understanding of the
problem, users, tasks, interactions, and encodings. One group discovered that
their visualization project was better suited to a subset of users, and another
group realized that a particular encoding resulted in points overplotting from
feedback during an advisor meeting. All students agreed that design worksheets
helped them document their visualization design process for their final project
report. These design worksheets served as a "snapshot in time" (P1) and were
sufficiently detailed to explain their design process for the report. Eight of
the students described an iterative process that occurred, although informal and
not written on any of their own design worksheets. When digging into this
informality, students pinpointed that worksheets helped organize their thoughts.
Furthermore, the activities helped guide them, as novice designers, such as one
student who used the visualization design worksheets for the first time later in
the course of their project and that "when [they] used [the] worksheets it kept
[them] focused on what [they were] doing and trying to get more ideas or more
[encodings]" (P8).

<!-- \sm{TODO check if more than that last quote?} -->


An intriguing finding was that four students employed the worksheets in
surprisingly creative ways. For example, one student loaded the _ideate_
worksheet in PDF form on their tablet and zoomed in to sketch various aspects of
their visualization design, allowing them to expand and use more space for the
visualization sketches. Also, another detail-oriented student transferred the
design worksheets into textual form, listing all of the steps and hints, so that
they could brainstorm and add detail to the problem and requirements over time,
as a living document. For detail-oriented novice designers, having this
additional space and flexibility helped harness their own creative ability. Four
students expressed frustration with the paper design worksheets because they
preferred another format, whether digital, larger paper, or the ability to
structure their notes how they wish. As one student put it, "I think the
concepts are very helpful in the worksheets .... [but] for a free form thinker
... if you box it in then it is sort of restricting your creativity, as it tells
you how much you have to fit into where" (P9). Students suggested improvements
and other feedback which we explore next.





## Discussion: Benefits and Limitations

To address this constraint on creativity, a key improvement recommended by five
students was to convert the visualization design worksheets into a checklist for
each step, the same as the steps shown in [@tbl:steps]. Based on the interviews,
we would recommend two types of resources, since worksheets did provide
structure, "it's like a checklist to make sure everything is covered" (P11), but
the worksheets did limit free-form thinkers: "if you have a lot of things on
your mind, you won't fit everything in the box anyways so the boxes are actually
wasting paper" (P6). While some visualization designers recommend paper for
sketching [@Roberts2015], there are those in the design community that argue
digital sketching can have functional benefits like shapes, undo, layers,
duplication, and manipulation of details through zooming [@Wu2011], which two
students utilized and felt was vital to their visualization design process.
Another recommendation was to transform the worksheets into an app: "a
clickable, interactive worksheet, where you click on this [and] it will connect
you with the other worksheet and have a screenshot" (P8).


Students also suggested adding more worksheets to the materials. Six students
felt that "those activities frame the process well" (P2). However, two students
brought up a crucial aspect of evaluation and feedback, since it may be
worthwhile to devote a whole worksheet towards these concepts, otherwise "if you
have it on the other worksheets, [evaluation] doesn't seem to have as much
value" (P10). A key challenge for a visualization design project can be finding
the right dataset. Four students requested a visualization design worksheet to
help probe into and explore the dataset or datasets that a group may want to
visualize. By providing guidance, steps, and questions on aspects of the
dataset, potential issues with visualizing the dataset could be avoided later,
which is exactly what happened with 2 of the student projects. Lastly, 3
students requested a visualization design worksheet on how to structure the code
of a visualization system, particularly in the case of 1 group which had no
computer science background. Such a resource would help students brainstorm how
to structure classes in their code, especially for building data visualization
systems. Specific guidelines for particular languages, such as designing
visualizations for the web in Javascript, could be useful even for more
experienced student programmers.


Furthermore, there are some minor tweaks that can be made to improve the
visualization design worksheets. Several students noted that the grey, helper
text on the worksheets confused them at a times, so a low-level editing pass and
clarification could help the visualization design worksheets. One student even
suggested fleshing out that text into more of a template but then providing
blank boxes on separate design worksheets for each activity to be filled out
with less clutter overall. Several students noted that having another example
visualization project using the worksheets, such as a good student project,
would help steer students towards knowing what to put onto the design worksheets
and define more clear expectations. We also received recommendations to use a
date-field rather than a blank number-field to encourage students to simply
organize their group worksheets over time as the numbers were not often used and
harder to coordinate among group members. We also asked several students about
the visual result and warning icons, and the consensus was that most students
did not realize what these were for so their use may be superfluous or should be
made more clear. Additionally, providing weekly advisor feedback was crucial for
improving students' confidence in visualization design: "because we got to meet
with [an advisor] then we had time carved out [for] doing the worksheets" (P5).

<!-- \sm{TODO can you quantify 'several' into actual numbers?} -->


Nevertheless, the design worksheets were able to teach students how to perform
visualization design, guide them through actionable steps, and facilitated
effective visualization design discussions both within a group and with their
mentor. As students highlighted: "in having that methodically prescribed ... you
break down the process into those clear steps, ... it is an intuitive flow"
(P2), and: "this was really good guidance for us ... well categorized for the
beginner" (P3), and: "it was my first time doing something at this scale, and I
didn't know where to start. It was nice to have steps along the way" (P4), and
the benefit of generating ideas: "we considered more options than we would have"
(P1). Despite the many improvements that can be made, we see the use of these
design worksheets as a success for teaching the visualization design process to
students in their cumulative projects.


These visualization design worksheets are one step towards building more
effective teaching tools for data visualization and design, but plenty of work
lies ahead. One clear area for future work involves materials for design
inspiration: brainstorm visualization encodings, abstractions, and tasks.
Initial work shared by He and Adar in Vizit Cards [@He2017] is a step in this
direction, and we encourage the community to continue this line of work. While
one student used VizIt cards, they would have liked to see the cards generalized
for other visualization challenges. Furthermore, the visualization design
process, steps, and guidance can always be improved to be more descriptive, more
clear, sufficiently succinct, and encompass other design methods and
methodologies. Other common methods for teaching are design studios [@He2017]
and exercises [@Bertini2017], and it would be worthwhile to adapt design
worksheets for these settings. Lastly, scaffolding these design materials from
visualization novices to experts could provide support for the visualization
design worksheets to grow and expand for more advanced, creative, and flexible
use.

<!-- \sm{TODO feels a bit more conclusion-y/discussion-y, perhaps move last paragraph to later chapter} -->
