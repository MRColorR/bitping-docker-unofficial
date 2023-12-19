# Use an existing docker image as a base
FROM alpine

# Install bitpingd or any other necessary software
RUN apk update 
WORKDIR /app


COPY bitpingd .
RUN chmod +x bitpingd

# Expose ports
EXPOSE 43463
EXPOSE 41703

# Run bitpingd when the container launches
CMD ["./bitpingd"]

