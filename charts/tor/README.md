# Tor-Relay

Simple chart for deploy a tor-relay in Kubernetes.

## Configuration

- Update values.yaml ENV to reflect your relays name & config options, and it will create a new relay.
- If you wish to migrate an existing relay you can copy the keys into the PVC

By default, it uses the loadbalancer and port 9001 & 9030



# Change Log

0.1.2 - Change Common template to maintained version
0.1.1 - Add Icon + Signing