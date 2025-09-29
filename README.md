# UMFNN
The code for the paper "Unsupervised multilayer fuzzy neural networks for image clustering".

**Reference:**  
Y. Wang, H. Ishibuchi, M. J. Er, and J. Zhu, “Unsupervised multilayer fuzzy neural networks for image clustering,” *Information Sciences*, vol. 622, pp. 682–709, 2023.  

@article{WANG2023682,   
title = {Unsupervised multilayer fuzzy neural networks for image clustering},   
journal = {Information Sciences},   
volume = {622},   
pages = {682-709},   
year = {2023},   
author = {Yifan Wang and Hisao Ishibuchi and Meng Joo Er and Jihua Zhu}   
}   

This paper can be downloaded from https://www.sciencedirect.com/science/article/abs/pii/S0020025522014475.

## Introduction:
Currently, labelling a large number of images is still a very challenging task. To tackle the problem of unlabelled data, unsupervised learning has been proposed. Among many unsupervised learning algorithms, K-means is the most popular algorithm. However, in a low-dimensional space, fuzzy c-means, which is more robust and less sensitive to initialization, has several advantages over K-means clustering. On the other hand, stacked convolutional pooling structures and manifold representation play pivotal roles in image clustering. In this paper, we propose an unsupervised multilayer fuzzy neural network (UMFNN) for image clustering that unifies fuzzy systems, multilayer convolutional structures and manifold representation. 

In this study, we have exploited the advantage of fuzzy systems to tackle unsupervised tasks. We proposed UMFNN for image clustering by introducing the stacked convolutional pooling structure with randomly generated weights and manifold regularization. Experimental results demonstrate that the proposed UMFNN performs well on the image clustering tasks. The clustering results clearly illustrate that fuzzy-based clustering algorithms achieve excellent accuracy on noisy datasets. This observation confirms that fuzzy membership functions play a pivotal role in image clustering. The clustering results in terms of NMI, RI and Purity clearly demonstrate that combining the multilayer convolutional pooling structure and manifold regularization achieves superior performance. Furthermore, the FNN with one modification outperforms the FNN on most datasets. In addition, the convolutional pooling structure can reduce the standard deviation of the clustering performance. We have also investigated effects of different fuzzy membership functions on clustering performance. In particular, we examined
and compared the parameter sensitivity of UMFNN and other algorithms. The proposed UMFNN provides new insights into TSK fuzzy systems and successfully extends the capability of the fuzzy system to unsupervised tasks.

## Structure:
<img width="1221" height="560" alt="image" src="https://github.com/user-attachments/assets/14a9be75-3e70-4924-a1a4-08aea0cc31e7" />

we present fuzzy mapping, unsupervised multilayer feature extraction and manifold representation, which are the three stages of the proposed UMFNN. Fuzzy images are generated in the first stage based on fuzzy membership functions. Next, features are extracted from the fuzzy images using a multilayer convolutional pooling structure with randomly generated weights. Finally, K-
means for clustering in a low-dimensional embedding space is employed to reduce the dimension of the features based on the manifold representation. 

## Experimental Results:   
The experimental results of ConvFNN are shown as follows:   

| Datasets | NMI | RI | Purity | 
|:-------|:--------|:--------|:--------|
|JAFFE|0.9813(0.0057)|0.9945(0.0022)|0.9854(0.0052)|


