FROM rancher/cli:v0.6.10@sha256:0f1c75a7a2fa2294a792d58eaa6011dbba56506c03df1428696e1d6707b83693

ENTRYPOINT [ ]

COPY VisualOnRoot.pem /usr/local/share/ca-certificates/

RUN update-ca-certificates 2>/dev/null || true