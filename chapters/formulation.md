
# Formulation of the Framework

**_TODO:_**

  - include initial cyber security redesign project
  - can include some more details of the framework and redesign example
  - for proposal, keep it minimal, just the papers that we have for now


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
  displayed variable from the images in (a).  In (d), purple indicates strong
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
Even when sharing this with our biology researchers in our collaborator's lab, we had difficulty in explaining what any particular scatterplot.
There was significant barriers to others using this tool for exploring their large datasets,
and even when they could use the tool it still limited them by what features were supported.
This is because the tool was designed as a general-purpose proof-of-concept of this novel projection technique.
When reflecting on this project, we realize that we had no formalized design process to ensure that user needs were being fed back into the design of this tool,
and that collaboration with another researcher led to different contributions and a less useful tool for our collaborators.





## Redesigning a Visualization System







## Reflecting on Redesign within the Framework







## Exemplar Methods



