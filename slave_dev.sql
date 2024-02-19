-- PRAGMA table_info('Slave_dev')
-- (dev_id, dev_name, dev_type, slave_id,com_port,baud_rate,parity,data_bits,stop_bits,ip_address,ip_port,di_start,di_size,coil_start,coil_size,ir_start,ir_size,hr_read_start,hr_read_size,hr_write_start,hr_write_size,pause)

INSERT INTO Slave_dev
VALUES
(1,'feed 1','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.10',502,0,0,0,0,1,2,1,1,0,0,0),
(2,'feed 2','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.11',502,0,0,0,0,1,2,1,1,0,0,0),
(3,'purge','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.12',502,0,0,0,0,1,2,1,1,0,0,0),
(4,'product','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.13',502,0,0,0,0,1,2,1,1,0,0,0),
(5,'tank','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.14',502,0,0,0,0,1,2,0,0,0,0,0),
(6,'analyzer','TCP',247,'/dev/ttyS0',115200,'None',8,1,'192.168.95.15',502,0,0,0,0,1,3,0,0,0,0,0);

UPDATE Programs SET File='simplified_te.st';
UPDATE Settings SET Value=true WHERE Key='Start_run_mode';
UPDATE Settings SET Value='enabled' WHERE Key='Pstorage_polling';