#!/bin/bash
set -e

chown -R ftpuser:www-data /home && \
chmod 2775 /home && \
chmod -R o+r /home > /dev/null 2>&1 && \
chmod -R g+w /home > /dev/null 2>&1 && \
find /home -type d -exec chmod 2775 {} + > /dev/null 2>&1 && \
find /home -type f -exec chmod 0664 {} + > /dev/null 2>&1