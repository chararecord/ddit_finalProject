package kr.or.ddit.commons.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
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
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

import kr.or.ddit.campus.certificate.service.CertHistoryService;
import kr.or.ddit.student.tuition.dao.TuitionDao;
import kr.or.ddit.student.tuition.service.TuitionService;
import kr.or.ddit.vo.TuitionVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PdfCertServiceImpl implements PdfCertService {
	
	@Inject
	CertHistoryService certHistService;
	
	@Inject
	WebApplicationContext context;
	

	@Override
	public int createHtmlPdf
		(String filename
		, String htmlStr
		, HttpServletRequest request
	) {
		
		ClassPathResource result = null;
		int cnt = 0;
		try {
			String storePathString = "d:\\pdf\\";
			String serverPath = request.getSession().getServletContext().getRealPath("/") + "resources/css/";
			String fontPath = request.getSession().getServletContext().getRealPath("/") + "resources/font/";
			
			log.info("serverPath : {}" , serverPath);
			File saveFolder = new File(storePathString);
			
			if (!saveFolder.exists() || saveFolder.isFile()) {
				saveFolder.mkdirs();
			}
			
			Document document = new Document();
			String tblId = filename;
			filename += ".pdf";
			
			File pdfFile = new File(storePathString, filename);
			
			if(pdfFile.isFile()) {
				pdfFile.delete();
			}
			
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(pdfFile));
			
			document.open();
			
			
			
	        BaseFont baseFont = BaseFont.createFont(fontPath + "malgun.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			// pdf가 기본적으로 한글처리가 안되기 때문에 한글폰트 처리를 따로 해주어야 한다.
			// createFont메소드에 사용할 폰트의 경로 (malgun.ttf)파일의 경로를 지정해준다.
			// 만약에 이 경로에 없을 경우엔 java파일로 만들어서 집어넣어야 한다.

			Font font = new Font(baseFont, 12); // 폰트의 사이즈를 12픽셀로 한다.
			
			htmlStr = "<html><body style='font-family: MalgunGothic;'>" + htmlStr + "</body></html>";
			
			
			Paragraph title = new Paragraph("재학증명서", new Font(baseFont, 20, Font.BOLD));
			title.setAlignment(Element.ALIGN_CENTER);
			document.add(title);
			
			
		
			CSSResolver cssResolver = new StyleAttrCSSResolver();
			CssFile cssFile = XMLWorkerHelper.getCSS(new FileInputStream(serverPath + "itext2.css"));
			cssResolver.addCss(cssFile);
			
			XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
			
			fontProvider.register(fontPath +  "malgun.ttf", "MalgunGothic");
			CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);
			
			HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
			htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
			
			
			PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
			HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
			CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);
			
			XMLWorker worker = new XMLWorker(css, true);
			// 캐릭터 셋 설정
			XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));

			StringReader strReader = new StringReader(htmlStr);
			xmlParser.parse(strReader);
			
			Paragraph under = new Paragraph("대재대학교 총장", new Font(baseFont, 20, Font.BOLD));
			under.setAlignment(Element.ALIGN_BOTTOM);
			under.setAlignment(Element.ALIGN_CENTER);
			document.add(under);
			

//			String filename2 = "D:\\A_TeachingMaterial\\6.JSP_Spring\\workspace\\FinalProject_305_04\\src\\main\\webapp\\resources\\images\\대재대도장.png";
//			Image image = Image.getInstance(filename2);
//			image.scaleAbsolute(200f, 80f);	// 이미지 크기 조절
//			image.setAlignment(Image.MIDDLE);
//			document.add(image);
			
			document.close();
			writer.close();
			
			
		} catch(DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return 1;
	}

	
	

}
