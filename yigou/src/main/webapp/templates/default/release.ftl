<#include "layout.ftl">

<#macro overrideTitle>
    发布作品
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/admin/css/select2.min.css">
	<link rel="stylesheet" href="${contextPath}/templates/default/admin/css/dropzone.min.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/css/release.css">
    <style type="text/css">
    .touch .select2-results li:hover {
        background-color: #5897FB !important;
    }
    .select2-container--default .select2-selection--single {
        border-radius: 2px;
        border: 1px solid #E8ECF3;
        line-height: 34px;
        height: 34px;
    }
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        line-height: 34px;
    }
    .select2-dropdown, .select2-container--default .select2-search--dropdown .select2-search__field {
        border: 1px solid #E8ECF3;
        border-radius: 2px;
    }
</style>
</#macro>
    
<#macro overrideContent> 

    <div class="main">
    	<div class="container">
    	    <form class="form-inline" id="photo-form" role="form" action="${contextPath}/photo.html?redirect=release.html"  method="POST">
            <div class="album">
                <h2>选择相册</h2>
                上传至:
<!--                 <select id="album-select"> -->
<!--                     <option></option> -->
<!--                 </select> -->
			   <div class="form-inline">
                    <div class="form-group">
		                <select class="form-control" id="album" name="album" form="photo-form" data-placeholder="请选择相册"  style="width: 100%">
		                          <option value="${(model.id)!}">${(model.name)!}</option>
		                </select>
                    </div>
                <a type="submit" id="addAlbum">创建相册</a>
                </div>    
            </div>
            <div class="photo">
                <div class="queueList">
                    <div class="group photo-up">
	                  <label for = "upload">上传作品</label>
	                  <div>
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
	                                <input type="hidden" name="url"  form="photo-form" value="${(model.url)!}">
	                            </div>
					            </#if>
	                        </div>
	                    </div>
	                </div>
                </div>
            </div>
            <div class="group group-press">
					<input type="submit" class="btn btn-success" form="photo-form" value="提交">
					<button type="reset" class="btn btn-reset btn-default">取消</button>
			</div>
            </form>
             <form role="form" id="album-form" action="${contextPath}/album.html?redirect=release.html" method="POST">
			 <div class="addAlbumBox">
                <div class="boxHeader">提示</div>
                <i class="close">X</i>
                <div class="content">
                        <ul class="formul">
                            <li>
                                <div class="formTitle">相册名:</div>
                                <div class="formDiv">
                                    <input type="text" name="title" class="inputText" form="album-form"></input>
                                </div>
                            </li>
                            <li>
                                <div class="formTitle">描述:</div>
                                <div class="formDiv">
                                    <textarea name="brief" class="inputTextarea" form="album-form"></textarea>
                                </div>
                            </li>
                            <li>
                                <div class="formTitle">相册分类:</div>
                                <div class="formDiv">
                                    <select class="inputselect" id="n3" name="category" form="album-form" data-placeholder="请选择相册"  style="width: 100%">
					                          <option value="${(model.id)!}">${(model.name)!}</option>
					                </select>
<!--                                     <select class="inputselect" id="n3" name="category"> -->
<!--                                         <option value="1">人物摄影</option> -->
<!--                                         <option value="2">风光摄影</option> -->
<!--                                         <option value="3">静物摄影</option> -->
<!--                                         <option value="4">婚纱摄影</option> -->
<!--                                         <option value="5">活动庆典</option> -->
<!--                                         <option value="6">其它</option> -->
<!--                                     </select> -->
                                </div>
                            </li>
                          <input type = "submit"  class = "ui-submit btn" form="album-form" value="确定"></input>
<!--                     <a class="ui-submit btn">确定</a> -->
                         <a class="ui-cancel btn_cancel">取消</a>
                        </ul>
                </div>
            </div>
            </form>
    	</div>
    </div>
</#macro>

<#macro overrideScript> 
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/select2.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/dropzone.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/switchery/switchery.js"></script>
<script src="${contextPath}/templates/default/js/release.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
	$(".btn-reset").click(function() {
		location.href = "${contextPath}/cameraman.html";
	});
	$("#album").select2({
		ajax: {
			url: "${contextPath}/album.json",
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
						text: this.title
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
	
	$("#n3").select2({
		ajax: {
			url: "${contextPath}/category.json",
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