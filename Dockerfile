# Parent image from debian distribution
FROM debian:stable-slim AS build
RUN apt-get update
RUN apt-get install -y --no-install-recommends cmake ninja-build g++ \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY . .

RUN cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release \
&& cmake --build build \
&& ctest --test-dir build --output-on-failure \
&& cmake --install build --prefix /install

#---------------- img 2-----
FROM debian:stable-slim
COPY --from=build /install/bin/greet /usr/local/bin/greet

CMD ["greet"]
