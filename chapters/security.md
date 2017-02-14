# Case Study: Design Study in Cyber Security {#sec:security}

A second but successful case study in the field of cyber security focused on a
new investigation: building a cyber security dashboard to support visual
communication across multiple types of cyber users [@McKenna2015; @mckenna2016].
One of the challenges in the domain of cyber security is limited access to end
users. We found certain methods to be effective with this limited access, such
as personas and data sketches [@McKenna2015]. Through a collaboration with cyber
security researchers and users, we were able to perform a design study between
network analysts and network managers in order to study how cyber information is
communicated and created a tool to aid that communication flow [@mckenna2016].
Using the design activity framework as the backbone for this project, we
balanced user-centered design methods with a development process to produce a
useful and effective dashboard for domain users. We were also able to build off
of and repurpose the design opportunities we had identified with existing users
from our redesign project into this dashboard project [@mckenna2016].
Furthermore, we performed a formal usability study with a standardized
quantitative questionnaire in order to validate the usability of our final
dashboard tool. By reflecting on this design process, we have found that
artifacts play a critical role in communicating the design process, and we have
seen that design studies can be formed and reflected upon using the design
activity framework. We have modified the design activity framework accordingly
with these insights.





## Design Process

This project focused on creating a dashboard for cyber security patterns. To
present these patterns, there was a focus on users beyond the network analyst.
As such, it was necessary to incorporate these other users, their needs, and
workflows into the design process in order to create the final BubbleNet
dashboard. This design process highlighted key insights into the connection,
similarities, and differences of user-centered design and a design study, and
these insights make this work unique compared to past user-centered design
papers for cyber security. As a result, we reflected on this design process and
modeled it in the form of Wood et al.'s discourse channels, which are *"complex
relationship between producers and consumers of a visualization."* [@Wood2014]
In this work, we utilized four distinct discourse channels: a software company,
a research organization, university information security, and an operational
organization. These different discourse channels interacted together and led to
successful outcomes as a result.


![
  An overview of our design process. Four distinct channels played a role in
  BubbleNet's design, the first was previous work, and the second and fourth
  were various users in two distinct settings, both research and operational.
  The third channel involved a network analyst from a university. Each channel
  involved different sets of users and data, but the final BubbleNet design in
  c) and deployments all occurred due to the interaction of outcomes and user
  feedback across all of these channels.
](figures/bubble-net/process.pdf){#fig:process width="100%"}

\al{larger versions of dashboards?}

We present an overview of our design process in {*@fig:process}. Each row and
color corresponds to a different discourse channel. Each of these channels have
different users, data sources, and design methods that were employed. The
primary outcomes of this process are the prototypes and tools, with screenshots
shown above the timeline for each. Prototypes are linked via curved lines to
evaluation methods, and the final BubbleNet dashboard in c) is linked to
deployments in two different discourse channels.


The first portion of this design study was informed by a previous domain
analysis: a qualitative coding of cognitive task analysis papers [@McKenna2015].
In order to establish specific user needs, we performed a series of contextual
semi-structured interviews at a research organization. As a result, four key
user personas were identified for dashboard design [@McKenna2015]. By evaluating
project constraints, the project was further focused into two specific user
personas: network analysts and managers.


After selecting this subset of users, user needs were adapted from a previous
project [@McKenna2014] and prioritized against each of our user personas.
Examples of these needs or *user requirements* include: scaling to real-world
data on a single screen, preservation of data context, emphasizing temporal
representations of patterns, designing visualizations for presenting to others,
and keeping it both intuitive and easy to use. Next, two dozen different
visualization encoding ideas were sketched and weighted against each need. As a
result, each idea was scored by combining these priorities and weights,
resulting in several key ideas with the most potential. We created the first
prototype from these ideas, shown in {*@fig:process}a). This prototype contained
a treemap of network records, organized by city and country. We evaluated this
prototype using Nielsen's usability heuristics and Gestalt principles. \al{how?
not many details} This method highlighted low-level changes, but we desired to
evaluate the data abstraction and treemap encoding.


To perform this evaluation, we turned to the data sketches method [@Lloyd2011].
Through existing tools and techniques, twenty different data sketches
[@McKenna2015] were shown to a collaborating network analyst to gather feedback
on different encodings. This feedback discouraged us from using a treemap since
it took significant time to present and explain these to an analyst.
Furthermore, implementing the spatial treemap algorithm [@Wood2008a] uncovered
trade-offs between spatial location (topology) versus aspect ratio of each
element (squarified). In other words, spatially relevant treemaps were more
challenging to read and to compare size. For further detail on these sketches as
both design alternatives and for an analysis tailored for the domain of cyber
security, please see previous work on the data sketches design method
[@McKenna2015]. However, the feedback received on the data sketches validated
our initial data abstraction of location-based aggregation since abstractions
like network graphs are too complex for a simple summary view, whereas
location-based views required little to no explanation.


Thus, we iteratively developed towards a location-based encoding which is
simpler and more intuitive for a larger variety of users, shown in
{*@fig:process}b).


A usability study was performed on this second prototype to evaluate its
usability, and this resulted in the final BubbleNet dashboard in
{*@fig:process}c). While BubbleNet was deployed in a research environment,
significant changes were necessary to create the final tool for deployment into
an operational environment. These aspects of the final tool, evaluation, and
deployment will be discussed further in the final dissertation.

