# Home system

This document describes how to setup my home system and how to setup my local ansible machine.

## What is it?

My home system is intended to run within my self-hosted k3s cluster running on a number of raspberry's.
These are located at different parts of my home and will be used to communicate with my openHAB server running inside the cluster as well.

To make it easier to move my system, change it and reproduce it, I've decided to use Kubernetes and Ansible to be able to more rapidly try new things.

Is it overkill? HECK YEH.

# Wanna try it?

Just get a bunch of raspberry's (minimum 2) and setup according to the SETUP_RASPBERRY document. 
Edit the hosts file according to your own network and apply the ansible playboboks :)
