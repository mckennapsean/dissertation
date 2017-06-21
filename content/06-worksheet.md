# Design Activity Worksheets {#sec:worksheets}

For visualization pedagogy, an important but challenging notion to teach is
design, including showing students how to make and also characterize their
decisions when designing and evaluating a visualization encoding, user
interaction, or data visualization system. Our introduction of a new framework
for visualization design in [@sec:framework] codifies some of the high-level
steps of the process for visualization designers, but the four activities lack a
breakdown or example of concrete steps to facilitate novices utilizing this
framework to walk through their own real-world design process. To provide such a
framing, we created new teaching materials for the design activity framework,
such as visualization design worksheets for each design activity, a lecture on
the design process showcased within a real-world project, and resources for
learning how to design and sketch visualizations [@mckenna2017a].


These design activity worksheets for visualization novices present a high-level
summary of each activity with more actionable, guided steps for students to walk
through the process of designing their own visualization system. Furthermore, we
validated the effectiveness and use of these worksheets and the overall
framework in the context of a graduate-level visualization course taught at the
University of Utah [@mckenna2017a]. For this evaluation, we surveyed the class
and worked with 13 students who voluntarily utilized these design worksheets for
their cumulative projects. We conducted a series of interviews to garner
additional open-ended feedback and suggestions that highlight the strengths and
limitations of these worksheets as teaching materials. In this chapter, we
present four worksheets, one for each design activity, with five concrete steps
and guidance on each sheet, and we evaluated the effectiveness of these
worksheets in a pedagogical setting.





## Increasing Actionability of the Framework

To teach design in data visualization, educators combine many foundational
components, from user interface principles [@Shneiderman2004] to data and
encoding taxonomies [@Munzner2014]. Additional pedagogical materials for the
field focus on visual or perceptual principles [@Tufte1986; @cairo2012;
@Ware2010] as a basis for creating and judging data visualizations. Educators
may also apply these principles and techniques in the classroom through the use
of design critiques or a cumulative project. These visualization projects could
be guided by several textbooks that expound upon different design processes
[@Ware2010; @Shneiderman2004] or design decision models [@Munzner2014] to help
novice visualization designers learn how to effectively and methodically build
and validate visualization systems.


Many of the pedagogical approaches to the visualization design process, however,
are theoretical in nature. From our own combined teaching experiences, we have
witnessed students struggle to incorporate these theory-based design concepts
into their practical, hands-on projects. As such, we believe there is an
opportunity for new approaches to teaching the next generation of visualization
designers, equipping them with not just theoretical knowledge but also the
practical steps for building better systems and tools.


In [@sec:framework], we described one such theoretical model of the design
process with four actionable design activities: _understand_, _ideate_, _make_,
and _deploy_. Each of these activities includes a goal, target artifact or
outcomes, and a plethora of design methods to choose from, each of which was
described in such a way to make the process model more actionable. We found,
however, that the theoretical framing of the model restricted and limited its
use and actionability in the classroom or class project settings. To address
these limitations, we crafted a design worksheet for each design activity with
steps to assist students walking through the visualization design process for
the first time. Furthermore, we sought to validate the use of these worksheets
in a graduate-level visualization course with students working on their
cumulative projects for the course.





## Related Work in Pedagogy for Design

For the past few decades, pedagogy for data visualization and human-computer
interaction has begun to shift from academic or theoretical foundations toward
including skills for design, critique, and critical analysis [@Reimer2003;
@Rushmeier2007; @Hearst2016b; @He2017]. Educators have come to realize that they
must rapidly adapt their teaching methods to the growing body of diverse students
[@Rheingans2016; @Domik2016], from undergraduates across disciplines to graduate
students in standard courses, flipped classrooms [@Rheingans2016; @He2017], and
online environments [@Beyer2016]. A recent approach among educators is to employ
active learning [@Beyer2016; @Godwin2016; @Hearst2016b], where techniques and
methods are used to encourage deeper analysis and synthesis as opposed to just
passively observing a lecture [@Beyer2016]. For example, a common approach
observed in most classroom settings is practical data visualization exercises,
to give students opportunities to critically analyze a data visualization or
existing visualization tool and work with their peers to analyze the outcomes
[@Kerren2008; @He2017].


When it comes to data visualization design, the core concepts of active learning
can help overcome some of the challenges faced by educators when teaching
concepts surrounding design thinking [@He2017], from considering broad divergent
visualization ideas [@Roberts2015], to evaluating based on visualization
principles, and leveraging existing designs to create something new. An
effective pedagogical methodology is the use of design studios incorporated into
the classroom setting [@Greenberg2009; @Reimer2003; @He2017], inspired by its
use in fields such as architecture, design, and art. For visualization,
educators often incorporate these studios as workshops or practical exercises
and also through real-world projects for students to learn about design outside
the classroom [@Kerren2008]. For example, VizItCards [@He2017] was created to
help novices practice, and it is used to reinforce visualization concepts during
workshops. Human-computer interaction educators have noted that computer science
students in a design studio tend to focus more on idea refinement rather than
broad idea generation and innovation [@Cennamo2011]. Other active learning
approaches include the use of design workshops [@He2017; @Huron2016; @Zoss2016],
rich discussions [@Johnson2016; @Craft2016], and design games [@Godwin2016].


Within the data visualization pedagogy, guidance for how to design data
visualizations, both generating and evaluating visualization artifacts, is
missing clear steps for novices. When teaching data visualization design,
educators often incorporate user interface principles [@Shneiderman2004], teach
taxonomies of data and encoding [@Munzner2014], illustrate ideal visual
principles [@Tufte1986; @cairo2012], explain perceptual principles [@Ware2010],
and generally empower students with the ability to evaluate, criticize, and
judge data visualizations. These principles and concepts often get applied in
courses through design critiques or encased within a cumulative project
[@Eggermont2016]. These cumulative projects are an alternative to in-class
design studios, where students must acquire their own datasets, come up with
ideas to visualize data for different tasks, and build an interactive, multiview
visualization system to support these tasks in the data. By providing novices
with realistic, hands-on experience, students can reapply these skills in their
own future projects. However, novices may struggle to conduct their own design
process, perhaps referring to textbooks that include their own design process
methodologies [@Ware2010; @Shneiderman2004] or research papers that detail the
design process or design decisions [@Munzner2014; @Sedlmair2012b], but often
these models are high level, terminology heavy, less actionable, and theoretical
in nature. For novices, it is often useful to have a clear set of guidelines or
instructions to walk through this process for the first time. However, no such
step-by-step guidance currently exists for the data visualization design
process.


Educators have worked on concretizing steps for the ideation process.
Specifically, the five design-sheet methodology [@Roberts2015] utilizes
worksheets to structure and guide visualization students through the ideation
process. This approach by Roberts et al. encourages engineering students to
think divergently and creatively and sketch out ideas on paper when first
designing a visualization. Their approach begins with brainstorming, followed by
three unique designs and a realization sheet for the final tool. The authors
evaluated this teaching methodology with master's-level students in information
visualization. Over several years, 53 students completed these design sheets
over the span of 2 hours to come up with different ways to visualize their own
chosen dataset, after which they received feedback and additional time to
finalize their designs [@Roberts2015]. After grading the sheets, the researchers
compared these grades with the students' project and final course grades, as
well as an anonymous survey, to gather feedback on the entire course including
the design sheets. Generally, they found that the design sheets aided students
in planning and organizing a design section for the project write-up, and it
also encouraged students to think divergently, which is a skill not often taught
in computer science. However, in a workshop at the 2016 IEEE VIS conference that
used these worksheets, we experienced a limitation by using this approach too
soon: many steps must occur first, such as data collection, identifying the
challenge, focusing on a target user, and finding tasks. Roberts et al. elude to
this limitation with different preparation steps [@Roberts2015], but these steps
can be nontrivial and tricky for novices. Thus, it would be beneficial to
establish and evaluate more worksheets beyond just ideation for data
visualization design pedagogy.


Educators also face several unique challenges, such as visualization
preconceptions, visual literacy, classroom time limits, and increasing class
sizes. First, students may have preconceived notions about data visualization
and principles that can affect the learning process and how they evaluate a
given data visualization [@Hearst2016b; @Mustafaraj2016]. Furthermore, the
concept of visualization literacy can be traced back to how we introduce, teach,
and incorporate visualizations throughout schooling, from elementary school
[@Alper2017] and beyond. In college-level courses, a key challenge can be tight
deadlines and schedules [@He2017; @Rheingans2016], with limited course time for
practical exercises, design studios, and cumulative projects, which often last
only a month or two and may include noncolocated learners [@Beyer2016]. As
course enrollments grow, it is important to think of how to scale visualization
design feedback and evaluation; one recommended approach is to utilize peers to
help scale this process and provide students with more practice on visualization
evaluation and critique in order to apply principles and concepts taught
throughout a course [@Willett2016; @Hearst2016b; @Johnson2016]. Additionally,
concepts that are heavily theoretical or mathematical in nature may be more
challenging to teach to novices. Instead, it may be ideal to simplify
terminology and focus on simpler, comprehensive aspects of the theory
[@Kindlmann2016] so that students can more readily grasp, apply, and build upon
these theoretical constructs. In our own experience, we have observed the
challenges of teaching theoretical design aspects such as the nested model
[@Munzner2009] to visualization novices. By simplifying these aspects into a
more step-driven process, students may be able to apply and learn these
visualization design concepts on their own more effectively.





## Worksheets for the Design Activity Framework {#sec:designworksheets}

To create the visualization design worksheets, we first reflected on the design
process and decisions illustrated by the design activity framework
[@McKenna2014] across several of our own projects. Here, we discuss our process
behind creating these teaching materials and provide examples of their use. The
worksheets and teaching materials are located on a public-facing
website[^worksheets] for their dissemination and use by others, and we encourage
feedback and improvements to these teaching materials by other visualization
educators over time.

[^worksheets]: <https://design-worksheets.github.io/>


Inspired by the five design-sheet methodology [@Roberts2015], we wanted to
integrate the visualization design process in its entirety into visualization
design worksheets to enhance the teaching of an otherwise theoretical design
process to new students. Our first goal was to create a worksheet for each of
the visualization design activities: _understand_, _ideate_, _make_, and
_deploy_. To do so, we reflected on our combined research and design experiences
across each visualization design activity, and then broke down these activities
into a series of tangible and generalized steps (see [@tbl:steps]). These steps
are akin to design methods that can be generative or evaluative in nature.
We created several introductory and template worksheets to help guide students
through filling out each design activity worksheet, and we include these
materials in [Appendix @sec:app-worksheets].


\input{templates/daf-steps.tex}

<!--
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

: 
  Five steps for each design activity.
  We break down each visualization design activity into five concrete steps.
  The first four steps of the process are generative, to establish design
  requirements, encoding and interaction sketches, visualization prototypes, or
  visualization systems. The fifth step is always evaluative, to compare
  different visualization artifacts in order to justify design decisions and
  record that reasoning down for later use. We shared these five steps with
  novice visualization designers, students, using design worksheets as a
  template, as in [@fig:u-worksheet; @fig:i-worksheet; @fig:m-worksheet;
  @fig:d-worksheet]. {#tbl:steps}
-->


We introduce the first design worksheet for the _understand_ activity in
[@fig:u-worksheet]. At the top of each sheet, we describe the desired goal and
resulting visualization artifact or outcome for the activity. Each sheet can be
numbered in the top right for keeping track of order and for planning and
retrospection. For each worksheet's five steps, we included additional helper
text to help students find the answer and complete each design worksheet. Please
find the details for each of the design activity worksheets in
[@fig:u-worksheet; @fig:i-worksheet; @fig:m-worksheet; and @fig:d-worksheet]. We
included warnings about when to jump back to previous boxes or worksheets, and
icons to illustrate the expected type of answer for each box: a list, a sketch,
or a table. Lastly, the bottom contains a list of icons pointing to the
potential next activity of the visualization design process. These decisions
about which activity to perform next are tricky and require reflection on the
part of visualization designers to verify that their current visualization
artifacts are sufficient and that they succeed in addressing the desired problem
or challenge in enough detail. This is why many visualization design processes
may be iterative and complex to perform.


![
  Worksheet for the _understand_ activity.
  We tailored this worksheet to help students identify their problem, users,
  data, and requirements for a data visualization system.
](figures/worksheets/worksheet-understand.pdf){#fig:u-worksheet width="100%"}


![
  Worksheet for the _ideate_ activity.
  In this activity, novice visualization designers must target a specific design
  opportunity or requirement in order to draw and compare three sketches.
](figures/worksheets/worksheet-ideate.pdf){#fig:i-worksheet width="100%"}


![
  Worksheet for the _make_ activity.
  Visualization novices use this worksheet to create a prototype system, by
  planning out their encodings, layouts, and interactions, along with coding it
  all together.
](figures/worksheets/worksheet-make.pdf){#fig:m-worksheet width="100%"}


![
  Worksheet for the _deploy_ activity.
  In the final activity, visualization designers seek to make prototypes more
  useful and evolve them into a polished visualization system. As part of this
  process, deployment must get the system into the hands of the appropriate
  audience, and the system must address key points of integration, speed up
  necessary processes, and improve the tool's aesthetics.
](figures/worksheets/worksheet-deploy.pdf){#fig:d-worksheet width="100%"}


To create the worksheets, we combined the design activity framework definitions
with related worksheets used by a colleague running design studios in our
university's architecture and design department, resulting in the five steps for
each visualization design activity, shown in [@tbl:steps]. Knowing that
engineering students could benefit from focusing on creating many types of
visualization artifacts, we utilized four of the steps for generation. For
example, the _ideate_ sheet used three sketches as in the five-design sheet
methodology. We targeted each step's instructions for a single visualization
project based on our own experience building visualization systems. After our
first iteration, we presented the worksheets to our visualization research group
and received a series of recommendations for improvements, including to place
more of a focus on the users earlier in the process and to simplify complex,
theoretical terminology. For example, the terminology of the nested model
[@Munzner2009; @Meyer] was included in the original design, but it was
determined that the worksheets were less novice friendly due to this
terminology, so we simplified the worksheets and recommendations or hints for
each step. Still, we focused on capturing visualization artifacts and the
evaluative decisions that get made by visualization designers. We also walked
through one of our projects using the worksheets to identify further elements to
add: more helper text, warning icons, expected results for each step, and a
label at the top for attachments.


Before introducing design worksheets to students, we needed to form a basis of
understanding, both in terminology and contextualized as a real-world
visualization example. We created an 80-minute lecture on visualization design,
which teaches both the design activity framework and the nested model for
visualization design decisions [@Munzner2009]. This model was used to help
categorize design decisions that were contextualized within a visualization
design project, a cyber-security visualization dashboard [@mckenna2016]. By
utilizing this real-world visualization project, we were able to explain the
theory with actual, tangible concepts. Additionally, we mocked up an example of
this project using the design worksheets to illustrate how to capture a complex,
iterative design process utilizing the design worksheets. An overview of this
example is provided in the next chapter. We include a copy of our lecture
materials and this example on the project website.[^worksheets]


To help teach a real-world design process, we mocked up design activity
worksheets for the BubbleNet dashboard project [@mckenna2016]. These design
worksheets, shown in [@fig:worksheet-example], served as an example that we
taught to students in our visualization design lecture. By illustrating how
students could utilize the worksheets with a real-world example, we hoped that
the worksheets would seem more tangible and actionable for novice visualization
designers. By walking back through our design study process, we incorporated
various visualization artifacts as linked sketches and printouts to match each
with their respective design activities, in approximate temporal order.
Illustrated in [@fig:worksheet-example], these worksheets match the order of
design activities presented in the previous chapter, [@fig:process]. Despite
this design study being complex and iterative, both the design activity
framework and design worksheets are able to succinctly capture and convey
distinct and crucial aspects of the visualization design process.


![
  Design activity worksheet example.
  We showed how to use the design worksheets with linked sketches, summarizing
  our design process to create the BubbleNet dashboard [@mckenna2016]. This
  real-world project showcases how to utilize the worksheets and highlights how
  to capture a complex, iterative design process. A detailed copy of each
  example worksheet and associated sketches is included online with the
  worksheet materials.
](figures/worksheets/worksheet-example.jpg){#fig:worksheet-example width="100%"}





## Evaluating the Worksheets


In order to conduct an evaluation of the visualization design worksheets, we
employed them in a classroom setting. We gave a lecture on visualization design
to all 66 students in our university's graduate-level visualization course. The
lecture was followed by an in-class exercise that had students analyze and
redesign an existing visualization using the first two worksheets: _understand_
and _ideate_. As part of the course, students formed groups to complete a
cumulative project: to design and build a web-based interactive visualization
system. I recruited and mentored 13 volunteers from the course to complete the
design worksheets for each of their six group projects. One student was not part
of the original volunteers, but due to complications with her project she
reached out to the teaching staff for further help and guidance for
visualization design within the context of her project. For details on the
project expectations, deadlines, and grading criteria, please see the project
website.


To evaluate the efficacy of worksheets in supporting the visualization design
process of a cumulative, final project, we conducted a full-course survey, a
focused survey for students who used the worksheets, and interviews with student
participants to elicit in-depth worksheet feedback and clarify necessary
details. Additionally, the mentor met weekly with each visualization group to
provide feedback on their design process and on the worksheets. These meetings
provided a basis for obtaining in-person observations, in addition to the
feedback acquired anonymously through the surveys and detailed interviews. The
questions and prompts used for the surveys and interviews are included in
[Appendix @sec:app-evaluation].


To gather anonymous feedback and assess the utility of the design worksheets for
teaching a visualization course, we sent an online survey to the students at the
end of the course. Specifically, we asked questions about students' comfort
level with visualization design before and after taking the course along with
which factors taught them how to design visualizations: lectures, in-class
exercises, design worksheets, and the cumulative project. Additionally, we sent
an anonymous, online survey to those who used the design worksheets. In this
survey, we asked which worksheets worked well and which ones did not, and why,
along with 10 questions about the usefulness of the worksheets. To avoid
positivity bias, these questions varied between positive and negative wording.


After the student projects were completed, 11 students, at least one from each
project, participated in a semistructured interview to provide feedback on the
visualization design worksheets. We audio recorded each interview to more
efficiently take notes and transcribed participant responses to ensure accuracy
and correctness. With each interviewee, we explained the goals of the study and
acquired consent to utilize feedback and quotes for publication. The interview
questions focused on digging deeper into the survey findings. We asked
open-ended questions to gather suggestions for improvement and for the next
iteration of the visualization design worksheets. At the beginning of the
interview, we asked students to briefly describe the steps of the visualization
design process in their own words in order to informally test recall of the
high-level concepts of the framework and worksheets.





## Evaluation Results

For the full-class survey, we received 25 responses. Twenty-three students
showed an improvement in their comfort level for visualization design, on
average two out of five points higher by the end of the course. Students ranked
these improvements based on where they learned how to design, which was
primarily through the lectures, projects, and class exercises. The design
worksheets received a significantly larger portion of neutral responses for
helping students learn, possibly because only some students used them in their
projects. We compared the ratio of agreement to disagreement of these materials
helping students learn. The design worksheets were on the level of other methods
utilized in the course: design worksheets (13:1), lectures (23:1), exercises
(20:2), and projects (18:2).


For the survey sent to the students who used the visualization design
worksheets, we received a total of seven responses. Overall, _ideate_ (six
students) and _understand_ (four students) were selected as the most helpful
design activity worksheets for their projects. Students stated that the _ideate_
worksheet helped them critique their own designs, and _understand_ helped
jumpstart a visualization project. As stated by students, _ideate_ _"is the most
clear worksheet"_ and _"critique of one's own design was most helpful"_ and that
both _understand_ and _ideate_ worksheets _"helped to get the project off the
ground."_ On the flip side, the _deploy_ (four students) worksheet was selected
as the least helpful because students often did not have sufficient time to
focus on this activity, as they stated, _"We were out of time"_ and _"Once the
projects were off the ground, [deploy] didn't seem too important."_ Student
feedback highlighted a benefit for the specific steps in an activity to organize
and record their design process, explaining that for the worksheets: _"It seemed
that the amount of text, guidance, and time taken achieved a proper balance."_
Additional feedback highlighted some drawbacks to the worksheets, such as vague
terminology or phrasing, creative limitations, and not enough structure. To
uncover more information, we conducted interviews as a follow-up.


During the follow-up interviews, we asked students to describe the design
process in their own words, and all captured the process with descriptions of
the various design activities. Specifically, four students correctly recalled
the names of each visualization design activity, but four other students were
fuzzy on the _deploy_ activity---possibly since most groups were not involved in
this activity. As with the survey, all students found the _understand_ and
_ideate_ worksheets the most useful since they forced them to consider different
tasks, users, and ideas, whereas _deploy_ was often not reached in the course of
the project. Students noted that the worksheets provided a structured way to
organize and compare notes about different visualization design artifacts. Three
students stated that the worksheet example visualization project was helpful in
illustrating how to use the design worksheets. Nine students followed their own
design process informed or exactly prescribed by the design activity worksheets.
One group that conducted their own visualization design process acknowledged
that their design process, although different, still adhered to the steps
provided in each visualization design activity. Another student recognized the
flexibility of the visualization design worksheets: _"If I had a different
project, I would use each box in different ways depending on the context"_
(participant #8, or P8).


All students agreed that evaluation was a necessary and important step for
visualization design in order to pinpoint flaws in their understanding of the
problem, users, tasks, interactions, and encodings. One group discovered that
their visualization project was better suited to a subset of users, and another
group realized that a particular encoding resulted in points overplotting from
feedback during an advisor meeting. All students agreed that design worksheets
helped them document their visualization design process for their final project
report. These design worksheets served as a _"snapshot in time"_ (P1) and were
sufficiently detailed to explain their design process for the report. Eight
students described an iterative process that occurred, although informal and not
written on any of their own design worksheets. When digging into this
informality, students pinpointed that worksheets helped organize their thoughts.
Furthermore, the activities helped guide them as novice designers, such as one
student who used the visualization design worksheets for the first time later in
the course of the project and stated that _"When I used [the] worksheets, it
kept me focused on what I was doing and trying to get more ideas or more
[encodings]"_ (P8).


An intriguing finding was that four students employed the worksheets in
surprisingly creative ways. For example, one student loaded the _ideate_
worksheet in PDF form on her tablet and zoomed in to sketch various aspects of
her visualization design, allowing her to expand and use more space for the
visualization sketches. Also, another detail-oriented student transferred the
design worksheets into textual form, listing all of the steps and hints, so that
he could brainstorm and add detail to the problem and requirements over time, as
a living document. For detail-oriented novice designers, having this additional
space and flexibility helped harness their own creative ability. Four students
expressed frustration with the paper design worksheets because they preferred
another format, whether digital, larger paper, or the ability to structure their
notes how they wish. As one student put it, _"I think the concepts are very
helpful in the worksheets .... [but] for a free form thinker ... if you box it
in then it is sort of restricting your creativity, as it tells you how much you
have to fit into where"_ (P9). Students suggested improvements and other
feedback, which we explore next.





## Improving the Worksheets

To address restrictions on creativity mentioned by that last student, a key
improvement recommended by five students was to convert the visualization design
worksheets into a checklist for each step, the same as the steps shown in
[@tbl:steps]. Based on the interviews, we recommend two formats for guiding the
visualization design process: a checklist and worksheets. The worksheets did
provide structure, _"It's like a checklist to make sure everything is covered"_
(P11), but the worksheets did limit free-form thinkers: _"If you have a lot of
things on your mind, you won't fit everything in the box anyways so the boxes
are actually wasting paper"_ (P6). Some visualization designers recommend paper
for sketching [@Roberts2015], but others in the design community argue digital
sketching can have functional benefits, such as shapes, undo, layers,
duplication, and manipulation of details through zooming [@Wu2011], which two
students utilized and felt was vital to their visualization design process.
Another recommendation was to transform the worksheets into an app: _"a
clickable, interactive worksheet, where you click on this [and] it will connect
you with the other worksheet and have a screenshot"_ (P8).


Students also suggested adding more worksheets to the materials. Six students
felt that _"those activities frame the process well"_ (P2). However, two students
brought up a crucial aspect of evaluation and feedback: that it might be
worthwhile to devote a whole worksheet to these concepts, otherwise _"If you have
it on the other worksheets, [evaluation] doesn't seem to have as much value"_
(P10). A key challenge for a visualization design project can be finding the
right dataset. Four students requested a visualization design worksheet to help
probe into and explore the dataset or datasets that a group may want to
visualize. By providing guidance, steps, and questions on aspects of the
dataset, potential issues with visualizing the dataset could be avoided later,
which is exactly what happened with two student projects. Lastly, three students
requested a visualization design worksheet on how to structure the code of a
visualization system, particularly in the case of one group that had no computer
science background. Such a resource would help students brainstorm on how to
structure classes in their code, especially for building data visualization
systems. Specific guidelines for particular languages, such as designing
visualizations for the web in Javascript, could be useful even for more
experienced student programmers.


Furthermore, some minor tweaks can be made to improve the visualization design
worksheets. Three students noted that the gray, helper text on the worksheets
confused them at a times, so a low-level editing pass and clarification could
help the visualization design worksheets. One student even suggested fleshing
out that text into more of a template but then providing blank boxes on separate
design worksheets for each activity to be filled out with less clutter overall.
Five students noted that having another example visualization project using the
worksheets, such as a good student project, would help steer students toward
knowing what to put onto the design worksheets and define more clear
expectations. We also received recommendations to use a date-field rather than a
blank number-field to encourage students to simply organize their group
worksheets over time as the numbers were not often used and harder to coordinate
among group members. We also asked students about the visual result and warning
icons, and the consensus was that most students did not realize what these were
for so their use may be superfluous or should be made more clear. Additionally,
providing weekly advisor feedback was crucial for improving students' confidence
in visualization design: _"because we got to meet with [an advisor] then we had
time carved out [for] doing the worksheets"_ (P5).





## Summary

In this chapter, we introduced four new worksheets to guide and teach students
through the visualization design process. For each of the four design
activities, we identified five steps, four generative and one evaluative with
additional tips and hints, to help guide visualization novices through the
design process. By deploying these worksheets for use in a visualization
classroom and cumulative project, we observed how students utilized and
interacted with the worksheets. We conducted a qualitative evaluation of the
worksheets using semistructured interviews, and we found that the _understand_
and _ideate_ worksheets were the most beneficial and appreciated by the students
we worked with. Furthermore, students suggested adding more materials and
worksheets, such as incorporating VizItCards [@He2017] or new worksheets for
exploring data and outlining programming advice for good code. As an initial,
external validation of the worksheets and design activity framework, we consider
this evaluation a success for actionably guiding students through a
visualization design project.
