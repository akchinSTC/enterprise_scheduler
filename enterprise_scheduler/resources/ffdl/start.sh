#!/usr/bin/env bash
pip install ipykernel
pip install --upgrade jupyter_enterprise_gateway
pip install --upgrade enterprise_scheduler

jupyter enterprisegateway --ip=0.0.0.0 --port=8888 --NotebookApp.allow_remote_access=True & echo $! > elyra.pid

./run_notebook.py

pkill -F elyra.pid
