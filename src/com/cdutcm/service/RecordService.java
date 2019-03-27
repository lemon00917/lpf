package com.cdutcm.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cdutcm.domain.Record;

import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;

public interface RecordService {

	void jcStart() throws Exception;

	ArrayList<Double> closePort() throws IOException, NoSuchPortException, PortInUseException;

	ArrayList<Double> jcsj();
}
