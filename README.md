# MPR-Graph-Improvement

Source Article: https://www.mprnews.org/story/2021/12/21/covid-drives-halt-to-minnesotas-population-growth

The above MPR news article contains the following graph:

![alt text](https://img.apmcdn.org/5f249a735c881b43b7b0f18648c764b85a299e83/uncropped/04d920-20211221-population-growth-02-2000.png)

Such is poorly constructed for the following reasons (per this coder's opinion):

- Deaths and births are combined though each contribute opposite effects on population change
- two very similar shades of blue are utilized
- y-axis is labeled on both sides creating business, not clarity
- lines inadequatly demonstrate concept of 'share' or proportion of net change

Birth and deaths rates for MN were found via the state's vital statistics portal. Migration data couldn't be located quickly so approximations were used based on the published graph by NPR. I do not stand by these values for use in inference. The below graph is shown for data visualization improvements, not for accuracy of data portrayed.

![alt text](https://github.com/weberrc/MPR-Graph-Improvement/blob/main/improved-graph.png?raw=true)
