<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 20/1/21
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="image/jpeg" language="java" import="java.util.*,java.awt.*,java.awt.image.*,javax.imageio.*" pageEncoding="utf-8"%>

<%!
    Color getRandColor(int fc,int bc){
        Random random = new Random();
        if(fc > 255){
            fc = 255;
        }
        if(bc < 255){
            bc = 255;
        }
        int r = fc +random.nextInt(bc-fc);
        int g = fc +random.nextInt(bc-fc);
        int b = fc +random.nextInt(bc-fc);


        return new Color(r,g,b);
    }
%>

<%
    //design page not cookie
    response.setHeader("Pragma","no-cache");
    response.setHeader("Cache-Control","no-catch");
    response.setDateHeader("Expires",0);

    //create image in memory
    int width = 60;
    int height = 20;
    BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

    //create img
    Graphics g = image.getGraphics();
    //generate random object
    Random random = new Random();
    //set background color
    g.setColor(getRandColor(200,250));
    g.fillRect(0,0,width,height);
    //set font
    g.setFont(new Font("Tines Nev Roman",Font.PLAIN,18));
    //random generate
    g.setColor(getRandColor(160,200));
    for(int i = 0; i < 255; i++){
        int x = random.nextInt(width);
        int y = random.nextInt(height);
        int xl = random.nextInt(12);
        int yl = random.nextInt(12);
    }
    //random generate 4-digit verification code
    String sRand = "";
    for(int i = 0; i < 4; i++){
        String rand = String.valueOf(random.nextInt(10));
        sRand  += rand;
        //put verification code into img
        g.setColor(new Color(20 + random.nextInt(110),20 + random.nextInt(110),20 + random.nextInt(110)));
        g.drawString(rand,13*i+6,16);
    }
    session.setAttribute("rCode",sRand);
    //img effect
    g.dispose();
    //print out img to page
    ImageIO.write(image,"JPEG",response.getOutputStream());
    out.clear();
    out = pageContext.pushBody();
%>