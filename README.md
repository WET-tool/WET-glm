# WET-glm

Create a docker image to run the ![General Lake Model](https://github.com/AquaticEcoDynamics/glm-aed) (GLM). Generally, this is a base image from which apps that provide services that rely on GLM simulation outputs can be built. 

## Add GLM

Add the GLM model as a submodule:

```
git submodule add https://github.com/AquaticEcoDynamics/glm-aed.git glm-aed
```

## docker GLM

Build the GLM docker image:

```
docker build -t wet-glm .
```

## docker hub

Rename the docker `wet-glm` image with docker hub username:

```
docker tag wet-glm <docker hub username>/we-glm
```

Push to docker hub:

```
docker push <docker hub username>/we-glm
```

## Test

Run the GLM docker image and mount the glm-aed directory into the container:

```
docker run -it -v "${PWD}/glm-aed":/tmp wet-glm bash
```

This should open up bash inside the container. Run the Sparkling example:

```
/glm/glm --nml "/tmp/glm-examples/Sparkling/glm3.nml"
```

When the simulation has finished, check that outputs have been generated in `glm-aed/glm-examples/Sparkling/output` on your local machine. 