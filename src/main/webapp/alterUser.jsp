<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="cn.com.ambow.ects.dao.impl.ProductDaoImpl"%>
<%@page import="cn.com.ambow.ects.dao.impl.CountryDaoImpl"%>
<%@page import="cn.com.ambow.ects.dao.impl.ProvinceDaoImpl"%>
<%@page import="cn.com.ambow.ects.entity.Country"%>
<%@page import="cn.com.ambow.ects.entity.Province"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD Xjsp 1.0 Transitional//EN" "http://www.w3.org/TR/xjsp1/DTD/xjsp1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a><a href="index.jsp">index</a></div>            
         <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.jsp">��ҳ </a></li>
            <li><a href="about.jsp">��������</a></li>
             <li><a href="${pageContext.request.contextPath}/FildAllProductServlet">���</a></li>
            <li><a href="specials.jsp">�ر��鼮</a></li>
            <li><a href="myaccount.jsp">�ҵ��˻�</a></li>
            <li><a href="register.jsp">ע��</a></li>
            <li><a href="details.jsp">�۸�</a></li>
            <li><a href="contact.jsp">��ϵ</a></li>
            </ul>
        </div>     
       
       
     <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>�޸��˻���Ϣ</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
            �밴������͹涨�޸�
            </p>
            
              	<div class="contact_form">
                <div class="form_subtitle">��Ϣ�޸�</div>
                 <form name="register" action="${pageContext.request.contextPath}/AlterUserServlet" method="post">          
                    <div class="form_row">
                    <strong>����:</strong>
                    <input type="text" class="contact_input" name="name" value="${sessionScope.user.name}"/>
                    </div>  


                    <div class="form_row">
                    <strong>����:</strong>
                    <input type="text" class="contact_input" name="password" value="${sessionScope.user.password}"/>
                    </div> 

                    <div class="form_row">
                    <strong>����:</strong>
                    <input type="text" class="contact_input" name="email" value="${sessionScope.user.contcatinfo.email}"/>
                    </div>


                    <div class="form_row">
                    <strong>�ֻ�����:</strong>
                    <input type="text" class="contact_input" name="cellPhone" value="${sessionScope.user.contcatinfo.cellPhone}"/>
                    </div>
                    <div class="form_row">
                     <strong>��ͥ����:</strong>
                    <input type="text" class="contact_input" name="homePhone" value="${sessionScope.user.contcatinfo.homePhone}"/>
                    </div>
                     <div class="form_row">
                     <strong>�칫�Һ���:</strong>
                    <input type="text" class="contact_input" name="officePhone" value="${sessionScope.user.contcatinfo.officePhone}"/>
                    </div>
                    <input type="hidden" name="userId" value="${sessionScope.user.userId}"}>
                 
                    <div class="form_row">
                    <strong>��ַ:</strong>
                    ����:<select name="country">
                    <%
                    	CountryDaoImpl countryDaoImpl=new CountryDaoImpl();
		                List<Country>countrielist=(List<Country>) countryDaoImpl.findAll();
		                for (Country country : countrielist) {
							System.out.println(country.getName());
							String string="<option value ='"+country.getCountryId()+"'>"+country.getName()+"</option>";
							out.println(string);
						}
		                
                     %>
                     </select>
                     ʡ��:<select name="province">
                     
                       <%
                    	ProvinceDaoImpl provinceDaoImpl=new ProvinceDaoImpl();
						List<Province>provincelList=(List<Province>) provinceDaoImpl.findAll();
						for (Province province : provincelList) {
								String string="<option value ='"+province.getProvinceId()+"'>"+province.getName()+"</option>";
								out.println(string);
						}
		                
                     %>
                     </select>
                     ����:<input type="text" name="city" size="5"/>
                    </div>                    

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        ��ͬ�� <a href="#">BookStor������ &amp; �涨</a>                        </div>
                    </div> 

                    
                    <div class="form_row">
                    <input type="submit" class="register" value="�ύ" />
                    </div>   
                  </form>       
                </div>  
            
          </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
       <div class="right_content">
        	<div class="languages_box">
            <span class="red">����:</span>
            <a href="#" class="selected"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">����: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#" class="selected">USD</a>
                </div>
                
                
                      <div class="cart">
              <c:if test="${(empty sessionScope.user)}">
	              <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
	                 <table>
	                 	<tr>
	                    	<td>�˺�:</td>   <td><input type="text" size="10" name="loginname"></td>
	                        <td>����:</td>    <td><input type="password" size="12" name="loginpassword"></td>
	                        <td><input type="submit" value="�ύ"></td>
	                    </tr>
	                 </table>
	              </form>
              </c:if>
              <c:if test="${!(empty sessionScope.user)}">
              	<table>
               		<tr>
                    	<td>��ӭ${sessionScope.user.name}!!!</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><a href="${pageContext.request.contextPath}/LogoutServlet">ע��</a></td>
                    </tr>
                </table>
                <table>
                    <tr>
                    	<td>
                        	<span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>���ﳵ
                        </td>
                        <td>
                  				${sessionScope.cart.items} x items | <span class="red">TOTAL: ${sessionScope.cart.money}$</span>
                        </td>
                        <td>
                        	<a href="cart.jsp" class="view_cart">���빺�ﳵ</a>
                        </td>
                    </tr>
               </table>
             	
              </c:if>
              
              </div>
              
            <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>��ǽ��� Story</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������ȫ�������ۺ����������Ϲ����̳ǣ��ɹ�����������������Ĺ�˾������  ������
�ϻ���������IDG���š�¬ɭ�����ż��š����޴�ҵͶ�ʻ���ԭ�������й���ҵ���𣩹�ͬͶ�ʳ�����
             </p>
             
    </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>              
             
             </div>
             
          <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>���</div> 
                
                <ul class="list">
                <li><a href="#">��վ����</a></li>
                <li><a href="#">���ݿ���</a></li> 
                <li><a href="#">ͼ��ͼ��</a></li>
                <li><a href="#">�������</a></li>
                <li><a href="#">�ִ��칫</a></li>
                <li><a href="#">����ϵͳ</a></li>
                <li><a href="#">������֤</a></li>
                <li><a href="#">���缼��</a></li>
                <li><a href="#">��������</a></li>
                 <li><a href="#">���Կ���</a></li>
                <li><a href="#">��ѧ��Ʒ</a></li>                                              
                </ul>
                
   	         <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>�ϻ���</div> 
                
                <ul class="list">
                <li><a href="#">����΢��</a></li>
                <li><a href="#">��ѶQQ</a></li>
                <li><a href="#">��������</a></li>
                <li><a href="#">��ѩ��˾</a></li>
                <li><a href="#">������</a></li>
                <li><a href="#">�����̳�</a></li>
                <li><a href="#">�Ĳ����Թ�˾</a></li>
                <li><a href="#">����԰��</a></li>
                <li><a href="#">���۹�湫˾</a></li>                              
                </ul>      
             
             </div>   
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com"><img src="images/csscreme.gif" alt="by csscreme.com" title="by csscreme.com" border="0" /></a></div>
       <div class="right_footer">
        <a href="index.jsp">��ҳ</a><a href="#"></a>
        <a href="about.jsp">��������</a><a href="#"></a>
        <a href="#">����</a>
        <a href="#">˽��Ȩ��</a>
        <a href="#">��ϵ����</a>
       
        </div>
        
       
       </div>
    

</div>

</body>
</html>