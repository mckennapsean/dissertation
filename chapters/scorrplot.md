
# s-CorrPlot: An Interactive Scatterplot for Exploring Correlation

The degree of correlation between variables is used in many data analysis
applications as a key measure of interdependence. The most common techniques
for exploratory analysis of pairwise correlation in multivariate datasets,
like scatterplot matrices and clustered heatmaps, however, do not scale well
to large datasets, either computationally or visually.  We present a new
visualization that is capable of encoding pairwise correlation between
hundreds of thousands variables, called the s-CorrPlot.  The s-CorrPlot 
encodes correlation spatially between variables as points on scatterplot
using the geometric structure underlying Pearson's correlation.
Furthermore, we extend the s-CorrPlot with interactive techniques
that enable animation of the scatterplot to new projections of the correlation
space, as illustrated in the companion video in Supplemental Materials. We
provide the s-CorrPlot as an open-source R-package and validate its
effectiveness through a variety of methods including a case study with a
biology collaborator.





## Introduction

Pearson's correlation coefficient is a basic and widely used correlation measure,
which captures the degree of a linear relationship between two variables.
Pearson's correlation is used in a broad range of applications, from finding
genes that are involved with a specific disease network
[@horvath2008geometric], to finding sociological variables that interact
in a complex manner [@allison1977testing]. Visualization of pairwise
correlation aims to provide investigators with new hypotheses to test.


As the amount of available data continues to expand in these fields,
visualizing correlation becomes challenging because standard techniques for
exploring correlation, discussed in detail in [@sec:related-work],
lack the capacity to deal with these increasingly large datasets. This
paper develops a novel approach to visualize and explore
correlation among many variables based on a spatial encoding termed the
s-CorrPlot. The s-CorrPlot is shown in [@fig:teaser](b) on an
illustrative dataset; the details of this example are discussed
in [@sec:demonstration].


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
](figures/scorrplot/corr-house.pdf){#fig:teaser width="100%"}


Scatterplot matrices [@Hartigan75Printer; @Cleveland88Dynamic] and parallel
coordinates [@Inselberg85Plane], shown in [@fig:teaser](c), rely
on a visual determination of correlation, but suffer from underestimation
effects [@Jing10Judging] and screen space limitations with large numbers
of observations [@friendly:tas02] and variables [@Peng04Clutter].
Scatterplot matrices and parallel coordinates provide a visualization of
correlation that shows fine grained detail and can distinguish identical
correlation coefficients arising from different causes, such as Anscombe's
quartet.  To illuminate structure between many variables these plots are not
suitable, however.


A standard approach to visualize correlation among many variables
are clustered heatmaps [@wilkinson2009history; @seo2002interactively], as in
[@fig:teaser](d). Heatmaps directly visualize correlation between each
pair of variables using a color encoding and can highlight clusters of
variables reasonably well, but they also have a number of limitations: pairwise
correlation computations grow quadratically with the number of variables;
clustering is necessary for pattern detection, but the visual results are
highly variable based on the clustering technique [@seo2002interactively];
and accurate evaluation of correlation values is difficult due to the relative
nature of color perception [@Albers06Interaction; @Wong10Color].


The main contribution of this work is an alternative to heatmaps: a new visual
encoding of correlation, called the s-CorrPlot, that highlights correlation
structure among many variables as points in a scatterplot. This encoding scales
to large datasets containing hundreds of thousands of variables and thousands of
observations, both computationally and visually. The visual encoding of the
s-CorrPlot  is based on an 2D orthogonal projection of standardized variables. The
observation that standardized variables lie on a unit hypersphere leads to a
derivation of a new exact spatial encoding of correlation through orthogonal
projection. The derivation of this new spatial encoding is described in
[@sec:spatialencoding], where the encoding is precise for a subset of all
pairwise correlations with error bounds for the rest. We improve visual
scalability of the plot with a density estimation technique that reduces visual
clutter and enhances perception of structure.


As a secondary contribution to this work, we illustrate the utility of the
s-CorrPlot by combining it with interactive techniques for multidimensional
exploration, discussed in [@sec:interaction]. We provide an
implementation as an open-source R package and demonstrate the s-CorrPlot on
two datasets in [@sec:validation], including a case study with a
biology collaborator.





## Background & Related Work {#sec:related-work}

This work focuses on Pearson's and Spearman's correlation coefficients, which
measure the strength of linear and monotonic relationships between two
variables, respectively. We adopt the terminology from
[@dempster1969elements] referring to a multivariate ($n \times p$) sample as $n$
individuals on $p$ variables. Correspondingly, we can think of an individual as a
point in the **individual space** of dimension $p$ and a variable as a
point in the **variable space** of dimension $n$. Methods for visualizing
correlation can be categorized as operating in either of these two spaces.


### Visualizing Correlation

Scatterplots are the most basic method for visually
determining the correlation between two variables
[@Cleveland88Dynamic; @Staudte90Seeing; @Rensink10Perception; @Elmqvist08Rolling].
In individual space, each axis represents a variable and a plotted point
indicates the observed values of an individual for those two variables;
correlation is encoded by deviation from a straight line of the resulting point
cloud. For comparing more than two variables, a scatterplot matrix
(SPLOM) creates a small-multiples view of the scatterplots for all possible
combinations of variables [@Hartigan75Printer; @Cleveland88Dynamic]. While a
very rich view, a SPLOM requires considerable screen-space and does not scale well
to exploring more than several dozen variables in a dataset
[@friendly:tas02].


Another method for visually estimating correlation is a parallel coordinates
plot [@Inselberg85Plane].
This approach offers the choice of operating in individual or variable space.
In individual space, the parallel coordinate axes correspond to variables and a
line across the axes to an individual; vice-versa for variable space.
In individual space, perfect positive correlation between two variables
is indicated through parallel lines between the two axes, and perfect negative
correlation with all lines crossing between the two axes. For more than a few
variables, seriation [@liiv2010seriation; @hahsler2008seriation],
i.e. the ordering of the axes, becomes critical to finding meaningful patterns.
A number of alternative techniques have been proposed
to address seriation, such as
placing similar axes near each other based on clustering results
[@Ankerst98Similarity] and to reduce visual clutter
[@Peng04Clutter; @Ellis06Enabling] for plots with more than a few dozen
variables. Despite these extensions, studies of correlation between two
variables advocate for scatterplots over parallel coordinate plots, though
parallel coordinate plots are more perceptually effective for negative
correlation values [@Harrison2014]; additionally, both encodings suffer from
underestimation effects [@Jing10Judging].
In variable space, positive correlation is indicated
by parallel movement of two lines across all axes and negative correlation by
two mirrored lines. While this approach mitigates the seriation issue of
comparing multiple variables, it is susceptible to overplotting with more than
several dozen variables.


A standard approach to explore correlation among many variables is to calculate
the correlation coefficient between all pairs of variables and visualize the
resulting correlation coefficient matrix directly. The canonical technique used
to visualize this matrix is a heatmap [@wilkinson2009history], where each
correlation coefficient in the matrix is encoded with color. While this
data-dense visualization scales to hundreds of variables, seriation or
ordering of variables becomes crucial
[@liiv2010seriation; @hahsler2008seriation], often implemented as a
clustering of the rows and columns in order to enhance the perception of trends
in the data [@EisenCluster98; @seo2002interactively]. The observable
patterns in a clustered heatmap, however, vary greatly depending on the method
of seriation [@wilkinson2009history]. Furthermore, it is difficult
to scale heatmaps to thousands of variables, both visually due to display
limitations [@seo2002interactively], and computationally due to the
quadratic cost, in the number of variables, for both memory and processing time
of the correlation coefficient matrix [@bohn2009analytics].


The color encoding of correlation coefficient values in a heatmap has two
additional visualization drawbacks. First, the relative nature of color
perception makes accurate interpretation of the correlation values difficult
[@Albers06Interaction; @Wong10Color]. And second, in many settings it is of
interest to annotate the variables with additional information, such as
categories or set membership of variables. Without the use of color,
visualizing this additional information is cumbersome to do, particularly for
such large datasets.


To address the limitations of existing correlation visualization methods, the
s-CorrPlot uses a novel spatial encoding of correlation rooted in the geometric
interpretation of correlation in variable space, discussed in [@sec:geometric].
There are several other encodings that stem from this
geometric interpretation in variable space
[@corsten:biometrics76; @falissard:jcgs99; @trosset:jcgs05]; we compare the
s-CorrPlot against these encodings in [@sec:geometric-methods]. These
spatial encodings lead to more accurate visual inferences
[@Bertin83Semiology; @ClevelandGraphical84], while the color channel is free
to encode additional information. 





## Geometric Interpretation of Correlation {#sec:geometric}

In this section, we describe the geometric interpretation of Pearson's
correlation [@dempster1969elements; @rodgers1984linearly]
that underpins the s-CorrPlot. The geometrical interpretation represents each
**variable** as a vector in $\mathbb{R}^n$, where $n$ is the number of
**observations** per variable. In this interpretation, Pearson's correlation
is the cosine of the angle between the mean centered variables. Thus,
correlation can be spatially represented as $p$ points on
a $(n-2)$-sphere. In statistical language, the points on this sphere are termed
standardized variables. We provide the mathematical details
of this interpretation in the rest of this section.


We use the notation of a **_$k$_-flat** to refer to a $k$-dimensional
linear subspace of $\mathbb{R}^n$ that does not necessarily contain the origin.
Thus, a plane is a 2-flat and a hyperplane a $(n-1)$-flat.  Similarly, we refer
to a $k$-**sphere** as the generalization of a unit sphere to $k$ dimensions.


Pearson's correlation coefficient, $\hat{r}$, for any two variables $\mathbf{x} =
\{x_1, \; \ldots \;, x_n\}$ and $\mathbf{y} = \{ y_1, \;
\ldots \;, y_n\}$ is
$$
\hat{r}(\mathbf{x}, \mathbf{y}) = \frac{ \sum_{i=1}^n (x_i
- \overline{x} ) (y_i - \overline{y} ) }{ \sqrt{\sum_{i=1}^n (x_i -
\overline{x} )^2} \sqrt{\sum_{i=1}^n (y_i - \overline{y} )^2} }
$$ {#eq:pearson}
where $\overline{x} = \frac{1}{n}\sum_{i=1}^{n} x_i$
and $\overline{y} = \frac{1}{n}\sum_{i=1}^{n} y_i$ are the means of $\mathbf{x}$
and $\mathbf{y}$, respectively.  

By letting $\tilde{\mathbf{x}} = \{(x_1 -\overline{x}), \; \ldots \;, (x_n
-\overline{x})\}$ and $\tilde{\mathbf{y}} = \{(y_1 -\overline{y}), \; \ldots \;, (y_n
-\overline{y})\}$, [@eq:pearson] can be written as 
$$
  \hat{r}(\mathbf{x}, \mathbf{y}) = 
  \frac{
    \tilde{\mathbf{x}} \cdot \tilde{\mathbf{y}}
  }
  {
    \lVert \tilde{\mathbf{x}} \rVert \;\, \lVert \tilde{\mathbf{y}} \rVert 
  }
  \, ,
$$ {#eq:geom}
which highlights the geometrical nature of the correlation coefficient. 
In this geometric view, the standardization of a variable can be viewed as a
projection to the **correlation sphere** --- a specific, $(n-2)$-sphere
embedded in $\mathbb{R}^n$.  To standardize a variable, first, the mean of the
variable is subtracted from each observation, and second, the variable is
scaled to unit length.  The first step corresponds to projecting the variable
onto a $(n-1)$-flat orthogonal to $\mathbf{1}$, the all ones vector.  More
formally, the subtraction of the mean for any variable $\mathbf{x}$ can be written
as $ \tilde{\mathbf{x}} = \mathbf{x} - \frac{\mathbf{x} \cdot \mathbf{1}}{n} \mathbf{1} \, $.  This
is a projection onto the hyperplane $\mathbf{x} \cdot \mathbf{1} = 0$, thus, the mean
subtracted variables reside in a $(n-1)$-flat.  The second step, scaling to
unit length, results in the projection of the variables onto the aforementioned
$(n-2)$-sphere. For any two variables, their correlation is now directly
encoded through the relative positions of their **standardized variables**.
For any two standardized variables close to each other on the sphere, their dot
product, and thus their correlation coefficient, is close to $1$, and, for those
that lie on opposite sides, it will be $-1$.


Spearman's correlation coefficient is Pearson's correlation but on ranked
observations. Pearson's correlation coefficient describes the strength of linear
relationships between variables, while Spearman's correlation coefficient
describes monotonic ones. The ranked and standardized variables correspond to a
subset of the correlation sphere.
For the reader inclined to
combinatorics, the ranking leads to standardized variables that can be
identified with vertices of the permutohedron of order $(n-2)$.
Both the
geometric interpretation and the s-CorrPlot apply to either measure of correlation.
<!--
Note: The connection to the permutohedron is not simpky to throw in a
methematical spunding term. For people familiar with combinatorics this
highlights a possibly interesting connection. This could be used to
take results on spearman's correlation and apply it to combinatorial probelms
and vice versa.
-->


<!--
extra figure on the geometric interpretation removed here

To illustrate this geometric interpretation, take a dataset where the variables
each have 3 observations, i.e. $d=3$, as illustrated in [@fig:dim](a).
First, subtracting the mean from each variable moves them onto a plane
orthogonal to the vector $\mathbf{1}$, as in [@fig:dim](b).  Next,
scaling the length of each variable transforms them to a unit circle on the
plane, as shown in [@fig:dim](c).  In this example, the standardized
variables thus lie on the $1$-sphere embedded in $\mathbb{R}^3$.
For $d=4$, the standardized variables lie on the $2$-sphere and for $d>4$
on the $(d-2)$-sphere, the higher dimensional analogue of a unit sphere.
-->







## Spatial Correlation Scatterplot {#sec:spatialencoding}

In this section, we build on the existing geometric interpretation of
correlation in variable space to present the description and analysis behind
the s-CorrPlot. The s-CorrPlot represents each variable as a point on a
scatterplot.  The scatterplot results from an orthogonal projection of the
multidimensional correlation sphere. From the geometrical description in
[@sec:geometric], we derive a new and precise encoding of
correlation through the projection of standardized variables.


In the rest of this section, we first derive the novel spatial encoding of
correlation: the s-CorrPlot. We show that a projection can be used to display
the correlation exactly for a subset of the dataset and  then quantify and
derive error bounds for determining correlation between any two variables in
the resulting scatterplot. Then, we highlight a density estimation technique
that enhances the perception of patterns and structure in large datasets.


The s-CorrPlot adds a novel approach to encode and read correlation from
the resulting 2D scatterplot.
We compare the s-CorrPlot to heatmaps in [@sec:connection]
and other spatial encodings of variable space in [@sec:geometric-methods].


### The s-CorrPlot {#sec:projection-plot}

[@eq:geom] can be used to compute a standard correlation coefficient
matrix, which can then be visualized with a heatmap display. The geometric
interpretation of correlation, however, supports another line of reasoning: we
can project the standardized variables that lie on the correlation sphere onto a
plane through the origin. After the projection step, the variables can be
displayed as points on a scatterplot.  The rest of this section describes how
correlation can be directly read from the projected standardized variables.


<!--
To illustrate the concept we start with a one dimensional projection, i.e.
projection to a line through the origin. Any line through the origin can be
described by selecting a standardized variable $\mathbf{p}$. The projection of a
standardized variable $\mathbf{x}$ is to the line achieved by the computation
$\mathbf{x} \cdot \mathbf{p}$, which is the correlation coefficient between $\mathbf{x}$
and $\mathbf{p}$.  Thus, the distance of the projected variable $\mathbf{x}$ from
$\mathbf{p}$ corresponds to the correlation coefficient. This corresponds to taking
a row or column from the correlation coefficient matrix and plot for each entry
a point, i.e. variable, a point on the line at with a distance proportionate to
the numerical value of the entry. On the other hand, sorting of the variables
according to the one dimensional projection provides a seriation for a heatmap
visualization of the correlation coefficient matrix. This connection and a
comparison to heatmaps is discussed in detail in [@sec:connection].
-->


We can define a plane through the origin by
selecting two noncollinear standardized variables, $\mathbf{p}$ and $\mathbf{s}$ on
the correlation sphere, as illustrated by $U$ in [@fig:corr-plot].
Projecting all variables onto this plane collapses them to points on the
**s-CorrPlot**. The projection plane forms a circular intersection with the
selected points. For any variable on this circular boundary, the correlation
to any other projected variable in the plane is encoded exactly.
Furthermore, error bounds in
[@sec:uncertainty] show that the approximation error increases slowly
as one moves away from the boundary.  


To graphically illustrate how the s-CorrPlot encodes correlation coefficients, we will
use a simple example of three variables with observations for four individuals.
Thus, the variables can be represented as vectors in $\mathbb{R}^4$, as with the
three standardized variables: $\mathbf{p}$, $\mathbf{s}$, and $\mathbf{x}$.
Because these standardized variables effectively reside in a 3D subspace of
$\mathbb{R}^4$, we can directly illustrate them in
[@fig:corr-plot](a).  Next, the correlation sphere is intersected with a
projection plane, $U$, which is defined as going through the origin and
containing any two noncollinear variables $\mathbf{p}$ and $\mathbf{s}$.  $U$ is
represented by a [2 x $n$] matrix, defined as:
$$
 U = [\mathbf{p}, o(\mathbf{p},\mathbf{s})]^\top
$$ {#eq:projection-plane}
with column vectors $\mathbf{p}$ and $\mathbf{s}$, where:
$$
o(\mathbf{p}, \mathbf{s}) = \frac{ \mathbf{s} - (\mathbf{s} \cdot
\mathbf{p} ) \mathbf{p}}{\lVert \mathbf{s} - (\mathbf{s} \cdot \mathbf{p})
\mathbf{p} \rVert}
\, .
$$ {#eq:projection-plane-o}
Any standardized variable, $\mathbf{x}$, can be projected onto the plane $U$,
producing the 2D coordinates of the s-CorrPlot,  
$\mathbf{x}_U = U \, \mathbf{x} \, .$
This projection results in the s-CorrPlot, shown in [@fig:corr-plot](b).

|     |     |     |     |
| --- | --- | --- | --- |
| ![](figures/scorrplot/correlation-sphere-projection.pdf){width="22%"} | ![](figures/scorrplot/projection-plane.pdf){width="22%"} | ![](figures/scorrplot/gridlines-p.pdf){width="22%"} | ![](figures/scorrplot/gridlines-s.pdf){width="26.5%"} |
| (a) | (b) | (c) | (d) |

![
  As an example, we show how three variables ($\mathbf{p}$, $\mathbf{s}$, and
  $\mathbf{x}$) with four observations each project onto the
  s-CorrPlot. For (a), we can illustrate our variables as standardized
  vectors on the correlation sphere, directly shown in 3D here.
  The correlation coefficient between any two variables is the dot product
  between their standardized vectors, such as with $\mathbf{p}$ and $\mathbf{x}$.
  With these two standardized variables, a $(n-2)$-flat $V$ is defined.
  The s-CorrPlot is defined by the projection plane $U$, containing both
  $\mathbf{p}$ and $\mathbf{s}$. Projection onto $U$ results in the s-CorrPlot as shown
  in (b), preserving correlation coefficients to both $\mathbf{p}$ and $\mathbf{s}$.
  In the s-CorrPlot, $V$ projects to a vertical line $V_U$ of equal
  correlation to $\mathbf{p}$. As such, (c) these vertical lines can be
  generalized as grid lines along $U$, denoting sets of equidistant correlation
  values to $\mathbf{p}$. Similarly, (d) grid lines to $\mathbf{s}$ can be shown.
](){#fig:corr-plot width="100%"}


Based on [@eq:geom], the correlation coefficient for two variables
is equal to the dot product between their vectors, such as for $\mathbf{p}$ and
$\mathbf{x}$ as illustrated in [@fig:corr-plot](a) and reflected in 
[@fig:corr-plot](b).  Thus since $\mathbf{x}_U = U \, \mathbf{x}$, it
follows that, for any vector $\mathbf{x}$, the correlation to $\mathbf{p}$ is
directly encoded in the first component of the vector $\mathbf{x}_U$. In fact, any
vector that projects onto the line $V_U$, shown in
[@fig:corr-plot](b), has the same first component value, and thus the same
correlation to $\mathbf{p}$. The line $V_U$ corresponds to the projection of a
$(n-2)$-flat, $V$, onto $U$, where $V$ is orthogonal to $\mathbf{p}$ and contains
$\mathbf{x}$.  Thus, any vector that lies on $V$ is at the same distance from
$\mathbf{p}$, and thus has the same correlation value.  We illustrate this
$(n-2)$-flat $V$ in [@fig:corr-plot](a).  Moving $V$ along the vector
$\mathbf{p}$ produces grid lines as shown in [@fig:corr-plot](c).  These
grid lines specify values of equal correlation to $\mathbf{p}$ for any location in
the s-CorrPlot.


Similarly, we can establish the correlation to $\mathbf{s}$ for any location in the
s-CorrPlot by defining the flat $V$ perpendicular to the vector $\mathbf{s}$,
illustrated in [@fig:corr-plot](d). By projecting all the
standardized vectors with respect to $\mathbf{p}$ and $\mathbf{s}$, the s-CorrPlot
spatially encodes the correlation coefficients with respect to these two
variables. The projection, for $p$ variables, results in a $O(p)$ algorithm for
generating any single projection on the s-CorrPlot.


This spatial encoding of correlation affords several
advantages. First, the geometric interpretation of correlation underlying the
s-CorrPlot enables multidimensional exploration techniques. Also, categorical
information for groups of variables can be encoded using color
or shape. Lastly, linear computation for each scatterplot enables scaling to
large datasets at interactive frame rates. 







### Bounds on the s-CorrPlot {#sec:uncertainty}

Although the s-CorrPlot *exactly* encodes the correlation of variables
that lie on the circular boundary to any other variable, the pairwise
comparisons become less exact when both variables fall closer to the center.
Thus, there is some uncertainty between any two variables displayed in the
s-CorrPlot.  Note, this uncertainty is not to be confused with any
statistical uncertainty arising from the estimation of the correlation
coefficient between the two variables. The uncertainty is solely due to the
loss of information in the projection step of the s-CorrPlot.


For any single plot, the correlation value $\hat{r}(\mathbf{x}, \mathbf{y})$ is within
the range:
$$
  \begin{aligned}
    \label{eq:upper}
    \hat{r}_{\text{max}}(\mathbf{x},\mathbf{y})
      &= \frac{\lVert \mathbf{x}_U \rVert^2 + \lVert \mathbf{y}_U \rVert^2 -
      \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2}{2}
      + d_x d_y
  \end{aligned}
$$ {#eq:upper}


$$
  \begin{aligned}
    \label{eq:lower}
    \hat{r}_{\text{min}}(\mathbf{x},\mathbf{y})
      &=\frac{\lVert \mathbf{x}_U \rVert^2 + \lVert \mathbf{y}_U \rVert^2 -
      \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2}{2}
      - d_x d_y
  \end{aligned}
$$ {#eq:lower}
with $d_\mathbf{x} = \sqrt{1 - \lVert \mathbf{x}_U \rVert^2}$ and $d_\mathbf{y} =
\sqrt{1 - \lVert \mathbf{y}_U \rVert^2}$, where $\mathbf{x}_U$ and $\mathbf{y}_U$ are the
coordinates of the projected $\mathbf{x}$ and $\mathbf{y}$ standardized variables on the
s-CorrPlot.  As either $\mathbf{x}_U$ or $\mathbf{y}_U$ approaches the boundary of
the s-CorrPlot, $(\hat{r}_{max}(\mathbf{x},\mathbf{y}) -
    \hat{r}_{min}(\mathbf{x},\mathbf{y})) \rightarrow 0$. On the other extreme, as
both $\mathbf{x}_U$ or $\mathbf{y}_U$ approach $\mathbf{0}$, the center of the
s-CorrPlot, the bounds range from $-1$ to $1$, and the correlation between the
two is completely undetermined by the spatial encoding.  We provide a derivation
of [@eq:upper] and [@eq:lower] in the rest of this section.


For two standardized variables, their squared Euclidean distance determines their correlation:
\begin{equation}
  \begin{aligned} 
    \label{eq:corrcoef}
    \hat{r}(\mathbf{x}, \mathbf{y}) =
      \mathbf{x} \cdot \mathbf{y} = 1 - \frac{\lVert \mathbf{x} - \mathbf{y} \rVert^2}{2}
      \, ,
  \end{aligned}
\end{equation}
which is derived by rewriting the squared Euclidean distance in terms of the
inner product $(\mathbf{x} - \mathbf{y}) \cdot (\mathbf{x} - \mathbf{y}) = 2 - 2
\mathbf{x} \cdot \mathbf{y}$.


The correlation coefficient between two projected variables $\mathbf{x}_U$ and
$\mathbf{y}_U$ onto $U$ is bounded by the minimal and maximal squared distance
between $\mathbf{x}$ and $\mathbf{y}$ on the correlation sphere, such that $\mathbf{x}$
is projected to $\mathbf{x}_U$ and $\mathbf{y}$ is projected to $\mathbf{y}_U$.  To
derive the minimal and maximal squared distances, let $N_\mathbf{x} = \{\mathbf{z}
| U \mathbf{z} = \mathbf{x}_U \}$ and $N_\mathbf{y} = \{\mathbf{z} | U \mathbf{z} =
\mathbf{y}_U \}$, i.e. the flats orthogonal to $U$ (the nullspace of $U$)
centered at $\mathbf{x}_U$ and $\mathbf{y}_U$, respectively. All variables $\mathbf{x}
\in N_\mathbf{x}$ and $\mathbf{y} \in N_\mathbf{y}$ are by definition projected to
$\mathbf{x}_U$ and $\mathbf{y}_U$, respectively. The flats $N_\mathbf{x}$ and
$N_\mathbf{y}$ are parallel at a distance of $\lVert \mathbf{x}_U - \mathbf{y}_U \rVert$
and intersect the correlation sphere at distances $d_\mathbf{x}$ and
$d_\mathbf{y}$ from $U^\top \mathbf{x}_U$ and $U^\top \mathbf{y}_U$, respectively.
The intersections of $N_\mathbf{x}$ and $N_\mathbf{y}$ with the correlation spheres
are $(n-4)$-spheres with radius $d_\mathbf{x}$ and $d_\mathbf{y}$.

The minimal and maximal distances between two variables on these $(n-4)$-spheres
are achieved when the variables are located on the closest and farthest points
between the two $(n-4)$-spheres, which in turn are located at the poles with
respect to the coordinate system induced $N_\mathbf{x}$ or $N_\mathbf{y}$.  Together
with the distance between the spheres, this yields a minimal squared distance
of:
$$
  \begin{aligned}
  \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2 +  \left( d_\mathbf{x} - d_\mathbf{y} \right)^2
  \end{aligned}
$$ {#eq:AppB-min}
and a maximal squared distance of:
$$
  \begin{aligned}
  \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2 +  \left( d_\mathbf{x} + d_\mathbf{y} \right)^2 \, .
  \end{aligned}
$$ {#eq:AppB-max}
These squared Euclidean distances combined with [@eq:corrcoef]
yield the upper bound
$$
  \begin{aligned}
    \hat{r}_{\text{max}}(\mathbf{x},\mathbf{y})
      & = 1 - \frac{ \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2 +  \left( d_\mathbf{x}
          - d_\mathbf{y} \right)^2}{2} 
  \end{aligned}
$$ {#eq:upper2}
and lower bound
$$
  \begin{aligned}
    \hat{r}_{\text{min}}(\mathbf{x},\mathbf{y})
      & = 1 - \frac{ \lVert \mathbf{x}_U - \mathbf{y}_U \rVert^2 +  \left( d_\mathbf{x}
          + d_\mathbf{y} \right)^2}{2} 
  \end{aligned}
$$ {#eq:lower2}
which result in [@eq:upper] and [@eq:lower].


Note that the minimal distance corresponds to an upper limit, and the maximal
distance corresponds to a lower limit on the correlation coefficient. For $n
\leq 4$, these are the only correlation values possible between two variables,
while for $n>4$ there exists a continuous path between the locations that
achieve the minimal and maximal distance, and thus any correlation between the
upper and lower bound is possible. The upper and lower bounds, here
geometrically deduced, can be formally derived as the solutions of a constrained
minimization and maximization problem.


<!--
Getting a complete and exact view of all pairwise correlation measures requires
multiple projections; at most, this involves a projection for every variable.  In
practice, however, when datasets are large and contain dependencies between
variables, the subspace capturing most of the correlation structure is typically
much smaller than the number of variables. For efficient exploration of multiple
projections, it is straightforward to couple the s-CorrPlot with a
variety of multidimensional exploration techniques; to this purpose, we
implement a proof of concept of the s-CorrPlot in [@sec:interaction].
-->


### Density Estimation {#sec:density}

One side-effect of the projection in the s-CorrPlot is that a much larger area of
the correlation sphere projects to locations in the center of the s-CorrPlot,
rather than the outside boundaries. This can result in significant
overplotting for large datasets with many variables. One method to combat
overplotting is alpha-blending, i.e. adjusting the transparency of the
plotted points, like in [@fig:density](a). However, this method tends
to emphasize dense regions towards the center of the
plot, which are not necessarily reflective of structures in the dataset.
As shown in [@sec:uncertainty] for points near the center, variables
with arbitrary correlations to each other can map to the same spot. Since
alpha-blending is in essence an approach to density estimation on the projected
points, it can highlight artifacts not representative of structure in the data.


To more effectively highlight patterns and structure as it exists on the
correlation sphere, we incorporate a density estimation technique to the
s-CorrPlot. The density estimation measures the density of standardized
variables on the correlation sphere as a preprocessing step.  The density value
is stored per standardized variable and encoded with the transparency in
the s-CorrPlot, examples of which are shown in
[@fig:density](b-c).  


|     |     |     |
| --- | --- | --- |
| ![](figures/scorrplot/scorr-density-0.pdf){width="32%"} | ![](figures/scorrplot/scorr-density-1.pdf){width="32%"} | ![](figures/scorrplot/scorr-density-2.pdf){width="32%"} |
| (a) | (b) | (c) |

![
  This is the s-CorrPlot showing a different projection of the image patch dataset
  in [@fig:teaser]. In (a), each variable is a point
  in the s-CorrPlot with some transparency, a prime example of overplotting in the
  center of the scatterplot. With density estimation in (b), we significantly
  reduce this overplotting and more effectively highlight clusters in the
  scatterplot.  This plot uses a large bandwidth emphasizing spread-out
  clusters, but we can also use a smaller bandwidth as in (c) to more
  effectively highlight tightly clustered variables.  
](){#fig:density}


The density at any location, $\mathbf{x}$, on the correlation sphere can be
estimated with a kernel density
estimator [@parzen:ams62; @silverman1986density] on the set of standardized
vectors $\{\mathbf{y}_1, \mathbf{y}_2, \ldots, \mathbf{y}_n\}$:
$$
f( \mathbf{x} ) = \frac{1}{p} \sum_{i=1}^{p} K_{n-2}( \mathbf{x} \cdot \mathbf{y}_i, h)
\end{equation}
$$ {#eq:density}
with $K_{n-2}$ the kernel and $h$ the kernel bandwidth parameter. Because the
density we are estimating lies on a $(n-2)$-sphere, we use the
$(n-2)$-dimensional von Mises-Fisher distribution [@sra:cs12; @Banerjee2005],
$K_{n-2}(z, h) = c_{n-2}(h) \; e^{h z}$, where $c_{n-2}(h)$
is the appropriate
normalizing constant. The kernel bandwidth adjusts the emphasis on which
features are highlighted. In [@fig:density](b-c), we illustrate the
effect of adjusting the kernel bandwidth.


Naive calculation of the density estimation results in a $O(p^2)$ computation,
where $p$ is the number of variables. Using compact kernel functions, it is
possible to speed this up to $O(p \log(k))$, where $k$ is the approximate number
of neighbors required to contain most of the mass of the kernel for a given
bandwidth $h$.  In our implementation of the s-CorrPlot, we
calculate the density estimation as a preprocessing step, storing for each
variable its $k = 200$ nearest neighbors to enable interactive adjustment of the
bandwidth. This leaves the core $O(p)$ projection algorithm unaffected during
runtime, allowing multidimensional exploration to be interactive.


### Comparison to Heatmaps {#sec:connection}

For a dataset with $n>3$ individuals and $p>3$ variables, all pairwise
correlations cannot generally be encoded in two spatial dimensions.
Heatmaps forgo a spatial encoding in favor of a color encoding for all
pairwise relationships. This can lead to visually conflicting information
since strongly correlated variables can be spatially far apart in the heatmap,
depending on the method of seriation.
The s-CorrPlot tackles distortion differently; instead of requiring all pairwise
correlations be displayed, only a subset of the pairwise correlations are
displayed exactly. The s-CorrPlot encodes correlation exactly for any variable that
lies on the projection plane and with very little loss of accuracy to all
variables that are sufficiently close to the projection plane. Computationally,
this spatial encoding reduces the cost from $n^2 p$ to $2np$.


<!--
The projection in the s-CorrPlot can be connected to seriation. A one dimensional
projection results in representation of variables on a line.  Sorting the
variables according to their position on the line can be used to define a
seriation of the variables and, thus possible arrangement of the rows or columns
for displaying a heatmap. In fact, seriation for heatmaps, can be seen as an
attempt to restore some of the lost spatial information by grouping strongly
correlated variables, spatially close in the heatmap (i.e. in a sequence of rows
or columns). The heatmap depends on a good seriation for visual inference.
Seriation is an expensive computation and for many dataset no single seriation
will highlight all structure in the data adequate. The s-CorrPlot shifts the
challenge of seriation from computation to human pattern recognition. While for
many datasets the s-CorrPlot also requires multiple viewpoints, interaction and the
effect of shape from motion facilitate the exploration of multiple structures.
-->


A major challenge for exploring correlation structure in heatmaps is
seriation. Methods of seriation for heatmaps can be seen as an attempt
to restore some of the lost spatial information by grouping strongly
correlated variables close together in the heatmap (i.e. in a sequence of rows
or columns). The heatmap depends on a good seriation for visual inference, but
seriation is an expensive computation and for many datasets no single method
will highlight all correlation structure. The s-CorrPlot shifts the challenge of
seriation from computation to one of human pattern recognition. As we explain
in [@sec:interaction], the s-CorrPlot can be combined with interaction
and animation in order to view different projections of the data, allowing
structure and shape to be seen within the data that is not present within
a heatmap. For more details, please read [@sec:interaction] and watch
the companion video in Supplemental Materials.


<!--
This connection between seriation and projections informs an interesting view on
seriation: A good seriation for a heatmap requires that the data can be split in
one or multiple sets of variable, with each set distributed on, or close to, a
one dimensional subset of the correlation sphere. This frames seriation as a
multiple manifold learning problem. Additionally, it illustrates that for both,
heatmap and the s-CorrPlot, variables distributed on subsets of dimension $>2$ are
very challenging, however.
-->


### Comparison to Spatial Encodings of Variable Space {#sec:geometric-methods}

The geometric interpretation of Pearson's correlation results in a
multidimensional representation of the data. A standard approach to visualize
multidimensional datasets is to apply dimensionality reduction
methods [@jolliffe:book86; cox:book94; tenenbaum:science00; belkin:nc03].
Dimensionality reduction methods aim to capture a lower-dimensional
representation that preserves the geometric structure or statistical content of
the multidimensional data. If the data is reduced to 2D, the data can be directly
visualized through a scatterplot or combined with more sophisticated
visualization systems [@seo2005rank; @Yang2007a; @Tatu09Combining; @Turkay2012a].
However, it is unclear if and how correlation is spatially encoded after
applying such dimensionality reduction methods.  Furthermore, the spherical
geometry underlying Pearson's correlation can
induce large distortions when *flattened* into 2D.


There are several other encodings which use this geometric interpretation of variable space to
spatially encode correlation. Similar to the s-CorrPlot, these methods perform
2D projections of the data, but they differ in how they are interpreted and thus
their resulting visual encoding. Each encoding suffers from different drawbacks
which motivated the new design of the s-CorrPlot.


The *h*-plots approach [@corsten:biometrics76] encodes correlation
strength based on angular separation of points on the correlation sphere.  In 
*h*-plots, the variables are geometrically transformed but not scaled to unit
length.  These variables are projected onto the first two principal
components of the dataset and rendered as lines from the origin. A line's
deviation from unit length indicates how well the angular separation represents
the correlation between variables. For points close to the origin, the angle is
not representative of correlation strength alone.  A recent modification
of this approach creates correlation diagrams with the angular separation of
lines more directly representing correlation [@trosset:jcgs05].  However,
for both approaches, comparing angles between the lines is difficult and
possibly inconsistent [@talbot2012empirical], and scaling to more than
several dozen variables produces significant visual clutter.


The focused principal components approach (FPCA) [@falissard:jcgs99] uses
radial distance to encode correlation between a variable of interest and all
other variables. In contrast to the s-CorrPlot, this approach places a
projection plane orthogonal to the variable of interest, which results in that
variable projecting to the center of the FPCA plot.  Consequently, the
variable of interest is defined as the origin in the FPCA plot, with
strongly correlated, *and* anticorrelated, variables projected near the
origin, and variables with zero correlation projected at a radius of one. For
datasets with $n>4$, however, the FPCA method breaks down because the
correlation sphere has dimensionality $>2$. This results in multiple orthogonal
directions to any 2D projection plane; in this case, two variables can project
exactly to the center regardless of their correlation coefficient to each other,
i.e. for $n>4$ any value between the bounds on the correlation given by
[@eq:upper] and [@eq:lower] can be achieved. Thus, for $n>4$, the FPCA
interpretation only provides exact information about perfectly uncorrelated
variables.





## Interactive Exploration with the s-CorrPlot {#sec:interaction}

As a secondary contribution, we designed the s-CorrPlot
to incorporate both interaction and animation, unlike previous static
correlation encodings discussed in [@sec:geometric-methods].
In doing so, we illustrate how the s-CorrPlot can be paired with
multidimensional exploration techniques,
in the spirit of existing systems that employ user-driven
exploration [@swayne1998xgobi; @swayne2003ggobi; @Elmqvist08Rolling]. 


We encourage our readers to watch the short companion video in
Supplemental Materials to more easily understand the interactive
exploration aspect. Below, we first outline related work in multidimensional
exploration. Next, we discuss the interactions employed for selecting
different projections of the data. Lastly, we detail how we implemented the
animation between projections.


### Existing Multidimensional Exploration Techniques

To better grasp multidimensional spaces, methods such as projection pursuit
[@huber1985projection; @Friedman87Exploratory], the grand tour method
[@Asimov85Grand], and combinations of both [@cook1995grand], explore
multidimensional space through sequences of 2D projections.
Several mature systems that implement these techniques include
xgobi [@swayne1998xgobi] and ggobi [@swayne2003ggobi], which provide
animations and interactions to let the user explore the complete space of
projections. The spatial encoding of correlation in the s-CorrPlot is also applicable
within any of these existing systems. Our implementation of the s-CorrPlot was
motivated by these exploratory techniques in order to create simple user-guided
tours, or animations between projections.


\subsection{User-Driven Exploration}

The error bounds in [@sec:uncertainty] show that getting a complete
and exact view of all pairwise correlation measures requires multiple
projections; at most, this involves a projection for every variable. 
To mitigate this loss of information, our implementation of the s-CorrPlot
employs several simple
aspects of user-driven exploration to help examine the space of possible
projections. These interactions increase the effectiveness of the underlying
spatial encoding of the s-CorrPlot.


For interaction, users drive the exploration of the multidimensional correlation
sphere by selecting the variables $\mathbf{p}$ and $\mathbf{s}$ of interest. Note
that these variables do not have to correspond to any of the variables in the
dataset but can correspond to any point on the correlation sphere. After
selecting a new variable, the s-CorrPlot is re-oriented through a
continuous animation of a rotation between the current projection and a
newly selected one, as described in [@sec:anim-proj].


In the s-CorrPlot, users can select $\mathbf{p}$ and $\mathbf{s}$
by clicking on data points in the scatter plot or from principal components of
the data.  The principal components [@jolliffe:book86] help to find initial
interesting projections. We display the principal components as bar charts for
both the complete dataset and for categorical subsets of the data, 
such as the two groups in [@fig:density](a).
Each bar corresponds to
a principal component and the height represents its corresponding eigenvalue,
or the variance of the data in that direction, see top-left of Figure
[@fig:density](a). By clicking on the individual bars, the user can
select to orient either $\mathbf{p}$ or $\mathbf{s}$ in the direction of that
principal component.


Determination of a projection can be extended to include other
data-driven measures of interesting projections, such as scagnostics
[@Tukey85Computing; @wilkinson:infovis05; @Sips09Selecting; @Tatu09Combining].
Scagnostics establishes mathematical definitions for interesting features of
multidimensional scatterplots.  Traditionally, it is applied to a SPLOM for
finding interesting structures in the individual scatterplots, but, for the
s-CorrPlot, scagnostics would run on all of the resulting projections.  Just
like principal components, these scagnostic measures can then be used to
define a data-driven projection.


### Animating Between Projections {#sec:anim-proj}

When a new projection is defined or selected, the current projection plane is
swept across the correlation sphere to the new orientation, preserving the
spatial encoding of correlation. There are a variety of methods for
interpolating between projection planes [@wickham2011tourr].


As with multidimensional exploration between projections, animating between
planes results in structures, such as clusters of correlated variables, moving
together (or apart) in 3D, giving the user a partial sense of the relationship
of the standardized variables in the multidimensional space. Perceptually,
the animation results in seeing "shape from
motion" [@ullman:visualMotion].


In the s-CorrPlot, we interpolate across the vectors chosen for the
projection.  In addition, we orient the viewer by projecting the primary vector
to a fixed location on the far-right of the s-CorrPlot and draw the gridlines
vertically with respect to this primary vector.  It is, however, more common in
multidimensional exploration systems to interpolate between planes using fixed
angular increments, thus providing constant speed of motion between planes.
[@cook2008grand] describe one such algorithm, with some cost to the
preservation of the spatial encoding throughout the animation.  An avenue for
future work is to implement the s-CorrPlot within an existing multidimensional
exploration system, while balancing a consistent spatial encoding.





## Validation {#sec:validation}

In this section, we demonstrate and validate the capabilities of the s-CorrPlot with
an example dataset and a case study with a biology collaborator. The
collaborator is also a co-author on this paper. An additional use-case,
not described in this paper, is included in the companion video in
Supplemental Materials.
These datasets are contained within the open-source R-package,
*scorr*.
<!--
The first use-case scenario
explores a relatively small subway ridership dataset in order to provide an
intuitive example of how to interpret patterns of correlation seen in the
s-CorrPlot. Next, we provide a more realistic use-case scenario using real,
 biological data. Lastly, our case study discusses how a biologist made use of
 the s-CorrPlot in a real-world
analysis setting. We collected data for the case study using informal interviews
and emails, and one of the visualization researchers on this paper spent several
hours each week in the biologist's lab over the course of eight months.
-->


### Demonstrative Example: Image Patch Data {#sec:demonstration}

To compare the s-CorrPlot to existing methods and highlight visualization of
correlation structures in large datasets, we construct example datasets with
many variables that contain interdependencies between the variables. The datasets
consist of all $9 \times 9$ patches of two images. Each image patch
represents a variable containing 81 observations, i.e. the pixel values. The two
test images we use are the *Barbara* and *House* images, shown in
[@fig:teaser](a), which are commonly used test images in image
processing [@imageDatasets]. Together, these two images produce over
130,000 variables. We visualize both datasets using the s-CorrPlot in
[@fig:teaser](b), where each variable is assigned a color corresponding to
which image it comes from. We also show this dataset in the companion video in
Supplemental Materials.


The s-CorrPlot can easily find continuous correlation structures, like the visible red
bands corresponding to shifts, rotations, and gradients, which other
visualizations cannot. In real datasets, this can highlight latent nonlinear
dependencies between a set of variables.  For example, the *House* image data at
the bottom of [@fig:teaser](b) shows three image patches from such a
correlation band. In these image patches, there is a decreasing dark edge
in the image patch as we move along the curve in the s-CorrPlot. Visual
clutter and seriation would make such structures next to impossible to find
in parallel coordinate or heatmap visualizations.


In [@fig:teaser](c), we visualize the image datasets using the
*ggplot2* implementation of parallel coordinates [@wickham:book09], in
variable space. Memory issues in this implementation prevented us from
visualizing the complete datasets; so only 50k variables are plotted across the
axes. The parallel coordinates plot is helpful in highlighting clusters, such as
patches containing flat features as well as patches exhibiting few specific
texture patterns, especially in the heavily textured *Barbara* image, but it
does not assist with continuous correlation structures seen in the s-CorrPlot.
Lastly, the visual clutter in parallel coordinates makes fine-grained analysis
extremely difficult.


This simple example also exposes three major challenges for heatmaps.  First,
generating the 130k x 130k pairwise correlation matrix does not fit into the
memory of a typical desktop computer, nor does a heatmap display of the matrix
fit on a standard display.  Second, interesting correlation structures are
difficult to interpret in a heatmap as a result of seriation. In [@fig:teaser](d), we take a
22k subset of the *House* image patch data and for seriation choose to
cluster via complete linkage; structures immediately visible in the s-CorrPlot
are all but lost in the heatmap. And third, while the s-CorrPlot supports direct
comparison of multiple datasets through color encoding, as in
[@fig:teaser](b), it is unclear how to perform this sort of comparison in a
single heatmap display.


<!-- removed old section...

### Use-Case Scenario: Subway Ridership {#sec:subway}

![
  Correlation analysis of New York City subway ridership, with 102 variables
  (years) measuring ridership for 423 different observations (stops).
  In (a) we show a clustered heatmap (top) across the years, as well as a
  non-metric MDS plot using the correlation matrix as the distance metric.
  In both of these plots, we see distinct clusters of years.
  Using the s-CorrPlot in (b), we can show similar trends while also
  encoding correlation values, such as the low correlation between recent
  and early years. Please watch the companion video to see how animation
  highlights this curve and pinpoints a key year, 1940, in the history of the
  subway system.
](figures/scorrplot/nycSubwayTime.pdf){#fig:nycSubwayTime width="100%"}


The New York City subway is known for being one of the largest metro systems in
the world. Politicians and strategic analysts care deeply about patterns in the
ridership in order to determine budgets and guide development.  Identifying key
areas where ridership is changing may help identify where to consolidate or
eliminate stations, or point to strategic expansion areas.  To this end, we
explored ridership data for the NYC subway from 1905 - 2006
[@nycSubwayData].  This data contains the number of riders per year for
each individual subway stop, as well as labels for each stop indicating which
borough of the city they reside in.  Ridership data is commonly visualized as an
animated map [@nycSubwayMap], which can be difficult to spot trends or
outliers.  We also tried to visualize this multidimensional dataset using both
ggobi and MDS techniques, but we were not able to easily identify useful trends
or outliers.  We walk through our correlation analysis
of ridership across time and stations using the
s-CorrPlot; we highly encourage readers to watch the companion video
in Supplemental Materials to more clearly understand the animated features.


To explore changes in ridership over time, we assign subways stops
as the observations and years to be the
variables. Shown in [@fig:nycSubwayTime], each point in the
s-CorrPlot represents a year. This particular projection of the data
highlights an interesting pattern of correlation. For example, two
clusters of years emerge, the developing years of the subway system
and the most recent years in the dataset.
Each increasing year represents a point-to-point connection between
these two clusters. This
could imply that after the core system was built, ridership across all
subway stations varied as new subway stops were built and ridership
changed. At around 1985, the system seems to have stabilized in terms
of ridership. This implies that ridership is now more predictable and less
extreme than in previous years.


[@fig:nycSubwayTime] and the companion video point out a distinct
change in correlation around the year 1940. It turns out that this year was a
very critical one for
the NYC subway system. This was the year in which the city purchased subways
from several private corporations. This buyout symbolizes an end to competition
for the subway industry in NYC, so it makes sense that the following year, 1941,
would have had significant changes in the ridership. The heatmap in
[@fig:nycSubwayTime](a)
shows the two clusters, but the detailed pattern that occurs between them is
inherently lost in the clustering algorithm. We also include a non-metric MDS
plot (bottom), using the correlation matrix as the distance metric, where
similar trends can be seen, but does not directly encode correlation.  Both the
MDS plot and heatmap require pairwise correlation calculations,
which does not scale well to larger datasets.  


![
  Correlation analysis of New York City subway ridership, with 423 variables
  (stops) measuring ridership for 102 different observations (years).
  In (a) we show a clustered heatmap (top) across the stops, as well as a
  non-metric MDS plot using the correlation matrix as the distance metric.
  In both plots, outliers or patterns did not clearly jump out to us.
  However, using the s-CorrPlot (b), we were able to quickly identify several
  key outlying stops on the subway system. Please watch the companion video
  to see how we identify these outliers. In the top-right of (b), we include
  a plot of ridership over time for the *Mets-Willets Point* station.
](figures/scorrplot/nycSubwayStops.pdf){#fig:nycSubwayStops width="100%"}


On the other hand, we can also analyze subway ridership in a different
way, looking at the correlation of ridership
of each subway stop over time. Now, each point in the s-CorrPlot, shown in
[@fig:nycSubwayStops], represents a subway stop. Additionally,
each stop is colored according to different boroughs or regions of the city. 
Through exploring the dataset, two outliers jump out
immediately; please see our companion video and watch
for points which move the least between animated projections.
One of these outliers is the *Mets-Willets Point*
stop, marked as the primary variable in 
[@fig:nycSubwayStops]. Using a parallel coordinates
display, we notice two extreme years for ridership at this stop,
1939 & 1964. Both years had NYC hosting the World's Fair, and 1964
additionally saw the opening of Shea Stadium --- these events occurred
near this subway stop. The second outlier is the
*Aqueduct-Racetrack* stop, which had a significant increase in
ridership in the 1960's. During these years, another local racetrack was
closed and all of its races were moved to this location, which could
explain the potential growth of ridership during this time.
Furthermore, this is also the least used stop in the entire
NYC subway system and is the only one that does not have regular
service. The heatmap in the figure can be used to find outliers in
the bottom rows, but it is difficult to visually infer *how* outlying those
variables are. We also provide another MDS plot of the stops, where these
outliers are present among many other potential outliers, but the correlation
still cannot be inferred from this plot.


### Use-Case Scenario: Isolating Regions of the Brain

![
  By performing a correlation analysis between 950 human brain regions in the
  Allen Brain Institute dataset, we were able to verify the distinction of two
  high-level structures in the data: both the outer, cortical regions
  (dark-blue) and the inner, subcortical regions (light-blue). We illustrate
  this finding first in several spatial, orthographic views of the brain
  and the accompanying linked s-CorrPlot view. This analysis replicates one similar
  finding presented by [@Hawrylycz2012a].
](figures/scorrplot/hackathon.pdf){#fig:hackathon width="100%"}


Biologists often analyze the correlation of **gene expression** --- how much a
gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively]. This analysis seeks to answer questions pertaining
to the relationship of correlation between genes, especially how these
relationships change over time, across species, or in the presence of disease.
To aid in answering these questions, the Allen Human Brain
Atlas [@humanBrainMap] combines genomics with the study of neuroanatomy by
providing a powerfully diverse catalog of anatomic and genetic information on
the human brain. Researchers hope to use these unique datasets to better
understand various diseases and disorders of the brain, such as Alzheimer’s,
autism, schizophrenia, and drug addiction. The gene expression data from the
atlas is a series of multidimensional datasets, each consisting of approximately
60,000 genes across 950 different brain regions. Utilizing this data,
researchers recently published a broad-reaching article in
*Nature* [@Hawrylycz2012a], to show that this brain atlas is a next step
  towards bridging one major challenge for neurobiology today: linking genetics
  to function.


We worked in a team with several colleagues who specialize in both imaging and
statistical analysis in order to combine 3D spatial views of the brain with a
correlation analysis of gene expression in the s-CorrPlot, to promote
exploration and feature detection. Using the same data from the brain atlas, we
performed a series of statistical simplifications of the data in order to aid
finding such features. First, our colleague decreased the noise of the data into
a subset of the original dataset by removing genes that were over or
under-expressed across brain regions; this reduced our dataset to about 40,000 genes.
Next, he performed an analysis on the brain regions which separated the data
points into two high-level structures: the cortical (outer, blue) and sub-
cortical (inner, light-blue) regions of the brain, shown in
[@fig:hackathon] across three projections of a 3D view of the brain.
Using each of the original 950 brain regions as variables, we plotted
all the points in the s-CorrPlot, using the cortical and subcortical labels for
color, and showed that the structural features of the data also appear as
clusters in the correlation of gene expression in the s-CorrPlot, as shown in
[@fig:hackathon].

We presented this finding, along with several others, at the Human Brain Mapping
Hackathon and achieved a first-place showing; our analyses confirmed several key
findings in the recent *Nature* paper on the Human Brain Atlas data. In the
work by [@Hawrylycz2012a], the authors found a similar
clustering of the cortical and subcortical regions of the brain by utilizing
the state-of-the-art approach for the correlation of gene expression: weighted
gene co-expression network analysis (WGCNA)
[@langfelder2008wgcna; @oldham2008functional; @winden2009organization]. WGCNA
uses the correlation or similarity of genes to construct a weighted network
among all genes, and, using this network, genes that have a high degree of
topological overlap are grouped together into gene modules. While this technique
produces clustered sets of genes, the network analysis makes it difficult to
ascertain the original correlation between genes, and this method was designed
to support datasets of only 10,000 to 20,000 genes. Thus, to use this method,
the *Nature* authors reduced their dataset to only about 21,000 genes in
order to find distinct modules that neatly clustered separate groups of cortical
and subcortical brain regions for just one of the brain datasets. This is the
same finding we confirmed for two brain datasets with the s-CorrPlot across twice as
many genes. Not only were we able to confirm these scientific findings with a
larger subset of data, but also we were able to show how the s-CorrPlot can work in
conjunction with other linked views in an effective, interactive prototype
environment.
-->


### Case Study: Gene Expression in the Brain {#sec:case-study}

Biologists often analyze the correlation of **gene expression** --- how much a
gene is turned on or off in a cell --- across datasets to gain
insights into gene functions and to infer novel relationships between genes
[@seo2002interactively]. This analysis seeks to answer questions pertaining
to the relationship of correlation between genes, especially how these
relationships change over time, across species, or in the presence of disease.


We are working with a biologist at the University of Utah
who is tackling similar questions, by studying genes that work together
in the brain in order to uncover genetic influences on brain
function, behavior, and disease. Using high-throughput sequencing, he
measures the expression level of genes in specific brain regions, even
to the detail of expression of **exons**, which are subparts of genes.
These measurements are taken in different strains of mice, which form
the observations in his dataset. The genes and exons are the variables
he wants to correlate and study.


His typical study involves several dozen observations, and approximately 10,000
to 100,000 variables.  The state-of-the-art approach for studying the
correlation of gene expression is weighted gene co-expression network analysis
(WGCNA) [@langfelder2008wgcna; @oldham2008functional; @winden2009organization].
WGCNA uses the correlation or similarity of genes to construct a weighted
network among all genes, and, using this network, genes that have a high degree
of topological overlap are grouped together into gene modules.  However, WGCNA
was designed to support only 10,000 to 20,000 genes so does not scale to the
size of datasets that our collaborator struggles to analyze.


|     |     |     |     |
| :-- | --- | --- | --- |
|     | brain region #1 | brain region #2 | overlay |
| genes | ![](figures/scorrplot/gene-case-study-0){width="32%"} | ![](figures/scorrplot/gene-case-study-1){width="32%"} | ![](figures/scorrplot/gene-case-study-2){width="32%"} |
| exons | ![](figures/scorrplot/exon-case-study-0){width="32%"} | ![](figures/scorrplot/exon-case-study-0){width="32%"} | ![](figures/scorrplot/exon-case-study-0){width="32%"} |

![
  Two different biological datasets containing 76,730 (genes) and 120,000
  (exons) variables, with 22 and 37 observations, respectively. For each
  dataset, genes and exons have been colored according to two different
  brain regions in which the expression levels were measured, resulting in
  separate and combined overlay visualizations. The s-CorrPlot highlights different
  patterns of correlation in each of these brain regions, indicating
  potentially significant differences in their biological processes.
](){#fig:gene-case-study}


At first, our collaborator explored 38,365 genes in two regions of the brain,
with 22 observations,
using the s-CorrPlot, shown in the top of [@fig:gene-case-study].
Since each gene can exist in either brain region, this results in a
combined total of 76,730 variables.
The gene expression levels measured in brain
region 1 are shown in red, and those in brain region 2 are shown in
blue. 
He first looked at just brain region 1 (red), orienting the
s-CorrPlot using the first principal component for these variables ---
he noted that no strong clusters emerged. He then did the same for just
brain region 2 (blue), and saw a significant grouping of correlated and
anticorrelated points, shown in the dashed ovals. Overlaying the two
brain regions confirmed interesting differences across the
correlation of all genes between these two regions. 
The differences in the correlation structure of the
data are anticipated to reflect differences in the cell types
and mechanisms that regulate
gene expression and the function of the two brain regions.


Using a different dataset, our collaborator visualized
the expression levels of different exons in the same two brain
regions, as shown in the bottom-half of
[@fig:gene-case-study]. This particular dataset contains
60,000 exons in each brain region, for a total of 120,000
variables, with each variable containing
37 observations. This is the first analysis of
correlation at the exon level that our collaborator is aware of,
perhaps due in part to the inability of existing tools to handle
these large datasets. With the s-CorrPlot,
our collaborator was able to interactively explore the many exons and
deduce that there are also region specific patterns at the exon level.
He noted that the patterns in the exon data are significantly
different than that for the data at the gene-level, indicating that
differences in these brain regions could be described at a smaller
scale than genes.


Taken as a whole,
the differences in the patterns between the two
regions of the brain are completely unknown and unexplored in our collaborator's
field. These observations have prompted him to design follow-up
computational studies and wet-lab experiments,
fueled by hypotheses, which are formed by his use
of the s-CorrPlot for correlation analysis.
He commented:
*"This is revealing new brain-region specific patterns in the data
  that we were completely unaware of. It offers the potential for deriving
  entirely new hypotheses about the functional relationships between genes
  in different brain regions that we can test experimentally."*





## Conclusions and Future Work

Through a careful examination of the geometrical representation of Pearson's
correlation, this paper derives a simple yet powerful approach to visualize
correlation for large datasets. The s-CorrPlot presents an alternative to the
commonly employed clustered heatmap for exploratory analysis of correlation; our
proposed encoding scales better with increasing data size and provides finer
details on the multidimensional correlation structure between many variables. 


The spatial encoding in the s-CorrPlot suggest several interesting directions
for future research.
Exploring the cause of the difference between heatmaps, seriation, and the
s-CorrPlot could lead to new insights on perception research for correlation
and multidimensional structure.
The spatial encoding makes it possible to visually overlay additional
statistical information about variables, such as confidence intervals or other
uncertainty measures, in the plot.  The ability to encode additional information
about the variables, using visual channels like color or shape, supports the
integration of more sophisticated set-membership visualizations on the points.


Furthermore, by connecting the s-CorrPlot with a mature multidimensional exploration
system, like ggobi, more techniques could be used to explore correlation
structure, like the ground tour, projection pursuit, and scagnostics.
Lastly, the use cases shown in the companion video in Supplemental Materials
demonstrate that the s-CorrPlot is potentially useful in a wide variety of
applications. In particular, an avenue to explore is to adapt the s-CorrPlot
for outlier detection.


<!--
[@sec:demonstration] indicates strongly that
the one dimensional structure in the data is much better displayed in the
s-CorrPlot. The same structures are contained in the heatmap  display, however. A
deeper investigation towards the cause of this perceptual difference, as briefly
touched upon in [@sec:connection], could lead to new insights in
perception research. 
The connection to seriation in [@sec:connection]
suggest a new approach for computation of seriation through multiple manifold
learning. 
The spatial encoding makes it possible to visually overlay additional
statistical information about variables, such as confidence intervals or other
uncertainty measures, in the plot.  The ability to encode additional information
about the variables, using visual channels like color or shape, supports the
integration of more sophisticated set-membership visualizations on the points.
Lastly, the use cases shown in the movie in the Supplemental Materials
demonstrate that the s-CorrPlot is potentially useful in a wide variety of
applications. In particular, a further line of development is to adapt the s-CorrPlot
for outlier detection.
-->





<!-- TODO move acknowledgements to file
The authors wish to thank Kristi Potter, Wei-Chao Huang, Tom Fletcher,
and Kris Zygmunt for their feedback on this work. This work is
sponsored in part by the Air Force Research Laboratory, the DARPA
XDATA program, and the Office of Naval Research award
N00014-12-1-0601. The content of the information does not necessarily
reflect the position or the policy of the government, and no official
endorsement should be inferred.
-->




<!-- TODO supplemental materials... ?

### Supplemental Materials 

  - *Code & Data:*
    - An open-source R-package, *scorr*, implementing the s-CorrPlot. Includes the datasets shown in the paper, and a static version of the s-CorrPlot for those unable to compile the interactive tool. For more information, see [http://mckennapsean.com/scorrplot](http://mckennapsean.com/scorrplot).
  - *Video:* Demonstration of exploring correlation with the interactive s-CorrPlot visualization. (.mp4)

-->
