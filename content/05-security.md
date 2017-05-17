# Case Study: Cyber Security Dashboard {#sec:security}

In this chapter, we discuss another case study for visualizing cyber security
data, specifically, building a cyber security dashboard to support visual
communication across multiple types of cyber users [@McKenna2015;
@mckenna2016]. One of the challenges in the domain of cyber security is limited
access to end users. We found certain design methods to be effective with this
design constraint in designing data visualizations, such as personas and data
sketches [@McKenna2015]. Through a collaboration with cyber security researchers
and users, we utilized the design activity framework to structure a design
process that studied how cyber information is communicated among network
analysts and managers. We then created a tool to aid that communication,
BubbleNet [@mckenna2016]. Using the design activity framework as a backbone for
this project, we balanced human-centered design methods with an informal agile
development process to produce a useful and effective dashboard for domain
users. We were also able to build upon and repurpose the design opportunities we
had identified with existing users from our redesign project into this dashboard
project [@mckenna2016]. We examine the role of two user-centered design methods,
user personas and data sketches, that helped us find appropriate visual
encodings for the dashboard. Furthermore, we conducted a formal usability study
with a standardized quantitative questionnaire in order to validate the
usability of the final dashboard tool. By reflecting on this design process, we
have found that visualization design artifacts played a crucial role in
communicating and reporting on the design process, and we have observed how the
design activity framework can help successfully shape a real-world visualization
design study.

<!-- CONCERN: is the focus on the f/w enough? role, purpose, use of activities throughout -->
<!-- CONCERN: where did existing models fail? more on 9-sf? what does DAF provide over them? -->





## Design Study Motivation

Over the past 10 years, roughly two _billion_ pieces of digitized personal
information have been lost or stolen, largely by hackers [@Kashan2015]. Several
noteworthy breaches include the Sony Pictures' discovery that over 100 terabytes
of data ranging from films to employee information to sensitive business
documents were copied off their networks; the publication of names, addresses,
phone numbers, and emails by hackers with administrative access to the United
States' largest bank, JP Morgan Chase; and the leaking of sensitive personal
information of T-Mobile customers from a breach within the Experian credit
agency, everything from names to social security and passport numbers.


Such hacks are becoming increasingly prevalent and sophisticated, making the
maintenance of a safe and secure computer network challenging, yet critical.
Maintaining security on these computer networks is tricky, particularly due to
the scale of the data as well as the constantly evolving nature of cyber
security attacks [@Erbacher2010a; @Best2014]. Often, these attacks require a
human interpretation in order to uncover, stop, and recover from them
[@DAmico2008]. Network analysts struggle with a very data-intensive task for
which it is easy to make mistakes, errors, and miscalculations [@Erbacher2010a].
Visualization is one way for analysts to both explore and present this large
data space, but analysts have been known to be hesitant about trusting
visualizations for their own workflows [@Fink2009].


In this chapter, we describe a design study focusing on the domain of cyber
security. In this design study, we worked with two dozen cyber security experts
over the span of two years with the goal of improving how analysts discover and
present interesting anomalies and patterns within computer network data. To the
best of our knowledge, this is the first end-to-end design study within this
domain. Conducting the design study presented an interesting set of design
constraints: limited access to the analysts and data, multiple types of
end-users, and deployment limitations. Some of these constraints go against
guidelines for conducting design studies from the nine-stage framework, such as
arguments for an up-front winnowing of users and collection of data
[@Sedlmair2012b]. Addressing these issues, however, allowed us to validate a
number of other guidelines for incorporating user-centered design methods into a
cyber security project [@McKenna2015], as well as for making use of a variety of
discourse channels [@Wood2014]. By reflecting on the use of these channels and
design methods, we found explicit connections of this design study to the design
activity framework based on the project's steps, design methods, and
visualization artifacts.


The primary contribution of this design study is the design, evaluation, and
deployment of an interactive dashboard, BubbleNet, for visualizing patterns in
cyber security data. BubbleNet is designed to not only support the discovery of
patterns, but also facilitate presentation of these patterns to various
stakeholders. We discuss a problem characterization for this domain, along with
a data and task abstraction. A secondary contribution of this work is a detailed
discussion of the design process, including use of several different
user-centered design methods [@McKenna2015], as well as an application of the
channels of discourse strategy [@Wood2014].


In the first part of this chapter, we discuss related work for cyber security
visualization and then describe the data and task abstraction. Next, we examine
a methodical design process for the unique design constraints we encountered
along with a detailed discussion of two specific design methods useful for data
visualization design. We then evaluate the BubbleNet dashboard both with a
usability study and then through deployment to real users. Lastly, we reflect on
implications from what we have learned while building the dashboard as applied
to both the cyber security and visualization communities.





## Related Work in Cyber Security

The tasks of discovery and presentation are open challenges in terms of
visualization for cyber security. Many visualization tools and techniques are
designed to fit the data, not the users [@Staheli2014]. Furthermore,
visualization and cyber security research is largely evaluated with use-cases
involving toy datasets and researchers, not practitioners in the field
[@Staheli2014]. In addition, very few tools have considered how to present cyber
information to stakeholders with less technical experience and knowledge, such
as IT personnel or network managers. Large organizations often have analysts
working together in teams and with a variety of other individuals, such as their
managers, in order to convey priorities and matters of importance to those in
leadership roles who make decisions [@McKenna2015; @Erbacher2010].


Numerous cyber security researchers have adapted existing visualizations for
data in this domain, but very little of this work has tested the usability or
utility for network analysts. Different researchers have plotted cyber security
data on bar and scatter plots [@Hao2013a; @Watson2005; @Lakkaraju2004]. Other
researchers have explored using a heatmap or matrix to encode various attributes
and hierarchies within the data [@Watson2005; @Koike2005; @Landstorfer2014;
@Komlodi2005]. Parallel coordinates have also been utilized by several
researchers to visualize multiple dimensions of data [@Erbacher2005; @Yin2004;
@Choi2009]. Goodall and Sowul went beyond a single parallel coordinates view
with other details-on-demand visualizations such as charts and maps into a
simple dashboard [@Goodall2009]. We noted that there is potential for us to
create a dashboard that combines and links multiple visualizations together and
then evaluate its usability and utility with end users.


Visualization research has sought out novel visual representations tailored to
cyber security data. Network graph layouts have been adapted and focused within
this domain [@Foresti2006; @Taylor2009; @Paul2013]. Map-like visualizations of
the entire internet seek to preserve the spatial location of similar types of
computers across multiple datasets [@Fowlwer2014]. Aggregated sliding slices of
time is discussed by Fischer and Keim in order to support the workflow of
network analysts dealing with large quantities of data [@Fischer2014]. These
techniques could be useful, but most of them have not been evaluated with
respect to their usability or effectiveness for network analysts with real data.


A number of cyber security researchers have studied the usability and
effectiveness of their tools, but there is no common evaluation framework to
utilize [@Staheli2014]. Researchers have developed custom surveys [@Musa2008;
@Fink2005; @Blue2008; @Komlodi2005], which make comparison difficult and may not
account for response bias [@brooke1996sus]. Leschke and Nicholas evaluated a
tool with a standardized usability survey [@Leschke2013] and others have
performed formal user studies [@Rasmussen2010; @Amershi2011], but none discuss
deployment. Landstorfer et al. designed a visualization in a user-centered
design process but garnered only initial user feedback [@Landstorfer2014]. Hao
et al. worked with analysts to showcase the utility of web-based visualization
dashboards for network security but did not employ the users' own data
[@Hao2013a]. Although visualization researchers have worked with users, we have
found no end-to-end design study in this space, from abstraction to deployment.





## Problem Characterization and Abstraction

The outer two levels of the nested model focus on the definition of a specific
problem domain and the types of data and tasks that users perform at an abstract
level to map to other visualization challenges [@Munzner2009]. To characterize
the domain problems and opportunities, we analyzed real cyber security datasets,
talked with a variety of researchers and end users, and surveyed a wide array of
related research into cyber security users. These activities largely fall into
the _understand_ activity, to better understand user problems and challenges,
but there are also some aspects of the _ideate_ activity, as researchers
analyzed data and created initial prototypes to explore possible variations of
the data schema, such as with data sketches. Many of the abstractions we present
here consist of high-level _understand_ artifacts, but some of the terminology
and realizations were adapted over time, even after we built the dashboard and
documented our research process to determine more concise and cohesive
definitions for this domain and the datasets.


Most domain research in cyber security focuses solely on data analysis, but the
task of presentation is a vital one for network analysts, as information must
often be conveyed to other people for decisions to be made [@McKenna2015].
Often, this information to convey and decisions to be made surround a problem or
an incident [@DAmico2008]. One analyst we spoke with summarized why presentation
is challenging: _"Pictures are great when going up to management because you
have 60 seconds to make your case"_ (analyst #4, or A4). Numerous cyber security
incidents can result in negative outcomes, such as information disclosure,
theft, and denial of service [@howard1998common].


Cyber security includes a variety of data types such as logs of computer
functionality, but network security is a subset that focuses on multiple
computer interactions with a base unit of a **network record**. A _network
record_ is metadata associated with the communication between two computers. The
metadata can include a variety of information, such as time, location, priority,
category, and various other attributes, collected from the details of the data
such as the timestamp and IP address. The variety of network security datasets
include raw packet capture, net flow, intrusion detection systems, and firewall
logs. Each dataset corresponds roughly with network records, but the key
differences are the associated attributes or metadata.


The basic unit of network security analysis is a **pattern**, a collection of
network records that represent some recurring or abnormal behavior, which can be
benign or malicious. One way to create patterns is to summarize or aggregate
records in different ways such as those coming from a specific computer, general
location, or subsets of time. Benign patterns represent typical, authorized
network records, such as typical outgoing web traffic along port 80. However,
patterns can be malicious, such as a network scan from a single external
computer in order to find vulnerabilities or disrupt an organization's network.
These malicious patterns can be a collection of many network records such as a
network scan or even a single record where a hacker exfiltrates a sensitive
document.


Pattern recognition and finding anomalies is a crucial aspect for data science
and machine learning in particular. Several researchers have adopted machine
learning techniques for cyber security [@Amershi2011] and also for finding
anomalies in social media analysis [@Zhao2014; @Cao2016]. These researchers
discuss the rich and deep applications of machine learning for each domain. Due
to the large scales of data in cyber security, these techniques can and often
are utilized to find subsets of potentially interesting network records to
visualize, but humans are still frequently required to analyze these results and
are a critical component of this triage process [@Amershi2011].


Another way to formulate patterns is to consider different aggregations of
network records, such as time and location. Many cyber security visualizations
have been developed for showing hierarchical time-varying aspects of the data
[@Erbacher2005; @Fischer2014]. From working with users, we found that
aggregation to a larger scale by _hours_ and _days_ is both useful and
interesting. Network security datasets are commonly aggregated by IP address,
and these datasets can be visualized in many ways, from IP grids to Internet
maps [@Goodall2009; @Lakkaraju2004; @Watson2005; @Koike2005; @Landstorfer2014;
@Komlodi2005; @Erbacher2005; @Fowlwer2014]. Aggregation of computers can also
occur by their location of an IP address, through such databases as MaxMind
GeoLite2 [@maxmind], used by other visualization tools, such as EMBER [@Yu2010].
We found that geolocation is the simplest and most intuitive way to present
cyber information to different users. Although not ideal, location can enable
users to formulate patterns that correspond to geopolitical entities such as
_countries_. For visualizing anomalies, it is also useful to compute statistical
information such as averages.


For this design study, the task focus was on the discovery and presentation of
cyber security patterns. Presentation of patterns requires simple and easily
understood visualizations for consumption by users who are not domain experts.
Discovery of patterns is an important part of network security analysis,
encompassing tasks identified by previous researchers such as perception,
detection, and monitoring [@DAmico2008]. Two analysts equate discovering these
patterns to finding a needle in a haystack, and the importance of aggregation is
illustrated by this analyst's insight on our aggregation choices of hour, day,
and country: _"We would have never have seen that [pattern] any other way, maybe
if we even had [data] formatted a different way that pattern would have never
emerged"_ (A1). Finding patterns can be particularly challenging since cyber
attackers are dynamic and constantly change their methods. For both discovery
and presentation, some important tasks include the ability to _identify_
interesting patterns as well as _compare_ patterns to find differences. For
example, an interesting pattern could be activity at a certain hour of the day
or a specific attribute between two countries.





## Design Process

As we conducted this design study, we focused on validating the utility  of the
design activity framework to capture the design methods we used, the resulting
visualization artifacts, and our design rationale. As a result of using the
design activity framework, this project resulted in creating a dashboard for
cyber security patterns. To present these patterns, we emphasized users beyond
the network analyst. As such, it was necessary to incorporate these other users,
their needs, and workflows into the design process in order to create the final
BubbleNet dashboard. This design process highlighted key insights into the
connection, similarities, and differences of user-centered design and a design
study. These insights make this work unique compared to past user-centered
design papers for cyber security. In particular, we found that the framing of
the design activity framework succinctly captured, described, and guided our
design process more effectively than the nine-stage framework process for design
studies.


While employing the design activity framework, we reflected on our design
process and modeled it in the form of the Wood et al. discourse channels, which
are _"complex relationship between producers and consumers of a visualization"_
[@Wood2014]. In this work, we utilized four distinct discourse channels: a
software company, a research organization, university information security, and
an operational organization. These different discourse channels interacted
together in unique ways that led to successful visualization artifacts as a
result.


We present an overview of our design process in [@fig:process]. Each row and
color corresponds to a different discourse channel. Each channel has different
users, data sources, and design methods that were employed. The primary
visualization artifacts of this process are the prototypes and tools, with other
figures in this chapter showing each. We created two dashboard prototypes during
this process, as shown in [@fig:dashboard1; @fig:dashboard2]. The final
BubbleNet dashboard is presented later in this chapter, and this dashboard is
linked to deployments in two discourse channels.


![
  Overview of our design process.
  Four distinct channels played a role in BubbleNet's design. The first
  (top-most) channel was previous work, and the second and fourth channels
  involved users in two distinct settings, both research and operational. The
  third channel involved a network analyst from the University of Utah. Each
  channel incorporated different sets of users and data, but the final design
  and deployment occurred due to the interaction of artifacts and user feedback
  across all channels. We highlight the various design activities conducted
  below the main timeline.
](figures/bubble-net/process-daf.pdf){#fig:process width="100%"}


![
  The first dashboard prototype.
  We created this initial prototype after using the personas design method,
  targeting our first design for analysts and managers. The primary encoding
  of this prototype is a treemap of countries around the world, sized and
  colored by the number of alerts or network records. The individual hexagons
  show a hierarchy of the treemap with individual cities of a country. The
  dashboard also incorporated report datasets, overlaying critical information
  onto the treemap.
](figures/methods/dashboard1.pdf){#fig:dashboard1 width="100%"}


![
  The second dashboard prototype.
  We implemented this design after conducting the data sketches method to
  redesign the dashboard and simplify the encoding of geopositioned data,
  removing the hierarchy of a treemap and instead using a map. The heatmap seen
  in the previous prototype was rearranged to align with a temporal bar chart
  and to give it more screenspace and link the two views.
](figures/methods/dashboard2.pdf){#fig:dashboard2 width="100%"}


The design activity framework timelines enabled us to reflect on how these
projects interacted together, through artifacts and transference of design
rationale. At the bottom of [@fig:process], we highlight the different
activities of the design activity framework, from the perspective of the primary
visualization designer across the various discourse channels, design methods,
and resulting visualization artifacts. What is unique is how a previous design
process, presented in [@sec:formulation], fed into this design study and the
unique impact that the previous visualization artifacts had on the final
BubbleNet dashboard visualization system.


A previous domain analysis informed this design study: a qualitative coding of
cognitive task analysis papers [@McKenna2015]. In order to establish specific
user needs, we performed a series of contextual semistructured interviews at a
research organization. As a result, four key user personas were identified for
dashboard design [@McKenna2015], which we discuss in detail later in this
chapter. By evaluating project constraints using the personas, the project was
further focused into two specific user personas: network analysts and managers.
By using the timelines inspired from the design activity framework, we were able
to actively connect these different discourse or project channels together, and
the visualization artifacts identified through different design methods, such as
qualitative codes and personas, focused the design of a cyber security dashboard
to the task of communication for specific types of users.


After selecting this subset of users, we adapted user needs from a previous
project [@McKenna2014] and prioritized for each of our user personas. Examples
of these needs or _user requirements_ include scaling to real-world data on a
single screen, preserving data context, emphasizing temporal representations of
patterns, designing visualizations for presenting to others, and keeping the
tool both intuitive and easy to use. Next, two dozen visualization encoding
ideas were sketched and weighted against each need. As a result, each idea was
scored by combining these priorities and weights, resulting in several key ideas
with the most potential. We created the first prototype from these ideas, shown
in [@fig:dashboard1]. This prototype contained a treemap of network records,
organized by city and country.


We evaluated this prototype using Nielsen's usability heuristics and Gestalt
principles. Specifically, we investigated the different views and interactions
with respect to the usability heuristics, marking both the successes and areas
to improve. The visualization encoding design was checked for any violations of
the Gestalt principles, for example grouping in the treemap satisfied the
proximity principle, but the lack of proximity between two time-based
visualizations (heatmap and temporal bar chart) failed to satisfy the
continuation principle since days were encoded on two malaligned axes. This
evaluation method highlighted low-level changes to fix, but we desired to
evaluate the dashboard at a higher level first: the data abstraction and
visualization encodings to see if a treemap was really most appropriate for
communication of cyber data.


To perform this evaluation, we turned to the data sketches method [@Lloyd2011].
Through existing tools and techniques, we showed data sketches [@McKenna2015] to
a collaborating network analyst to gather feedback on different encodings. This
feedback discouraged us from using a treemap since it took significant time to
present and explain the encodings to an analyst. Furthermore, implementing the
spatial treemap algorithm [@Wood2008a] uncovered trade-offs between the spatial
location (topology) and aspect ratio of each element (squarified). In other
words, spatially relevant treemaps were more challenging to read and to compare
size. We discuss further details on the data sketches design method later in
this chapter. However, the feedback received on the data sketches validated our
initial data abstraction of location-based aggregation since abstractions such
as network graphs are too complex for a simple summary view, whereas
location-based views required little to no explanation. Thus, we iteratively
developed a location-based encoding that is simpler and more intuitive for a
larger variety of users, shown in [@fig:dashboard2].


In [Section @sec:designworksheets], we illustrate further details of our design
process by placing visualization artifacts, such as concept sketches, into
design activity framework worksheets. Next, a usability study was performed on
this second prototype to evaluate its usability, resulting in the final
BubbleNet dashboard which we discuss later in this chapter. BubbleNet was
deployed in a research environment, but significant changes were necessary to
create the final tool for deployment into an operational environment. These
aspects of evaluation and deployment will be discussed further.


As previously discussed, a number of user-centered design methods have been
utilized in the cyber security visualization literature, such as interviews,
observations, usability testing, focus groups, and workshops. A few methods were
used in the context of a larger design process, but none of these methods were
validated in the context of contribution to a completed, deployed visualization
tool. Many other user-centered design methods have yet to be demonstrated for
cyber security visualization design. We explored two design methods in detail
for designing a visualization: _personas_ and _data sketches_. These design
methods played instrumental roles in the _understand_ and _ideate_ activities.
Next, we discuss the two methods in detail, along with our motivation to place
the method in the context of the larger design process. Then we highlight the
visualization artifacts achieved, followed by results and implications of what
we learned and a discussion of the methods' efficiency, effectiveness, and
limitations. We then summarize each method by presenting recommendations for use
in cyber security visualization design.





## Personas Design Method

The personas design method was utilized as a way to identify potential users for
a cyber security dashboard for communication of cyber information. We began this
design study with a broad, and fuzzy, goal, requiring us to take a step back and
identify the needs of the users; again, we started in the _understand_ design
activity. But who were the real users for a dashboard? With the task of
communication, we surmised that more than one type of user was meant to utilize
the dashboard. We could not find much research discussing users beyond network
analysts, so our motivation was to uncover information on a range of users for
cyber security to help form the design opportunities for this project. This
motivation is an ideal fit for the personas design method.


The personas method is often utilized within the user-experience, design, and
HCI communities [@Pruitt2003; @Faily2011; @Chang2008; @McGinn2008; @Martin2012].
Personas are _"documents meant to foster communication within a design team as
archetypes of users, their behaviors, and their knowledge"_ [@Martin2012].
Within the cyber security domain, Stoll et al. describe a specific methodology
for using personas, highlighting their benefits for cyber security visualization
design [@Stoll2008a]. Here, we further this work in three ways. First, we
describe how personas benefit the communication within a design team. Second, we
add visual elements to our personas to promote fast visual comparison of
multiple user profiles and highlight interactions between personas. Third, we
tailor our personas to the field of cyber security by incorporating key aspects
of cyber situational awareness.


We developed the personas based on a dozen semistructured interviews conducted
over six weeks with various stakeholders: network analysts, managers,
researchers embedded in cyber operations, and various other cyber security and
business-focused users. Reflecting on the data gathered during these interviews
and existing literature, we produced personas for four types of users: analyst,
manager, director, and CEO. Once we identified the four types of users for our
project, we narrowed the project's focus to specifically design our dashboard
for only two of the personas: analysts and managers. By isolating these two
types of users, we were able to keep our focus consistent throughout the rest of
the design process; from development to evaluation, these two user archetypes
became the key motivation to justify and balance all our decisions as a design
team.


### Visualization Artifacts

We present the resulting personas from our design study in [@fig:personas]. The
four personas are a cyber analyst, a network operations center (NOC) manager, a
director of information technology (IT), and a chief executive officer (CEO).
For each persona, we pinpointed the goal or domain-specific task for each
archetypal user and visually illustrated the user's cyber knowledge and
situational awareness (SA) focus. We also considered the range or window of
temporal data that each user requested, illustrating how to represent
visualization-specific needs within a persona. Next, we highlighted each user's
key cyber SA questions, pulling from an existing question taxonomy as a basis
[@Paul2013a]. Lastly, we identified the general flow of both decisions
(downward) and information (upwards) of these personas to characterize
interactions taking place between them.


![
  Cyber security personas for visual communication.
  We identified four visual personas for cyber security visualization, showing
  the role decisions and information play across all users. The personas method
  was particularly effective at narrowing our design focus and facilitating
  consistent communication as a design team.
](figures/methods/personas.pdf){#fig:personas height="100%"}


### Results and Implications

Personas played a critical role in helping us to decide which users and needs to
target in our design process. Narrowing the focus of our dashboard project early
was crucial due to the time constraints of our project. We decided that the
dashboard should not be too high level for only CEOs or just another tool for
analysts. We targeted our dashboard to both cyber analysts and managers by
combining features for analysts to quickly explore the data with standard
visualizations for managers to quickly comprehend the details of the data; see
[@fig:dashboard1] for the first prototype of our design using these two
personas. Furthermore, the narrowed design focus uncovered several key user
needs for our project. By brainstorming off these needs, we were able to ideate
upon various dashboard designs and compare how they worked for different users
based on the personas we created. Some examples of these needs for dashboard
designs include intuitive and easy-to-use, clear communication and presentation,
provision of details-on-demand, simplified aggregation of data, adaptability,
and promotion of collaboration between users. The personas continued to aid our
design team in both communicating and evaluating the dashboard, up until its
deployment.


### Discussion of the Method

The personas presented in [@fig:personas] can be used as a starting point or
tailored by others in future visualization design projects for cyber security.
Furthermore, these personas can be modified for different project motivations
and user needs; it is common for personas to alter and become more refined over
time [@Chang2008]. The personas design method took less than three months,
including the interview process, and resulted in the design of a deployed
dashboard. Thus, the personas method can be both efficient and effective for
cyber security visualization design. Additionally, the personas method can be
data-driven, where personas are built and evaluated against data directly
captured from users [@McGinn2008].


### Recommendations

- Use personas to target the right users for a design or to evaluate a design with your users in mind.
- Talk with real users to build personas; if you cannot, use existing research or qualitative coding of the literature.
- Pinpoint user goals, knowledge, behaviors, and activities, focusing on both similarities and differences across users.
- Incorporate visual encodings when appropriate to enable easier and faster comparison across personas.
- Use and adapt personas over time; keep them as a living document to fuel multiple design projects.





## Data Sketches Design Method

As originally pioneered, data sketches allow a designer to _"quickly and
flexibly produce transient and uncertain visual representations of domain data
by scavenging existing applications for functionality that allow data,
interactions, and functionality to be combined"_ [@Lloyd2011]. In other words, a
data sketch is a visualization developed using available software tools. We
incorporated data sketches into our design of the cyber security dashboard
during our _understand_ and _ideate_ design activities in order to establish a
more complete data and task abstraction for the communication of cyber
information. Our motivation was to better understand an analyst's needs, and to
ideate further on the potential design options; we also sought recommendations
for cyber security dashboard design. We asked a network security analyst at the
University of Utah to provide real-world data for the data sketches, and
followed-up with this analyst to get feedback on the sketches.


We obtained a network flow dataset from our collaborator containing over 2.3
million network flows, which captured over 0.4 TB throughput on the university's
network. This dataset captured a five-minute snapshot of the network traffic. In
developing data sketches of this flow dataset, our focus was not on the scale or
optimization of the data, but how to best represent the data. The question we
wished to answer was this: With this raw dataset and a network security analyst
user, what views are appropriate, or inappropriate, to use in a dashboard?


We spent a month sketching with this dataset. We utilized Python to simplify,
aggregate, and parse the data in various ways, and used Tableau, Gephi, and
D3.js to produce a variety of visualizations. Even with these powerful
visualization tools, it was still challenging to explore this relatively small
cyber security dataset. To supplement our own sketches, we also included images
from existing literature of less common and more complex visual representations
that made use of real-world cyber security data [@Fischer2014; @Koike2005;
@Taylor2009].


### Visualization Artifacts

We present an overview of the 20 data sketches we produced in [@fig:sketches];
please see the project website[^design-methods] for a full-page version of each data sketch. We
categorized each data sketch into four high-level groupings --- network graphs,
maps, aggregated charts, and time --- which helped guide our discussion with our
network analyst. We performed a free-form, informal evaluation session with our
analyst for three hours to see which visual representations were easily
understood and potentially most useful. These data sketches can be repurposed in
future projects for further brainstorming.

[^design-methods]: <http://mckennapsean.com/projects/vizsec-design-methods/>


![
  Overview of the 20 data sketches.
  We evaluated these data sketches with a cyber security analyst; this feedback
  was critical to our redesign of a cyber security dashboard in
  [@fig:dashboard2]. We categorized each sketch into four groups: network
  graphs, maps, aggregated charts, and time. We pulled several data sketches
  from existing literature [@Fischer2014; @Koike2005; @Taylor2009].
](figures/methods/sketches.pdf){#fig:sketches width="100%"}


### Results and Implications

We showed each data sketch to our analyst; here we summarize the analyst's
feedback for each kind of data sketch.

- _Network Graphs:_ The analyst was unconvinced that the graphs could show meaningful insights at scale with each node representing a single IP address. Furthermore, the layout algorithm confused the analyst since it positioned each IP address at a location that was not meaningful to the analyst.
- _Maps:_ In contrast to the network graph sketches, the map representations garnered positive feedback from the analyst, in particular the cartograms due to their novelty.
- _Aggregated Charts:_ These charts concerned the analyst because the finest level of detail was not available. We also included one data sketch to show a 3D data chart, which seemed to entice the analyst despite our continued warnings about the usability challenges of 3D for cyber security visualization [@Komlodi2005]. More unique kinds of visualization, such as parallel coordinates and treemaps, confused the analyst on first glance and required further explanation. After explanation, the analyst commented that parallel coordinates seemed promising for exploring multidimensional data, whereas the treemaps, which showed the IP address hierarchy, seemed less useful.
- _Time:_ These sketches were discussed in less detail; however, the analyst stated that the timestamp was one of the least important data fields to him.


After reviewing the analyst's feedback, we synthesized several considerations
for cyber security dashboard design:

- Complex 3D graphics and interactions can be perceptually misleading and distract from the visual representation.
- Certain visual encodings, such as parallel coordinates and treemaps, may require significant explanation and should generally not be used in a dashboard.
- Precise details on the time scale may not be immediately vital.
- Summary views for communication can use aggregation.
- Aggregation of data should be immediately obvious.
- A map-based view could aid the discovery of patterns.


With these considerations in mind, we revisited our initial dashboard design and
performed another iteration on the _ideate_ and _make_ design activities to
produce the final dashboard design shown in [@fig:dashboard2]. The major change
we made in the final design is the type of encoding, using a map view with
aggregation over time. This change was, in part, driven by the results of the
data sketches method, which showed the potential of aggregation and map-based
views for discovering and communicating cyber data.


### Discussion of the Method

We found that data sketches were very time efficient; the entire process took
about two months to set up, perform, evaluate, and analyze. Furthermore, these
data sketches were effective in our design process for producing a set of
recommendations for dashboard design, and for pinpointing certain
representations of the data as promising. Furthermore, this method provided some
key insights for our redesign of the dashboard, which is currently deployed to
users. These data sketches and the feedback we received can be used by others to
inspire and evaluate their own visualization design projects for cyber security.


There were several limitations to our approach. First, we took several of the
sketches from images in the literature, and thus they were not based on our
collaborator's data. Unfortunately, many of the tools in visualization papers,
particularly for cyber security, tend not to be publicly available or provide a
consistent data format for others to easily and readily use the tools for such
an exercise. This meant we either had to not include these more unique and
interesting visualizations in our set, or compromise by showing alternative
data; we opted for the latter and included a brief description of the data being
used for each encoding. The second limitation was that we received feedback on
the data sketches from only one analyst. Although additional analyst feedback
would be preferable, the feedback we did receive was helpful for allowing us to
cull potential design ideas and focus on a smaller subset of ideas quickly.


### Recommendations

- Incorporate real data whenever possible; if you cannot, use realistic datasets like the VAST challenge datasets.
- Repurpose the tools you know, and experiment with new ones (e.g., Python, Tableau, Gephi, D3.js, Processing, Excel, Spotfire, Arcsight, Splunk).
- Utilize real-data examples of visualization tools if a tool is unavailable or requires excessive time to input your data.
- Explore both interaction and animation in your data sketches.
- During evaluations, provide users with tasks or prompts if your goals require focusing the user feedback.
- Users may provide initial positive feedback on sketches because they are novel; consider re-evaluating at a later time.
- Introducing many data sketches at once can overload users; consider introducing sketches in multiple sessions.





## BubbleNet Dashboard

As a result of the various design methods and visualization design process, we
created BubbleNet, a novel dashboard to visualize and communicate patterns in
cyber security datasets. In this section, we present the encodings and design
justifications behind each view of the BubbleNet dashboard, shown in
[@fig:dashboard]. In BubbleNet, each view supports interactive selection of
elements. This selection pivots the data in all other views on the fly to the
given selection, which supports identifying interesting patterns and comparing
them as well.


![
  The BubbleNet dashboard.
  This dashboard consists of multiple, interactive views, labeled by its
  corresponding encodings: (a) location map based on a Dorling cartogram, (b)
  temporal chart and heatmap, (c) attribute bullet bar charts, (d) record
  details table, and (e) selection overview.
](figures/bubble-net/dashboard.pdf){#fig:dashboard width="100%"}


### Location View

BubbleNet's primary view is a location-based map view shown in
[@fig:dashboard](a). This encoding is a Dorling-like cartogram [@d3dorling] that
animates circles to preserve spatial location. The implementation here is a
simplification of the Dorling cartogram algorithm [@Dodge2011]. Each circle
represents an aggregation of network records by country, and the Dorling-like
cartogram is similar to a force-directed layout, initialized by the country
centroids. Each circle is encoded in size by the quantity of records, and
deviations from an average are encoded using color where red is more records
than average and blue is less. Size is encoded on a log scale due to both the
importance of visualizing a single record as well as the large range of record
values, up to hundreds of thousands.


After gathering feedback on the initial treemap prototype, we learned that the
details of the location (e.g., city) were less important and less amenable to
visualization in a single view. As discussed previously, there are also caveats
to utilizing a treemap algorithm since there are trade-offs between location and
the squarified nature of the treemap. Furthermore, treemaps were not desired by
us as designers due to the aesthetic requirements of whitespace, since they are
space-filling, unlike a map that has more whitespace. This is why the first
prototype used hexagons instead of rectangles in the treemap in order to provide
more whitespace between elements, but we switched to circles since they are
simpler and pack effectively on a map that utilizes whitespace more
aesthetically in our opinion.


Originally, the dashboard dual-encoded color and size to the number of records
as in [@fig:dashboard2], but the usability study introduced in the next section
obtained requests from users to show change visually on the map. Some records
could not be geolocated via MaxMind [@maxmind], so they were placed on an empty
portion of the map to save space. Interactions with various other views in the
dashboard result in an animation of the force-directed layout algorithm, and
these animated transitions did not appear to distract or annoy users but did
captivate them. This animation enabled a more consistent map view for users,
unlike the treemaps, which resulted in more significant changes of size and
location due to trade-offs of the underlying algorithms.


### Temporal View

Two views in [@fig:dashboard](b) encode time: a bar chart of network records per
day with a common horizontal axis of days that aligns with a temporal heatmap
beneath it where its vertical axis is by hour. The bar chart provides a quick
overview of each day, and the heatmap provides details by the hour to support
quick pattern discovery. It would be possible to derive similar encodings for
different aggregates of time. The heatmap limits the number of days to a week in
order to avoid data overload and reduce color perception issues by keeping the
heatmap squares larger. The bar chart and heatmap views are arranged along a
common axis due to early user feedback and the heuristics evaluation, which
resulted in moving, enlarging, and linking these two encodings to create an
effective temporal pattern filter.


### Attributes View

The BubbleNet dashboard also includes bar charts and bullet charts for different
attributes of the data, e.g., the priority and category for each network record,
shown in [@fig:dashboard](c). Bullet charts are inspired by Stephen Few's bullet
graphs for dashboards [@few2010bullet]. Bullet graphs encode a value, a
qualitative ranking, an average, and a projection into a single element, but a
_bullet chart_ is simplified: an inner bullet represents a subset of the full
bar. In other words, the entire world's value is represented as a lighter bar,
and the value of a selected country is the smaller, darker bullet inside it, as
in [@fig:dashboard](c). Furthermore, the bullet chart similarly encodes the
average for an individual country using a thin, dark line.


Bullet charts enable showing a subset of a larger value, i.e., a country's value
with respect to the world's amount. Unlike bullet graphs, bullet charts show a
quantitative subset, and this subset enables quick comparison through
interaction. As with previous scales, we incorporated a log scale for these bar
charts. We considered alternative encodings of the data across all views, such
as orders of magnitude markers [@Bargo2014], but these encodings required
significant explanation and collided with encoding subsets. A log scale helps to
visually show both extremely large and extremely small values at the cost of
comparing values precisely, but interaction supports comparing precise values
using text.


### Records View

A details-on-demand table view in [@fig:dashboard](d) provides a summary of the
different records in any selection. This summary includes the quantity,
user-friendly name, ID or type of record, and the detailed attribute
information. These details enable analysts to understand what is happening in
any selected aggregate of network records in the dashboard. As such, we created
this table and dataset by request of all analysts during the usability study.
Inclusion of network record details is critical to this discovery of patterns.
In our evaluation, analysts told us that they were able to not only discover
patterns using BubbleNet, but also envision using this dashboard to present what
they found.


### Selection and Interaction

Interaction is a crucial component of most elements on the BubbleNet dashboard.
Most interactions involve a selection that specifies some pattern, which updates
the selection window in [@fig:dashboard](e) with details such as the date, time,
country, number of records, and the deviation from average. Furthermore, a
visual summary of the pattern's total records is shown in a horizontal bullet
chart. For example, selecting four countries results in very different patterns
in the heatmap, as shown in [@fig:interaction]. We provide a video showcasing
all possible interactions on the project website.[^bubblenet]

[^bubblenet]: <http://mckennapsean.com/projects/bubble-net/>


![
  Visible patterns in the dashboard.
  Most elements of the BubbleNet dashboard are interactive and update all other
  views accordingly. For example, selecting four countries shows significantly
  different patterns in the hourly heatmap for each of these views.
](figures/bubble-net/bubble-combine.pdf){#fig:interaction width="100%"}


All interactions with the dashboard require one click or fewer, meaning a user
can hover over any element for an updated view of the patterns in BubbleNet.
This hover over affects all other views, and BubbleNet also provides a pop-up of
this selection as in [@fig:dashboard](a). By clicking on any element, that
selection becomes locked in place and updates the selection window in
[@fig:dashboard](e). Otherwise, when a user hovers off an item, its previous
selection is reset.


By default, the initial pattern is the most recent day and the entire world. As
such, the bullet charts in [@fig:dashboard](c) look like regular bar charts
until a country is selected to show this country as a subset of the world's
pattern. Through feedback from users, we found that reducing clicks for
selection was desired in a dashboard setting and enabled fast comparison of two
selections, by selecting one element and hovering on and off another element. We
also added keyboard interactions to more easily navigate selections through time
and to reset back to the default pattern.


One can compare the interaction of each view with our tasks, discussed
previously. For location, temporal, and attribute views, all the elements were
interactive, e.g., hovering or clicking on a country, day, hour, or type of
attribute. These selections supported pivoting data to identify and compare
patterns. The records table view supports identification and comparison of
patterns but not pivoting since analysts often use their own tools for this
purpose.


### Implementation

We created the BubbleNet dashboard presented in [@fig:dashboard] using D3.js for
all visualization components. Each interaction filters a different portion of
the same dataset loaded in the web browser. These datasets are prepared via a
set of back-end Python scripts that aggregate network security datasets into
summaries by day, broken apart by location and by hour with statistics
precomputed on the data. Lastly, these daily summaries are combined in Python to
produce JSON files for the web dashboard, so incorporating datasets that update
in real-time is possible but currently requires a refresh of the page.


The visualizations shown here, in the video, and in the usability study all
showcase real data from a large organizational network, capturing a summary of a
month's worth of data or about a million records. In particular, the dataset
shown is from an intrusion detection system, which automatically flags important
network records as alerts for network analysts. These alerts can be generated by
predefined rules, which is most often the case, or by more sophisticated machine
learning techniques. The BubbleNet dashboard is designed in such a way to
support visualization of any dataset that can be broken into network records and
geolocated, so it works best when analyzing traffic over the internet. When it
comes to scalability, the dashboard maintains interactivity with millions of
records due to aggregation done on the back-end.





## Evaluation and Deployment

Evaluation is undoubtedly an important aspect to designing tools for users, both
for cyber security [@Staheli2014] but more broadly as well. First, we discuss
the evaluation methodology of a usability study. This study is a combination of
formative and summative evaluation since we prioritized key issues on a
high-fidelity prototype but user needs were also uncovered. The results of this
study highlight the usability of BubbleNet, and the BubbleNet dashboard in
[@fig:dashboard] was thus deployed in a research environment. However, this
study also highlighted missing elements of utility from the BubbleNet dashboard,
so a final design iteration in the _make_ activity was required to address these
elements before we could _deploy_ the tool in an operational environment.


### Evaluation Methodology

To improve upon the second prototype from [@fig:dashboard], we performed a
usability study with network analysts and managers from both research and
operational organizations using real-time, real-world data from an
organizational network. The intent of this study was to improve the design and
see if the prototype met the needs of both analysts and managers. Nine cyber
security professionals participated in the study: five analysts, four managers.
Each participant took part in a one-hour long think-aloud session, conducted by
one moderator with an observer taking notes, both of whom participated in this
research. Each session contained a scripted walk-through of the prototype,
several prescribed tasks to complete, open-ended questions about how users would
use the prototype, and distribution of a system usability scale
[@brooke1996sus].


To examine data from the think-aloud session, I analyzed the notes taken by the
observer using a qualitative coding methodology [@Strauss1990]. I conducted this
coding, through an open tagging of two users' comments and consolidating tags to
all other user comments. Furthermore, the system usability scale is a
standardized survey technique [@brooke1996sus] used to evaluate the prototype's
usability, and other researchers have utilized such a survey [@Leschke2013].
This usability survey has been used to evaluate the usability of systems for 30
years with its set of 10 standardized statements rated on a Likert scale, and it
works well with a small group of users [@sauro2011sus]. By combining this survey
with a qualitative coding methodology, we sought to increase the analytical
rigor of evaluating our prototype to determine if it was ready to be deployed to
users.


### Evaluation Results

After coding each of the participants' comments, the following categories of
tags were formed: desired task, that task's intended target in the dashboard,
and its artifact. Example tasks include to present, filter, or identify with any
of the views presented in the BubbleNet dashboard, and example artifacts include
successes, struggles, and failures along with other tags such as feature
suggestions. These tags provided a unique view on the qualitative data, and a
list of features were prioritized and implemented for BubbleNet in
[@fig:dashboard]. The added features include: details-on-demand
records view, better selection feedback, new map color encoding, and keyboard
interactions. This analysis process gathered the key successes of the BubbleNet
dashboard:

- Temporal pattern detection was simple and easy using the heatmap: _"I keep getting drawn to the heatmap and these darker areas, because they certainly stand out"_ (A4) and _"[The heatmap] helps find those temporal patterns"_ (A1)
- Users expressed that the dashboard's utility was for discovering patterns and trends in the data: _"The majority of what we are looking for is patterns and this just makes patterns which is faster"_ (A4)
- One-click-or-fewer interactions worked very well: _"It's very responsive and dynamic; the fact that it changes as I narrow [in] is the best"_ (manager #2, or M2)
- Most interactions occurred with the bullet charts and heatmap: _"I could write a splunk query to do this, but this is easier"_ (A5)
- No expressed dislike for animation in the map view: _"[The] best part is the instant visual gratification"_ (A4)


Furthermore, this analysis derived a set of design considerations for future
cyber security dashboards, discussed in the next section. With the first few
participants of the study, we discovered a common usability issue since the
bullet charts had two different bars to click on. Along with visual bugs, these
issues were fixed right away to focus feedback on less obvious issues.
Quantitatively, these design alterations could raise concern, but, since the
changes were motivated by and reduced user frustrations, we hypothesize that the
quantitative results from the usability survey would have improved if we had
re-run the study with these fixed usability issues.


The prototype gave users novel insights into their dataset. For example, one
participant found a pattern in a particular country and told us that he _"never
would have got[ten] there by looking at the alerts in text format"_ (A1). This
same analyst told us that he could imagine this dashboard being used with other
kinds of datasets as well: _"pretty much everything: flow data, [firewall logs],
[proxy logs], anything"_ (A1). This statement helped confirm that the
abstraction was at just the right level since the dashboard could adapt to so
many cyber security datasets.


We present the quantitative results of the usability survey in [@fig:sus]. The
system usability scale provides a standard set of questions where an average
system would receive a score of 68 out of 100 [@sauro2011sus], and the usability
of our prototype was found to be above average: 74.7. Each individual question
can be broken into a set of characteristics [@sauro2011sus], and by doing so we
found that the BubbleNet dashboard scored high on learnability and ease of use.
By analyzing the results of analysts versus managers, we found no significant
differences. However, network managers rated BubbleNet as less complex, less
cumbersome, and easier to learn. We did have one outlier (A8), who was two
standard deviations lower than the average, which lowered the final score due to
the relatively small sample size. We hypothesize that this user simply rates
things more strictly since this user still achieved tasks successfully and had
similar concerns as other analysts.


![
  Dashboard usability scores as rated by analysts and managers.
  These are the final scores of a system usability survey of nine different
  users, both network analysts and managers. The average score of the dashboard
  is 75, above the average usability score of 68 [@sauro2011sus].
](figures/bubble-net/sus.pdf){#fig:sus width="100%"}


### Deployment

After the usability study, further development led to the final BubbleNet
dashboard. Then, BubbleNet was deployed to users with real-time data in a
research network operations center. However, BubbleNet was developed and
deployed with only a single data source and a short time range, so it was
arguable how useful its design could be for other users. This problem is coupled
with the fact that the usability survey scored lower on a question that arguably
could be interpreted with respect to its utility: _"I think that I would like to
use this system frequently."_


To gauge its operational utility, the BubbleNet dashboard was further
demonstrated with multiple relevant datasets to different analysts at three
cyber operations centers. Analysts and managers provided qualitative feedback
via comments, both during the demonstration as a group, and in private
conversations afterwards. These demonstrations, feedback, and design iterations
took place in the fourth design channel of [@fig:process]. In summary, this
feedback highlighted the simplicity of the flat map, the conjunction of small
multiples with interaction, and a critical area for improvement with respect to
scaling to multiple data sources.


This feedback from operational analysts led to the final design iteration and
deployed operational tool. To incorporate multiple data sources, significant
trade-offs existed between displaying all data and the tight integration
required for linked small multiples as presented in BubbleNet. As such, this
final tool utilizes the assembly-canvas metaphor [@ogrinz2009mashup], similar to
Tableau's dashboards where a custom visualization dashboard is built on the fly.
The flat map serves as the background for any geospatial data. There is a
left-most palette that lists the available data sources. When selecting data
sources that are not geospatial, a floating visualization palette is placed on
the screen for the user to select a different visualization for the data. These
palettes support customization of numerous visualizations: e.g., treemap,
node-link diagrams, sunburst charts, and timelines, and this customized
dashboard can be saved and shared.


After implementing this final tool, end users have expressed an interest in
adopting it for daily use. Next steps for the project include a formal,
summative end user evaluation. While developing this final design, we identified
several design considerations for future development, such as establishing
consistent visual encodings across varied datasets and connecting these
visualizations through interaction. Although not in the scope of this project,
these considerations remain important for continuing operational deployment.







## Summary

We uncovered a set of implications for dashboard visualization of cyber security
data that others can use. First, analysts sought details of the data whereas
managers wanted the broader impact of an incident on the larger network. Second,
there are many different ways to aggregate and provide details of the underlying
data, so it is imperative to use and adapt multiple cyber visualizations to
different needs over time. Third, it was discovered that a map for cyber data is
not completely useless. Users are able to situate themselves and pivot data to
find novel insights, and a map is one way to scaffold a visualization into other
visual representations and encodings [@Marai2015]. Fourth, fast hover-over
interactions are very appropriate to reduce the number of required clicks to
pivot visualizations using animation and provide quick details on demand.


We found that the design activity framework more comprehensively captured the
design process of this project and the multiple discourse channel interactions,
in ways which the previous nine-stage framework failed to connect visualization
artifacts and design decisions across projects. However, the BubbleNet dashboard
is not the end of research or development into cyber security dashboards. The
use of a map does not work for all data, and there is more work needed to find
more effective encodings such as broader impact of cyber security incidents.
Nevertheless, the design process of BubbleNet shows how other design studies can
work with collaborators and users beyond just data analysts. When working with
these other types of users, it becomes more important to balance and prioritize
appropriate sets of user needs to design, develop, and deploy effective,
domain-specific visualization tools.

