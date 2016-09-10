---
title: Towards Population Scale Activity Recognition
layout: page
---

<div class="row">

    <div class="col-md-12">
        <div class="col-xs-offset-1 col-md-10">
            <img src="/files/images/csn.jpg"/>
        </div>
    </div>
</div>



The rising popularity of the sensor-equipped smartphone is changing the possible
scale and scope of human activity inference. The diversity in user population
seen in large user bases can overwhelm conventional one-size-fits-all classification
approaches. Although personalized models are better able to handle population
diversity, they often require increased effort from the end user during training
and are computationally expensive.

In this work, we propose an activity classification framework that is scalable
and can tractably handle an increasing number of users. Scalability is achieved
by maintaining distinct groups of similar users during the training process, which
makes it possible to account for the differences between users without resorting
to training individualized classifiers. The proposed framework keeps user burden
low by leveraging crowd-sourced data labels, where simple natural language processing
techniques in combination with multi-instance learning are used to handle labeling
errors introduced by low-commitment everyday users. Experiment results on a large
public dataset demonstrate that the framework can cope with population diversity
irrespective of population size.

## Papers ##
* Saeed Abdullah, Nicholas Lane, and Tanzeem Choudhury.
<em>Towards Population Scale Activity Recognition: A Scalable Framework for Handling Data Diversity</em>.
Appears in the Proceedings of [AAAI 2012][aaai-2012].

[aaai-2012]: http://www.aaai.org/ocs/index.php/AAAI/AAAI12/paper/viewFile/5169/5491
