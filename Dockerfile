FROM nginx:1.19.6
RUN cd /
RUN curl -O 'https://rawcdn.githack.com/devsdocs/HerokuDriveRclone/53b849573b4a0247987ccca5966078120799d46b/rclone'
RUN curl -O 'https://rawcdn.githack.com/devsdocs/HerokuDriveRclone/53b849573b4a0247987ccca5966078120799d46b/rclone.1' && \
    cp rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY entrypoint.sh /entrypoint.sh 
COPY acc.json /acc.json
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
