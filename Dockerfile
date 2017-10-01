FROM ubuntu:trusty

# Install curl
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Install KNIME
RUN curl -k -O https://download.knime.org/analytics-platform/linux/knime-full_3.4.1.linux.gtk.x86_64.tar.gz && \
    tar xvf knime-*.tar.gz && \
    rm -f knime-*.tar.gz && \
    ln -s knime-* knime
ENV PATH=/knime:$PATH

ENTRYPOINT /knime/knime -nosplash -reset -application org.knime.product.KNIME_BATCH_APPLICATION -workflowDir=/workflow