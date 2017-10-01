KNIME Docker image
------------------

This is a project for Docker image of KNIME.  
You can execute the existing KNIME workflow by this image.

## How to use

Mount the workflow directory and optionally input/output directory.

Sample workflow in GitHub reads CSV file in /input and write the data to /output.

```bash
docker run --rm \
  -v "$(pwd)/sample/workflow:/workflow"
  -v "$(pwd)/sample/input:/input:ro"
  -v "$(pwd)/sample/output:/output"
  uphy/knime-cli:3.4.1
```