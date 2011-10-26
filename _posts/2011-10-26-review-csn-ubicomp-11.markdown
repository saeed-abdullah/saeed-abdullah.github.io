---
title: Using Community Similarity Network for Activity Inference

location: Terra, Milky Way.

layout: post

tags:
 - review
 - research

excerpt: Review of the paper "Enabling large-scale human activity inference on smartphones using community similarity networks (CSN)" by Nicholas et al.

---

The paper titled "Enabling large-scale human activity inference on smartphones using community similarity networks (CSN)" by [Nicholas et al.][doi-link]  from Ubicomp 2011 focuses on the _population diversity problem_ in the context of recognizing human activities from mobile sensor data. Population diversity problem arises because the users differ in a number of ways --- age, gender, fitness, lifestyle, to name a few --- resulting in doing same activity in significantly different ways. As a result  the discriminating patterns in the sensor data changes from person to person causing the classification quality to degrade as new users are added to the system.

Ideally, personalized classification models could be used for avoiding diversity problem. But, personalized models requires time and efforts from the user. Most importantly, it is wasteful as multiple users often collect nearly identical data to train the classifiers in isolation.

This is where the paper shines. It focuses on providing personalized classification models while keeping the user burden as low as possible. For doing so, the authors propose:

* Extracting and maintaining multi-dimensional inter-personal similarity network.
* A learning process that can not only adapt to a particular user but also share data among similar users, resulting in greater amounts of training data for better classification.

The similarity networks are weighted graphs --- each node represents a user and the weight of the edge represents the degree of similarity between users. CSN framework uses three similarity networks --- physical, lifestyle and sensor-data similarity.

Now, with existing N users, how to add a new user? Well, the new user has to be compared with all the N users to calculate the similarity. In other words, the resultant similarity network will have O(N^2) edges. Certainly, this approach would not work for a large population.

To overcome the user-pair computational bottle-neck, the authors propose to use community of users --- the similarity networks are built not for the whole population but for a cluster of users, sizing down the graph. In this approach, the ideal case would be small clusters with low inter-cluster similarity --- small clusters will keep the computational cost in balance and low inter-cluster similarity ensures that valuable training data are not wasted. I wonder if that would be the case in a large population.

Also, in case of large population divided into small clusters, adding few users can effectively shift centroids of the cluster. Should the re-clustering be done frequently to maintain clusters small with intra-similarity low? In case of re-clustering, should the classifiers be re-calibrated? How the data sharing for multi-training would happen in that case?

I also wonder how well this approach would work for latent similarities. By using clustering, the method very much ties itself to visible patterns. For example, from figure 7, it seems that running is best recognized by  lifestyle similarity network which I find a bit surprising. I would have expected physical similarity network to work best for recognizing running. It probably be very useful to be able to use that kind of non-visible pattern.

In terms of scalability issue, there is another potential bottleneck --- the use of several classifiers for every user. In a rapidly growing population the cost of training and maintaining a number of classifiers for every new user would probably dwarf the cost of adding user to the similarity networks. 

[doi-link]: http://dx.doi.org/10.1145/2030112.2030160 
