package com.soapdiy.service.imlp;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Service;

@Service("diyService")
public class DiyServiceImpl {
	public void loadXML() throws DocumentException, IOException {
		File file = new File("soap.xml");
		if(!file.exists()) {
			file.createNewFile();
		}
		SAXReader reader = new SAXReader();
		Document xmlDocument = reader.read(file);
		Element root = xmlDocument.getRootElement();
		Iterator<Element> i = root.elementIterator();
		
		
		
		
		}
	}
