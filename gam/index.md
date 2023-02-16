---
title: Generalized Additive Modelling
author: M.Marchildon
output: html_document
---


# Linear Models

$$ 
    \mathbf{y} = 
    \mathbf{X}\boldsymbol{\beta} + 
    \boldsymbol\epsilon,\quad 
    
    \boldsymbol\epsilon\sim N(\mathbf{0},\mathbf{I}\sigma^2) 
$$

where $\mathbf{X}$ is the "model matrix" and $\boldsymbol\beta$ is a vector of unknown parameters.


### An aside:

#### Simple linear regression is a specific case:

$$ y=mx+b $$

is the same as the model:

$$ \mu_i = \beta_0 + x_i\beta_1 $$

having $p=2$ parameters and $n$ $(x,y)$ pairs. Error is assumed to be a random process that is normally distributed:

$$ \epsilon_i=y_i-\mu_i \sim N(0,\sigma^2) $$

#### Written in matrix form:

say I have:

$$
    \begin{matrix}
        \mu_1=\beta_0+x_1\beta_1\\
        \mu_2=\beta_0+x_2\beta_1\\
        \mu_3=\beta_0+x_3\beta_1\\
        \vdots\\
        \mu_n=\beta_0+x_n\beta_1
    \end{matrix}
$$

could be rewritten as:

$$
    \begin{bmatrix}
        \mu_1\\
        \mu_2\\
        \mu_3\\
        \vdots\\
        \mu_n
    \end{bmatrix} =
    \begin{bmatrix}
        1 & x_1\\
        1 & x_2\\
        1 & x_3\\
        \vdots & \vdots\\
        1 & x_n
    \end{bmatrix}  
    \begin{bmatrix}
        \beta_0\\\beta_1
    \end{bmatrix}          
$$

or

$$ 
    \boldsymbol\mu = \mathbf{X}\boldsymbol\beta
    ,\quad
    \mathbf{y}\sim N(\boldsymbol\mu, \mathbf{I}\sigma^2)
$$

or

$$ 
    \mathbf{y} = 
    \mathbf{X}\boldsymbol{\beta} + 
    \boldsymbol\epsilon,\quad 
    
    \boldsymbol\epsilon\sim N(\mathbf{0},\mathbf{I}\sigma^2) 
$$


## Linear Mixed Models

$$ 
    \mathbf{y} = 
    \mathbf{X}\boldsymbol{\beta} +
    \mathbf{Z}\mathbf{b} +
    \boldsymbol\epsilon
    ,\quad 
    
    \mathbf{b}\sim N(\mathbf{0},\boldsymbol{\psi}_\theta) 
    ,\quad

    \boldsymbol\epsilon\sim N(\mathbf{0},\mathbf{I}\sigma^2) 

    % \boldsymbol\epsilon\sim N(\mathbf{0},\boldsymbol{\Lambda}_\theta)

$$

where $\boldsymbol{\psi}_\theta$ is the covariance matrix of unknown parameters $\theta$, $Z$ is the model of "random effects". 

<!-- Often $\boldsymbol{\Lambda}_\theta=\mathbf{I}\sigma^2$ (Wood, 2017, pg.61). -->



## Generalized Linear Models (GLM)

$$
    g(\mu_i)=\mathbf{X}_i\boldsymbol\beta
$$

where $g()$ is a "link function" which allows the response ditribution to be other than normal, which is a special case of GLM itself. $\mathbf{X}_i$ is the $i^\text{th}$ row of a model matrix $\mathbf{X}$.

and similarly,

## Generalized Linear Mixed Models (GLMM)

$$
    g(\mu_i)=
    \mathbf{X}_i\boldsymbol\beta +
    \mathbf{Z}_i\mathbf{b}
    ,\quad
        \mathbf{b}\sim N(\mathbf{0},\boldsymbol\psi)   
$$


# Generalized Additive Models

> A generalized additive model (Hastie and Tibshirani, 1986, 1990) is a generalized linear model with a linear predictor involving a sum of smooth functions of covariates (Wood, 2017, pg.161)

something in the form of:

$$
    g(\mu_i)=\mathbf{A}_i\boldsymbol\theta+
    f_1(x_{1i}) +
    f_2(x_{2i}) +
    f_3(x_{3i},x_{4i}) + \dots
$$

$\mathbf{A}_i$ is the $i^\text{th}$ row of a model matrix $\mathbf{A}$, $\boldsymbol\theta$ is the parameter vector.


# References

Wood, S.N., 2017. Generalized Additive Models: An introduction with R, 2nd ed. CRC Press. 476pp.
