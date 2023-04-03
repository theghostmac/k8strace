#!/bin/bash

echo "Starting library installations..."
# get otelhttp from opentelemetry.
go get go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp
# announce completed installation.
echo "Done installing first library: otelhttp!"
echo "Starting the second..."
go get go.opentelemetry.io/otel/api/global
# announce completed installation.
echo "Done installing second library: global api!"
echo "Starting the third..."
go get go.opentelemetry.io/otel/exporters/jaeger
# announce completed installation.
echo "Done installing third library: jaeger exporters!"
echo "Starting the fourth..."
go get go.opentelemetry.io/otel/label
# announce completed installation.
echo "Done installing fourth library: label!"
echo "Starting the fifth..."
go get go.opentelemetry.io/otel/sdk/trace
# announce completed installation.
echo "Done installing fifth library: trace sdk!"
echo "You can proceed, mr macbobby..."
say "Attention, attention, attention,  we are done!"