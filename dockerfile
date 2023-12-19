# Use an existing docker image as a base
FROM alpine

# Install bitpingd or any other necessary software
RUN apk update 
WORKDIR /app


COPY bitpingd .
RUN chmod +x bitpingd

# Run bitpingd when the container launches
CMD ["./bitpingd"]

