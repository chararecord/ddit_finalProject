package kr.or.ddit.commons.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.mock.web.MockMultipartFile;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliers;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PdfCertificateServiceImpl implements PdfCertificateService {

	@Override
	public String createPdf(String keyword) {
		
		String result = "";
		
		try {
			
			Document document = new Document();	// pdf 문서를 처리하는 객체
			
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("d:/sample.pdf"));	// pdf 파일의 저장경로: d:/sample.pdf
			
			document.open();	// 웹페이지에 접근하는 객체를 open
			
			String fontPath = "/resources/font/malgun.ttf";
			BaseFont.createFont(fontPath, BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			
			
			
			
		} catch(Exception e) {
			
		}
		return result;
	}

	@Override
	public MultipartFile createHtmlPdf(String filename, String htmlStr, HttpServletRequest request) {
		MultipartFile result = null;
		
		try {
			String storePathString = "d:\\pdf\\";
			// 서버 내 css 주소
			String serverPath = request.getSession().getServletContext().getRealPath("/") + "resources/css/";
			// bootstrap css 주소
			String bootstrapPath = request.getSession().getServletContext().getRealPath("/") + "resources/js/bootstrap-5.2.3-dist/css/";
			// 서버 내 폰트 주소
			String fontPath = request.getSession().getServletContext().getRealPath("/") + "resources/font/";
			
			File saveFolder = new File(storePathString);
			
			if(!saveFolder.exists() || saveFolder.isFile()) {
				saveFolder.mkdirs();
			}
			
			// 용지 설정 - A4
			Document document = new Document(PageSize.A4);
			
			filename += ".pdf";
			String realName = storePathString;
			realName += filename;
			
			File pdfFile = new File(realName);
			// 파일이 이미 있으면 삭제
			if(pdfFile.isFile()) {
				pdfFile.delete();
			}
			
			// PDF 만들기 시작
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(realName));
			
			document.open();
			
			
			htmlStr = "<html><body style='font-family: MalgunGothic;'>" + htmlStr + "</body></html>";
			
			XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
			
			// css 파일 설정
			StyleAttrCSSResolver cssResolver = new StyleAttrCSSResolver();
			// css 파일은 부트스트랩파일 경로 + css 이름
			CssFile cssFile = XMLWorkerHelper.getCSS(new FileInputStream(bootstrapPath + "bootstrap.min.css"));
			cssResolver.addCss(cssFile);
			
			XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
			
			// 폰트 설정
			fontProvider.register(fontPath + "malgun.ttf", "MalgunGothic"); // MalgunGothic은 font-family용 alias
			CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);
			
			HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
			htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
			
			// html을 pdf로 변환 시작
			PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
			HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
			CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);
			
			XMLWorker worker = new XMLWorker(css, true);
			// charset 설정
			XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));
			
			StringReader strReader = new StringReader(htmlStr);
			xmlParser.parse(strReader);
			
			document.close();
			writer.close();
			
			
			// MultipartFile로 만들기
			Path path = Paths.get(realName);
			String contentType = "application/pdf";
			byte[] content = null;
			content = Files.readAllBytes(path);
			result = new MockMultipartFile(filename, filename, contentType, content);
			
			
			
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}


}
