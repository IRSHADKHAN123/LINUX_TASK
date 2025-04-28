#!/bin/bash
cd /var/log
sudo  cp lastlog /var/log/logs
cd /var/log/logs
sudo mv lastlog logs.txt
sudo cp logs.txt collection.tar
sudo journalctl --since "2025-04-24" --until "2025-04-28" | grep "start"> journal.txt
sudo cp journal.txt journal.tar
