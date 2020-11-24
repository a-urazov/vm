#!/bin/sh
export GOPATH=$(pwd)

# format each go file
#echo "Formatting go file..."
#for file in `find ./src/billing -name "*.go"`; do
#	echo "    `basename $file`"
#	go fmt $file > /dev/null
#done

echo ""

# run: ./billing demo.bs or ./billing
echo "Building REPL...(billing)"
go build -o billing main.go

echo "Building mdoc...(mdoc)"
go build -o mdoc mdoc.go

# run: ./fmt demo.bs
echo "Building Formatter...(fmt)"
go build -o fmt fmt.go

# run:    ./highlight demo.bs               (generate: demo.bs.html)
#     or  ./fmt demo.bs | ./highlight   (generate: output.html)
echo "Building Highlighter...(highlight)"
go build -o highlight highlight.go
