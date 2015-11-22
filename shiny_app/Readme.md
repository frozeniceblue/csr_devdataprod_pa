It is my 1st submission of the Coursera Developing Data Products Peer Assignment.

It aim to provide GUI of `power.prop.test` as simple sample size calculator for non-tech digital marketer who has responsible Web A/B Testing exmeriments.

#### Usage
1. Input **Baseline CVR**. It is your current CVR. *Input as a decimal, not percentage*.
2. Input **Minimum Detectable Effect (MDE)**. It is the minimum relative change in conversion rate you would like to be able to detect. *Input as a decimal, not percentage*.
3. Choose **MDE type**. It indicate your MDE is **Absolute** or **Relative**.
4. Slide **Significance level α**. It indicate your Type I Error. If your do not know Type I Error, keep default value or ask your support line.
5. Slide **Significance power 1−β**. It indicate your Type II Error. If your do not know Type II Error, keep default value or ask your support line.

*If you get the **Error** message instead of **Sample Size**. your inputs may be wrong and `power.prop.test` in R send error message. if your can, ask your support line with the error massage and notice them it is about error message of `power.prop.test` in R.*

#### Technical Notice
Its core feature of Shiny: **reactivity**. In `server.R`, a reactive called `var_cvr` is declared by radio box `MDE Type` in `ui.R`. Because, In business, user may use also **Relative** number for Minimum Detectable Effect (MDE ika delta).

That the reactive expression depends on the input expression `input$base_cvr`, `input$mde`, and `input$mde_type` that it's used by them the output expression `output$sample_size` and `output$bar_chart`. Try changing the MDE (using **MDE type**) while looking at the reactive and then at the outputs; you will see first the reactive and then its dependencies flash. 

