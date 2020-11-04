# project_template
Template for project directories in the future

## Requirements

See the `requirements.txt` file for the basic requirements to run the initial analysis and setup sanity checks.

## Running Testing Checks

We use the module `pytest` and the `hypothesis` library to perform basic checks here. To test out the naive demo function here, you can type `pytest` and it should complete the trivial tests that have been setup.

## Generating the website

The `notebooks` directory contains all useful analyses from jupyter notebooks. Analyses can also be structured into `notebooks/analysis1/test.ipynb` for further organization.

One of the last steps after a day of plotting and an updated website should be to include the notebooks and generate static HTML that captures all of the analysis (done on the cluster or not!). This can be done with.

```
make build.site
```

Note that you may need to alter the `index.ipynb` file which contains a list of all of the analyses performed before seeing changes.
