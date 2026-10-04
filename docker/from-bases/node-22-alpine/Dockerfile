FROM docker.aikido.io/1d624ff6a3842cfbc99ca/node:22-alpine@sha256:968d3fa825620eb9a70bccc07057be367807b71acd7be9f5438a8204f4cb6017
LABEL org.opencontainers.image.source="node:22-alpine"
LABEL org.opencontainers.image.title="timurkri wrapper of node:22-alpine"

RUN mkdir -p /etc/apk/keys \
    && echo "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQ0lqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FnOEFNSUlDQ2dLQ0FnRUFzbzcwb2pMUERtY3V1RFd6bXBkZwpGZnVDdjVNUGx1cFVRQ3dnZDNQRWhJWGJhQU9TUXlrUDlRZEFXWnlRdVBHbjhpUk93Q2tiQzFJeG5sUGVPZXVWCkh1WGFTR1FidFQ3T0xxT3JpYkdvS21FUjV0dEdmVVUycm11dHpKYU1XM3I2OGVTalVCZVVXZGF0bVQxTTZ4VloKLzBSNHJGK2JGR2V4THMxNnRkeXpiV1NaMkRuYlQ1N3hWbEJhSlE4Y2d2cjJoVjdrcWZpNlVJZTZWVHJyUDJMLwoyaWZOUHcvYzJQZ0lydXVxdGNUN1ppTERGZ2J2eWVZQ1k5MVo5bzZ1Rm90Uk5RenlaYUE0MEJFRHorMkN6MlJKCis4WXc2Qm9hRitMdGQxZXNtOHpQYThvVzZNM1BpNjlzSUZWL0d2eVM2dTc3L3V4cDdVcE0rL2lTL2dKTjRRaG0KYm5VOUNqazJ4azUzZlJqZUFDNjZuV2h1aFJOL1Z3SFFlMDVSdU5pYmRhR1c0eXlZZmxrUjFaVWRYbFVYQ1JCRQprMXdRT0R3QWRrU25GbCtaUVZLaVV3L2IwMmd5djZjM1h6eXpmZW13THJuczA2WlBMM20xNlRZa09wZENjQm9LClRDU01pNnpIN0JvbXV2WlRpNTNIZWRXY0NXYlNwMUhUdFRaRzJsZnVyVStQMkJ3RGZlSVhsVzFidE5TMFA1Y0kKNzM5VjNNL0JJbUhjNEJDNGFVaitJbDZ0d2pPNlQ2VjFwMFNwSGpCREowWlVSdlg2ZjAxRlhDZzFyanc2dU9sawp0TGtlM0ZBQ3NSOXlTRWRmSkpMTUgwOUVTV1hsT1ExajZ1amZUVlc3SnpBcHA5K1dEdmM3dVN5c3NnZUtwcWNyCm5OR3ZKWFhsZDFOVzI1ZHBJenRleUxzQ0F3RUFBUT09Ci0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQo=" | base64 -d > /etc/apk/keys/root@alpinelinux.org.rsa.pub \
    && echo "https://apk.aikido.io/1d624ff6a3842cfbc99ca/3.24" >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && sed -i '$d' /etc/apk/repositories \
    && rm -f /etc/apk/keys/root@alpinelinux.org.rsa.pub \
    && rm -rf /var/cache/apk/* \
    && : # aikido-package-repo
