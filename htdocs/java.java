List<ImageModel> images = new List<ImageModel>();
...
while(reader.next()){
	ImageModel image = new ImageModel(url);
	images.add(image);
}
...
request.setAttribute("images", images);
...

...
notice_flag bool ? 공지 : 일반;

List<ArticleModel> articles = new ...;
List<NoticeModel> notices = new ...;
articles = SELECT * FROM bbs.articles WHERE notice_flag = FALSE;
notices = SELECT * FROM bbs.articles WHERE notice_flag = TRUE;
...
for(NoticeModel notice : notices){
	<%= <tr style="... notice"><td>notice.no</td><td>notice.subject</td></tr> %>
}
for(ArticleModel article : articles){
	<%= <tr><td>article.no</td><td>article.subject</td></tr> %>
}