# Discussion and Future Work {#sec:discussion}

The design activity framework lays ground work for further research into the
space connecting creative and engineering processes [@Lowgren1995; @Howard2008;
@Wolf2006; @Moere2011] for visualization design. By building off of existing
models in the field [@Sedlmair2012b; @Munzner2009; @Meyer], the design activity
framework retains the application and benefits from these existing models while
also extending its scope to other kinds of situations and visualization
projects. The design activity framework is by no means complete. Future projects
may reveal new aspects such as crucial activities for visualization design or
different kinds of visualization artifacts. The design activity framework can
and should evolve over time to adapt to more kinds of visualization design
projects to keep its use valid with how visualization systems are designed for
users.


In this chapter, we first explore the necessary scoping, limitations, and
avenues for future work based on the design activity framework. Next, we discuss
implications from the first case study, a cyber security redesign project. More
work still needs to be done to continue the validation of this framework, and we
explore the limitations of the evaluation techniques used for the design
activity worksheets in the classroom. Following this discussion, we focus on
insights gained in our second case study for cyber security on the topics of
winnowing users, casting roles for collaborators, and utilizing multiple
discourse channels for visualization design. Throughout both case studies, the
use of user-centered design methods impacted both projects positively and
connect back to the design activity framework. Lastly, while the design activity
framework could apply to other types of research beyond application-driven
design study projects, more examination and validation is required to
investigate this notion.

<!-- TODO clean up refs in this chap -->





## Scoping the Design Activity Framework

The design activity framework is one approach to capture steps of the
visualization design process, and we have argued that one of its benefits over
existing models is not only its increased actionability in a wide array of
projects but its comprehensibility for visualization designers and other
collaborators. By extending the core design phases of the nine-stage framework
for visualization design studies [@Sedlmair2012b], the design activity framework
inherits many of the connections to existing design study projects, while also
considering the broader applications of visualization design. Another key
component is its connection to the _what_ and _why_ of visualization design:
design decisions. By highlighting connections to the nested model
[@Munzner2009], the design activity framework supports visualization designers
through the act of carefully and methodically identifying appropriate methods
for validating and evaluating visualization artifacts in a design activity.


As a process model, the primary goal of the design activity framework is to
guide visualization designers through a design process. We believe that the
framework will be useful to those with a broad range of expertise. The
actionability of the framework stems from the inclusion of more than just
activities and methods, as is done in other models such as the nine-stage
framework [@Sedlmair2012b]. Specifically, the design activity framework also
includes motivations, visualization artifacts, and explicit ties to the nested
model in order to help guide a designer through the visualization design
process. The motivation enables a visualization designer to determine which
activity is currently being performed, which then allows the designer to
identify potential methods, clarify artifacts, and make decisions with respect
to the nested model. Although the design activity framework targets
problem-driven visualization work, we could not identify a concrete reason why
it could not be useful for technique-driven work as well; this extension
presents interesting, future work.


The framework promotes increased design process flexibility by enabling and
emphasizing a workflow that includes both the nesting of activities and
activities occurring in parallel. As shown in [@fig:timeline], the design
activity framework can represent a process where many activities are pieced
together in different ways according to the motivation of the project at any
given time. We feel that this flexibility enables the framework to more
completely capture the true nature of multilinear, real-world visualization
design in ways that previous visualization process models and their
representations do not.


In addressing the design process more generally, the design community does not
have a consensus on any particular process model [@DaGandra2012], nor do they
even agree that any such model could capture the "black box" of design
[@Fallman2003a]. Furthermore, considering design as a wicked problem
[@Buchanan1992; @Farrell2013; @Gaver2012; @Wolf2006], it can be challenging to
know where to go next, when to stop, and what makes an effective design
[@Buchanan1992]. These challenges exist for many design process models,
including the design activity framework, pointing to opportunities for further
investigation.


The design activity framework has several limitations, the first of which is
that the framework's connections to the nested model may not always be as clean
as those shown in [@fig:nm-comparison]. We were able to identify several corner
cases where visualization artifacts could begin to overlap onto an additional
level of the nested model. Furthermore, the framework does not include a
planning activity, which is present in other process models [@Sedlmair2012b;
DIS2010]. Although important for design, we feel that planning is unique and
complementary to the design activity framework. For example, the _precondition
stages_ of the nine-stage framework [@Sedlmair2012b] could be combined with the
design activity framework to serve as the planning activity. Lastly, we believe
that there is still much to understand and articulate about the design process
for visualization. With respect to the design activity framework, further
research could extend the framework such as more finely defining or breaking
apart specific activities, adding new activities, or making the connection to a
different design decision model.


In this dissertation, we have presented a novel visualization design process
model, the design activity framework, which begins to address the messy,
iterative, and multilinear process of real-world visualization design. The
overall goal of this work is to help guide visualization designers through the
design process, encourage visualization designers to consider new design methods
for generation or evaluation, and assist the compact communication of a design
process, as in [@fig:timeline]. We consider all design models to be a
work-in-progress, and the design activity framework is by no means excluded.
Further validating this framework against additional visualization design
projects and in more pedagogical settings remains an interesting avenue for
future work.


There are a number of additional open questions for future work. For example, we
established this framework from a problem-driven methodology, and it would be
useful to rigorously, but cautiously, validate the use of the framework for more
technique-driven projects. Furthermore, in the list of exemplar methods we
include novel methods for visualization design, but the utility and
effectiveness of these methods for designing a visualization system have yet to
be tested and verified. There are also a series of challenges yet to be
addressed by most visualization process models: Where should I go next in the
process? What method is the best for my situation? When do I know my design is
effective enough? We believe these future directions provide rich opportunities
to further explore the role of the design activity framework for visualization
designers.





## Redesign Case Study: Working in Design Teams

Throughout our redesign project in [@sec:formulation], we worked closely as a
design team composed of designers, a psychologist, and visualization experts.
Our different perspectives and experience led to a richer and more informed
design process. When working together, we found that having common terms and
definitions for design was critical in promoting effective and efficient
communication among all members --- as such, we spent significant time and
effort learning from each other to better understand, and speak in, each other's
domain languages [@Kirby2013]. This effort allowed us to synthesize the ideas
and perspectives on the design process from several different fields into the
design activity framework. Conversely, we coined these terms to help future
visualization design teams with a common set of definitions and terminology that
can be used for communicating specific aspects as well as an overview of their
design process, as in the form of design timelines.


Working in design teams can provide its own set of challenges and obstacles. For
example, this project involved an entirely separate developer role that had
limited communication with the design team, so the decisions and changes to the
tool and code were made entirely by the company. By reflecting on how industry
and product teams conduct similar processes, say with agile methodologies
[@Abran2001; @AgileManifesto2001], this is clearly a very different approach. In
these teams, the designers will often work hand-in-hand with the developers to
identify potential areas for improvement and features for a sprint or
development cycle. This redesign project was a special case, since we were
invited to partake in the project specifically for our outside experience and
knowledge, but integration of design and development teams can increase
communication and realization of ideas and potentially address more user needs
than if these teams work separately and with little communication. By having
teams work together or comprehend the design activities and visualization
artifacts more completely, this approach could possibly increase the level of
communication across teams and have a higher rate of impact when utilizing a
common framework to discuss and present aspects of visualization design.





## Evaluating with Design Activity Worksheets

When using the design activity worksheets in the classroom, we observed how
these materials taught students how to perform visualization design, guiding
them through actionable steps, and facilitating effective visualization design
discussions both within a group and with their mentor. As students highlighted:
"In having that methodically prescribed ... you break down the process into
those clear steps, ... it is an intuitive flow", "This was really good guidance
for us ... well categorized for the beginner", "It was my first time doing
something at this scale, and I didn't know where to start. It was nice to have
steps along the way", and "We considered more options than we would have", which
demonstrated the benefit of generating ideas. Despite the many improvements that
can be made, we see the use of these design worksheets as a success for teaching
the visualization design process to students in their cumulative projects.


This work explored utilizing the worksheets in a visualization course for the
first time, and plenty of work lies ahead in their use as a teaching methodology
for visualization design. For example, one avenue of future work is to continue
improving and using the worksheets each year in the visualization course.
Additionally, more methods for evaluating the usefulness of the materials could
be made, such as performing a grading analysis across students' worksheets and
grades throughout the course [@Roberts2015]. The design worksheets could also be
integrated more tightly with course content, through the use of design workshops
or other assignments. By implementing some of the requested changes to the
worksheets, their pedagogical value could increase by enabling students to more
effectively find and assess datasets, work more effectively in a team, or better
outline and develop code. Another core aspect to design is its iterative nature,
and more study could be conducted on iteration and its use, benefits, and
limitations in visualization design projects. Lastly, another key factor would
be to measure the performance of the worksheets with more students over time to
assess their validity and use for more types of students.


Additional future work involves increasing accessibility of the design
worksheets as a pedagogical material. While the existing materials have been
deployed online, the resources, worksheets, and timelines are only presented as
static materials or examples. By building these materials into an interactive
system, a team could more effectively plan and coordinate their work on a
visualization project. For example, the checklist or worksheets could provide
questions or hints on demand, when someone fills in their answers into a system,
and this system could even dynamically interact and suggest new generative or
evaluative methods based on the students' input. On the other hand, this system
could provide automatic generation of project timelines using the design
activity framework, to support actionability of using this framework to judge
where you are and where you should be. This meta-view of a project could help
guide students by asking additional questions on their status and success, to
suggest activities to pursue next. These accessible, interactive visualization
design process systems could help train visualization designers and possibly
scaffold this process with new design methods as students learn and grow.


One limitation of the evaluation for the design worksheets is the role of the
mentor that coincided as the evaluator for the interviews. Due to limitations of
time and availability throughout the project and to perform the evaluation, this
was necessary, but we acknowledge that more robust evaluation would involve
additional mentors or evaluators. Another future evaluation method is to
interview visual designers on product teams in industry to assess with
heuristics or gather feedback on the utility, usefulness, and impact of the
design worksheets. One challenge is separating out the role of the mentor;
without a mentor, would student groups have been as successful or confident
going through their visualization design process? We determined that this
interference was critical to maximize the potential knowledge we could obtain
from utilizing the design worksheets. By observing and clarifying aspects on the
worksheets, we learned a lot about both the benefits and limitations of these
design worksheets for a visualization project, and this spurred numerous
insights and improvements to be made on future iterations of the worksheets.
Without these connections to each student project, the qualitative evaluation at
the end of the course would have been significantly limited as a result, and any
confusing aspects would have further hindered the teaching impact of the
worksheets. Educators recognize the importance of providing students with
solutions along the way for the steps of a project to avoid pitfalls at early
stages causing later failures [@Zoss2016], i.e., do not punish students for
failing to understand an earlier assignment in a later one. Nevertheless, we
acknowledge that further evaluation may necessitate a separation of these roles
to reduce potential bias and impact.


There are many challenges when incorporating visualization design worksheets and
exercises in the classroom. For example, some students may struggle or feel
intimidated by being asked to sketch, especially given a time restriction.
Unfortunately, many classrooms have designated schedules and limited time slots,
so the workshops or exercises must be completed in the time allotted, but many
visualization exercises take longer than expected to execute [@Rheingans2016].
Another element to consider is the role of tangibility in sketching
visualization designs [@Huron2016; @Willett2016], and incorporation of these
tangible visualization principles could be used within the design activity
worksheets. As classroom sizes increase, it is important to reconsider how
design critiques, feedback, and mentorship are conducted [@Beyer2016;
@VonLandesberger2016; @Hearst2016]. For example, with online learners in the
hundreds or thousands, peer review, critique, and feedback can help mitigate
some of these challenges [@Beyer2016], while also pushing students to practice
the learned concepts in a structured fashion. As data visualization design
changes, so too must the exercises, workshops, and materials we utilize to teach
these concepts.


These visualization design worksheets are one step toward building more
effective teaching tools for data visualization and design, but plenty of work
lies ahead. One clear area for future work involves materials for design
inspiration: brainstorm visualization encodings, abstractions, and tasks.
Initial work shared by He and Adar in VizItCards [@He2017] is a step in this
direction, and we encourage the community to continue this line of work. While
one student used VizItCards, she would have liked to see the cards generalized
for other visualization challenges. Furthermore, the visualization design
process, steps, and guidance can always be improved to be more descriptive, more
clear, and sufficiently succinct, and to encompass other design methods and
methodologies. Other common methods for teaching are design studios [@He2017]
and exercises [@Bertini2017], and it would be worthwhile to adapt design
worksheets for these settings. Lastly, scaffolding these design materials from
visualization novices to experts could provide support for the visualization
design worksheets to grow and expand for more advanced, creative, and flexible
use.





## BubbleNet Case Study: Casting, Collaborator Roles, and Discourse Channels

Upon reflecting on the BubbleNet design study in [@sec:security], we realized
that winnowing and casting of user roles[@Sedlmair2012b] occurred later in the
user-centered design process highlighted in [@fig:process]. Unlike a typical
design study, there was very limited time from a single set of domain experts.
By reviewing previous detailed cognitive studies of users and through
interviews, personas were crafted to identify different potential users
[@McKenna2015]. As a result, users were winnowed into two types, analysts and
managers. This approach was motivated by domain constraints: limited access to
users and data. Furthermore, the design activity framework highlights where the
winnowing and casting of user roles occurred, when revisiting personas in the
_understand_ activity, and these same users were incorporated when evaluating
the dashboard in _make_ with a usability study. The design process figure, when
incorporating these multiple channels, succinctly shows where and how users were
involved with different generative or evaluative methods as well as deployments.


Another reason that led this project to its own unique design process is due to
the task of presentation. Presentation inherently involves two or more parties,
so it could involve users beyond a data analyst. In a design study methodology,
Sedlmair et al. describe several different kind of collaborator roles, such as
front-line analysts and gatekeepers [@Sedlmair2012b]. Alternative collaborator
roles have been identified, such as liaisons [@Bertini2015] which bridge
visualization research to complex domains. While we worked with several
liaisons, the user personas identified four kinds of users where only one, the
network analyst, is a domain expert in cyber security. Other users, such as
network managers, have some domain knowledge, but there was clearly another
domain at work here: an organizational domain. Large organizations need to
disseminate information up a chain of command in order for decisions to be made
and passed down [@McKenna2015]. With multiple domains and types of users, this
work challenges the role of a single domain expert as the optimum collaborator.
It is important to identify these different user roles and design tools which
adapt to their needs, and the design activity framework, especially the
_understand_ worksheet, pushes on these concepts.


Lastly, working in the cyber security domain benefited from the multiple
discourse channel approach [@Wood2014] as highlighted in [@fig:process]. By
reflecting on our design process, this multiple channel approach is particularly
beneficial with the unique design constraints we faced: limited access to users
and data, multiple types of users, and balancing trade-offs to deploy tools. The
design of BubbleNet occurred within the second channel at a research
organization, but this design would not have been as successful without the
design methods and knowledge gained from the other channels. For example, the
third channel represents a collaboration with a university network analyst which
enabled us to validate abstractions of network security data and critically
changed BubbleNet's location view. By working at an operational organization in
the fourth channel, BubbleNet's design influenced and inspired new encodings to
be implemented by a team of developers, leading to operational tool deployments.
As discussed in [@sec:eval], deploying a tool is a complex process which
involves further design trade-offs, but it is important to discuss these aspects
to help further the field of visualization and get tools in the hands of users.





## User-Centered Design Methods

In our case studies, we demonstrated how user-centered design methods can be
both efficient and effective for visualization design. Specifically, we
highlighted the projects' visualization artifacts, guiding motivations, and
final results of each design method: qualitative coding, personas, and data
sketches. When performing these methods for data visualization, we noted that
the motivations and visualization artifacts aligned well with the activities of
the design activity framework, both _understand_ and _ideate_. These methods can
also be used in other activities, i.e., qualitative coding can be used as an
evaluative method paired with other techniques in any activity and data sketches
could also be utilized in the _make_ activity when parallel prototypes are being
built and tested using this approach.


User-centered design methods can help a designer establish user needs, uncover
design opportunities, and evaluate ideas, and these types of design methods can
be particularly useful in the early stages of _understand_ and _ideate_ for the
visualization design process. The three design methods discussed in both case
studies can involve any varied number of users. We encourage future
visualization design projects to broaden the methodologies, methods, and
techniques at their disposal in order to more completely explore the design
space for data visualization in a given domain. Ultimately, embracing
user-centered design methods and the importance of the design process will help
us as a community be more efficient at building effective visualization tools
across domains, users, data, and tasks.





## Reflections on Types of Research

As illustrated in [@sec:reflections], the design activity framework has the
ability to encompass and represent other types of research beyond
application-driven work, such as technique-driven or evaluative research
projects. These projects are just the beginning toward formalizing adaptations
of the design activity framework for these styles of research. For example,
custom worksheets for research activities within these approaches, with varying
artifacts and suggested methods, could be created, utilized, and validated. It
may be necessary to reshape the design activity framework and concepts within
for these different research modes. This is an interesting avenue for future
work to explore and shed further light on the connection of research activities,
such as reflection, learning, and writing [@Sedlmair2012b; @McCurdy2016], and
where they fit in the broader context of visualization design.


Visualization design, from experiments to systems to encoding or interaction
techniques, plays a role in visualization research beyond just that of design
studies. Researchers may often still work in teams and receive benefit from
common terminologies for the research activities they perform. However, it is
also unclear if the design activity framework is the appropriate model for all
these kinds of work, so new models or extensions may be necessary. Future work
should explore these facets and consider how to best teach, guide, and support
visualization novices in all aspects of visualization design.


It is also important to adapt this framework and process beyond academia and
pedagogy, to better understand how visualization designers work in industry and
on product teams to build visualization tools and systems. It may be necessary
to adopt more applicable or succinct terminology for such applications, and
these modifications could benefit the design activity framework as a process
model for a whole variety of interdisciplinary visualization projects engaging
members such as visual designers, data visualization experts, and software
engineers.

