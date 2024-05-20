# Veteran Treatment Survival Analysis

This repository houses the analysis of the veteran dataset from the R `survival` package. Our objective is to investigate the effectiveness of two distinct treatment regimens for lung cancer by analyzing their survival outcomes through a range of statistical survival analysis models.

## Dataset

The [veteran dataset](https://www.rdocumentation.org/packages/survival/versions/3.5-8/topics/veteran) comprises a randomized trial data for lung cancer treatments. Key variables include:

- `trt`: Treatment type (1 or 2)
- `time`: Survival time until death or censorship
- `status`: Censoring status (1 if the event occurred, 0 otherwise)
- Additional covariates could be added for a more comprehensive analysis.

This dataset is accessible directly from the `survival` package in R.

## Analysis Summary

This project includes multiple analytical steps, executed through R scripts:

- **Exploratory Data Analysis (EDA)**: Basic exploration to check for missing values and summarize the data.
- **Survival Regression Models**:
  - **Kaplan-Meier Estimation**: Computes survival curves for each treatment group to visually compare survival probabilities.
  - **Log-rank Test**: Conducts a statistical test to compare the survival distributions of the treatment groups.
  - **Cox Proportional Hazards Model**: Fits a stratified Cox model to explore the treatment effects without the assumption of proportional hazards.
  - **Parametric Survival Models**: Lognormal, Weibull, and Log-logistic models are fitted to estimate the effects of treatments on survival times.
- **Model Diagnostics**: Checks and validates the assumptions underlying each survival model.

## Results

- The Kaplan-Meier estimates indicated a crossover effect; treatment 1 showed higher survival probabilities initially, whereas treatment 2 had better outcomes after 200 days.
- The log-rank test found no significant differences in overall survival between the two treatment groups, suggesting similar efficacy across the treatments.
- The Cox model analysis indicated non-proportionality of hazards, which suggests that the effect of treatments on survival may change over time.
- Parametric models showed varied effects of treatments. Specifically, the stratified Weibull model suggested a positive effect of treatment 2, while other models indicated no significant difference or a negative effect.

## Conclusions

- The analysis highlights the complexity of treatment effects in lung cancer, with different models providing nuanced insights into the survival probabilities associated with each treatment.
- The absence of significant differences in the log-rank test along with the non-proportional hazards identified in the Cox model suggests that treatment strategies might need personalization based on patient-specific factors or time-dependent considerations.
