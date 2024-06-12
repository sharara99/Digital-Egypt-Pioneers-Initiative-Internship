# Counter-App

A simple Flask application that counts website visits and stores the count in a default Redis backend. This app is used in the Docker Deep Dive book by Nigel Poulton, specifically in the Compose chapter.

## Description

This application demonstrates how to use Docker Compose to orchestrate a multi-container application consisting of a Flask web server and a Redis database. The Flask app increments a counter stored in Redis each time the root URL is accessed.

The Docker Compose file and related configurations are adapted from the Docker Deep Dive book by Nigel Poulton.
