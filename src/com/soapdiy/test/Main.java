package com.soapdiy.test;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class Main {

	public static void main(String[] args) throws IOException, DocumentException {
		SAXReader reader = new SAXReader();
		File file = new File("soap.xml");
		if(!file.exists()) {
			file.createNewFile();
		}
		Document document = reader.read(file);
		Element root = document.getRootElement();
		Iterator<Element> rootIterator = root.elementIterator();
		while(rootIterator.hasNext()) {
			Element element = rootIterator.next();
			System.out.println(element.getName());
			Iterator<Element> elementIterator = element.elementIterator();
			while(elementIterator.hasNext()) {
				Element type = elementIterator.next();
				System.out.println("--"+type.getText());
			}
		}
		
	}
}
