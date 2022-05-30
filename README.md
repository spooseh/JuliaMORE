# Introduction to Julia programming

This repository hosts Jupyter notebooks as a hands-on introductory tutorial on Julia programming language for a one hour workshop coordinated by [DynaMORE](http://www.dynamore-project.eu) projct.


## How to use these notebooks?
Assuming that you have cloned/downloaded the notebookes:
- install Julia from [julialang.org](https://julialang.org/). Mind the help for your platform. You might need to add it's path manually specially in Windows.
    * Mac and Windows: click and run (Julia application).
    * Linux: good old Terminal.
- navigate to the directory of notebooks in `Terminal` and start `Julia`
- the prompt at the command line will change to `julia>` indicating the REPL
- at Julia REPL press `]` to enter package manager (prompt changes to `pkg>`) and execute the following commands
    * `activate .`
    * `instantiate`
- this will install all the required packages including `IJulia` for running the notebooks
- go back to REPL by pressing backspace and run
    * `using IJulia` makes the package available
    * `IJulia.notebook(dir=".")` starts a Jupyter dashboard on your default browser
        - the first time you run `notebook()`, it will prompt you to install Jupyter if it is not found
    * open `index.ipynb` in Jupyter dashboard and proceed
    * you might need to run `using Pkg` and then `Pkg.build("IJulia")` at REPL to complete the setup if you are unable to run the notebook properly
- alternatively you can use REPL without entering the package manager
    * `using Pkg`
    * `Pkg.activate(".")`
    * `Pkg.instantiate()`
    
- \[Optional:\] install VSCode from [code.visualstudio.com](https://code.visualstudio.com/). It looks like Rstudio :)
    * install [Julia plugin](https://www.julia-vscode.org/docs/dev/gettingstarted/#Installation-and-Configuration-1) for VSCode.

<hr>
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img style="right" alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/></img></a>
