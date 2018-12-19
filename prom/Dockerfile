# Build with: docker build -t myprom .
# Run with:
#     docker volume create promdata
#     docker run -d -v promdata:/prometheus -p 9090:9090 myprom

FROM prom/prometheus
COPY ./prometheus.conf /etc/prometheus.conf
