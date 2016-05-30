<#include "layout.ftl">

<#macro overrideTitle>
    发布作品
</#macro>
<#macro overrideStyle>
    <title>发布作品</title>
    <link rel="stylesheet" href="${contextPath}/templates/default/admin/css/select2.min.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/css/release.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/admin/css/trumbowyg.min.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/admin/css/dropzone.min.css">
 </#macro>

 <#macro overrideContent>
    <div class="main">
    	<div class="container">
    		<h3>编辑作品信息</h3>
    		<form class="form-horizontal" id="photo-form" action="../photo<#if model??>/${model.id!}</#if>.html<#if model??>?_method=PUT</#if>?redirect=cameraman.html" method="post">
    			<div class="group">
    				<label for="albumName">相册名称<span>*</span></label>
    				<input type="text" class="form-control" id="albumName"  name="albumName"  placeholder="相册名...">
    				<div class="infoBox">
    					<div class="infoMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div style="clear:both"></div>	
    			</div>
    			<div class="group">
    				<label for="header">作品标题<span>*</span></label>
    				<input type="text" class="form-control" id="title"  name="title"  placeholder="标题">
    				<div class="infoBox">
    					<div class="infoMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div style="clear:both"></div>	
    			</div>
<!--     			<div class="group"> -->
<!--                     <label for="category">分类<span>*</span></label> -->
<!--                     <select style="width:100px"> -->
<!--                        <option value="人物摄影">人物摄影</option> -->
<!--                        <option value="风光摄影">风光摄影</option> -->
<!--                        <option value="静物摄影">静物摄影</option> -->
<!--                        <option value="婚纱摄影">婚纱摄影</option> -->
<!--                        <option value="活动庆典">活动庆典</option> -->
<!--                        <option value="其他">其他</option>  -->
<!--                     </select>  -->
<!--                 </div> -->
                <div class="form-group">
                        <label class="col-sm-2 control-label">相册</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="category" id="category" data-placeholder="请选择相册"  style="width: 100%">
                                <option value="${(model.category.id)!}">${(model.category.name)!}</option>
                            </select>
                            <label class="error-information"></label>
                        </div>
                    </div>
    			<div class="group">
    				<label for="brief">作品简介<span>*</span></label>
    				<textarea class="form-control" id="brief" name="brief"placeholder="简介..." rows="3"></textarea>
    				<div class="tipBox">
    					<div class="tipMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div class="errorBox">
    					<div class="errorMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div style="clear:both"></div>	
    			</div>
    			<div class="group">
    				<label for="place">拍摄地点<span>*</span></label>
    				<input type="text" class="form-control" id="place" name="place">
    				<div class="tipBox">
    					<div class="tipMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div class="errorBox">
    					<div class="errorMsg">
    						<div class="triangle"></div>
    					</div>
    				</div>
    				<div style="clear:both"></div>	
    			</div>
    			<div class="group">
					<label for="time">拍摄时间</label>
					<input type="text" class="form-control" id="time" name="time" placeholder="拍摄时间">
					<div style="clear:both"></div>	
				</div>
				<div class="group">
					<label for="tools">拍摄器材</label>
					<input type="text" class="form-control" id="tools" name="tools" placeholder="拍摄器材">
					<div style="clear:both"></div>	
				</div>
			 <div class="group">
                  <label for = "upload">上传作品</label>
                  <div class="col-sm-10">
                      <div class="upload dropzone <#if (model.url)??>dz-started</#if>" id="upload">
							<#if (model.url)??>
                            <div class="dz-preview dz-processing dz-success dz-complete dz-image-preview">
                                <div class="dz-image">
                                <img src="${(model.url)!}">
                                </div>
                                <div class="dz-details">
                                    <div class="dz-filename">
                                        <span data-dz-name="">${(model.url)!}</span>
                                    </div>
                                </div>
                                <a class="dz-remove" href="javascript:undefined;" data-dz-remove="">删除文件</a>
                                <input type="hidden" name="avatar" value="${(model.url)!}">
                            </div>
				            </#if>
                        </div>
                    </div>
                </div>
		    	<div class="group" style="margin:200px 0 0 50px">
						<input type="submit" class="btn btn-success" form="photo-form" value="提交">
						<button type="reset" class="btn btn-reset btn-default">取消</button>
				</div>
				</form>
    	</div>
    </div>
</#macro>
<#macro overrideScript> 
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/select2.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/dropzone.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/switchery/switchery.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="${contextPath}/templates/default/js/release.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$(".btn-reset").click(function() {
		location.href = "${contextPath}/cameraman.html";
	});
	$("select").select2({
		ajax: {
			url: "${contextPath}/admin/category.json",
			cache: "true",
		    data: function (params) {
	        	return {
	          		page: params.page
	        	};
	      	},
			processResults: function(data) {
				var options = [];
				$(data.content).each(function() {
					options.push({
						id: this.id,
						text: this.name
					});
				});
				return {
					results: options,
					pagination: {
						more: !data.last
					}
				}
			}
		},
		minimumResultsForSearch: Infinity
	});
	
	Dropzone.options.upload = {
		url: "${contextPath}/upload.json",
		maxFilesize: 5,
		addRemoveLinks: true,
		createImageThumbnails: false,
		acceptedFiles: "image/*",
		dictDefaultMessage: "拖放文件到此上传",
		dictRemoveFile: "删除文件",
		dictCancelUpload: "取消上传",
		dictRemoveFileConfirmation: "真的要删除这个文件吗？",
		init: function() {
			var myDropzone = this;
			myDropzone.on("success", function(file, data, e) {
				var exists = false;
				$(".upload img").each(function() {
					if ($(this).attr("src") == data.url) {
						toastr.error('这张图片已经上传过了哟。');
						exists = true;
					}
				});
				if (exists) {
					myDropzone.removeFile(file);
					return;
				}
				$(file.previewElement).removeClass("dz-file-preview").addClass("dz-image-preview").find("img").attr("src", data.url).attr("alt", data.file_name);
				$(file.previewElement).find(".dz-filename>span").text(data.url);
				$(file.previewElement).append("<input type=\"hidden\" name=\"url\" value=\"" + data.url + "\">");
			});
		}
	};
	$(".dz-remove").click(function() {
		if(confirm(Dropzone.options.upload.dictRemoveFileConfirmation)) {
			$(this).parent().remove();
		}
	});
	$(".upload").on("click", ".dz-preview", function() {
		var src = $(this).find("img").attr("src");
		switch (imagePickerName) {
		case "cover":
			$(".form-control[name=cover]").val(src);
			$(".image-picker").hide();
			break;
		case "content": 
			var t = $("textarea[name=content]").data("trumbowyg");
			/* showImagePicker(src, t); */
// 			console.log(t.$box);
			$("input[name=text]", t.$box).val(src);
			break;
		}
	}).on("click", ".dz-filename>span", function(e) {
		e.stopPropagation();
	});
	$(".js-switch-green").each(function() {
		new Switchery(this, {
			color : '#2dcb73'
		});
	});

});
</script>
 </#macro>
<@layout title=overrideTitle style=overrideStyle content=overrideContent script=overrideScript nav=overrideNav>
</@layout>