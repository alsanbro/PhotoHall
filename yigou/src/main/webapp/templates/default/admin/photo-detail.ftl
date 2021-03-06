<#include "layout.ftl">

<#macro overrideTitle>
	<#if model??>
	    编辑用户 -
	<#else>
		添加用户 -
	</#if>
</#macro>

<#macro overrideStyle>
<link rel="stylesheet" href="${contextPath}/templates/default/admin/css/select2.min.css">
<link rel="stylesheet" href="${contextPath}/templates/default/admin/css/trumbowyg.min.css">
<link rel="stylesheet" href="${contextPath}/templates/default/admin/css/dropzone.min.css">
<style type="text/css">
    .touch .select2-results li:hover {
        background-color: #5897FB !important;
    }
    .trumbowyg-box {
        width: 100%;
        margin: 0;
        border-radius: 2px;
    }
    .trumbowyg-button-pane {
        background: none;
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
    .select2-dropdown, .select2-container--default .select2-search--dropdown .select2-search__field, .dropzone {
        border: 1px solid #E8ECF3;
        border-radius: 2px;
    }
</style>
</#macro>

<#macro overrideContent>
<div class="row mg-b">
    <div class="col-xs-12">
        <h3 class="no-margin">
			<#if model??>
				编辑照片
			<#else>
				添加照片
			</#if>
		</h3>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <section class="panel">
            <ul class="nav nav-tabs">
                <li class="active"><a href="javascript:void(0)">照片信息</a></li>
            </ul>
            <div class="panel-body">
                <form class="form-horizontal" action="../photo<#if model??>/${model.id!}</#if>.html<#if model??>?_method=PUT</#if>" method="post">
                    <#if model??>
                        <input type="hidden" name="id" value="${(model.id)!}">
                    </#if>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">作品标题</label>
                        <div class="col-sm-10">
                            <input class="form-control" name="title" type="text" placeholder="请输入标题"  value="${(model.title)!}">
                            <label class="error-information"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">相册</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="category" id="category" data-placeholder="请选择相册"  style="width: 100%">
                                <option value="${(model.category.id)!}">${(model.category.name)!}</option>
                            </select>
                            <label class="error-information"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">图片</label>
                        <div class="col-sm-10">
                            <div class="upload dropzone <#if (model.url)??>dz-started</#if>" id="upload">
								<#if (model.url)??>
                                <div
                                        class="dz-preview dz-processing dz-success dz-complete dz-image-preview">
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
                    <div class="form-group">
                        <label class="col-sm-2 control-label">拍摄地点</label>
                        <div class="col-sm-10">
                            <input class="form-control" name="place" type="text" placeholder="请输拍摄地点" value="${(model.place)!}">
                            <label class="error-information"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">拍摄时间</label>
                        <div class="col-sm-10">
                            <input class="form-control" name="time" type="text" placeholder="请输入拍摄时间" value="${(model.time)!}">
                            <label class="error-information"></label>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-sm-2 control-label">拍摄器材</label>
                        <div class="col-sm-10">
                            <input class="form-control" name="tools" type="text" placeholder="请输入拍摄时间" value="${(model.tools)!}">
                            <label class="error-information"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">提交</button>
                            <button type="reset" class="btn btn-reset btn-default">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>
</#macro>

<#macro overrideScript>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/select2.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/dropzone.min.js"></script>
<script type="text/javascript" src="${contextPath}/templates/default/admin/js/switchery/switchery.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $(".btn-reset").click(function() {
            location.href = "${contextPath}/admin/photo.html";
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
            url: "${contextPath}/admin/upload.json",
            maxFilesize: 2,
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
        //表单验证
//         var username = $("input[name='username']");
//         var group = $("select[name='group']");
//         var phone = $("input[name='phone']");
//         var email = $("input[name='email']");
//         var validateFunc = function(dom){
//             var validator = new Validator();
//             validator.add(username,[
//                 {strategy:'isNotEmpty',errorMsg:'用户名不能为空!'},
//             ]);
//             validator.add(group,[
//                 {strategy:'isNotEmpty',errorMsg:'用户组不能为空!'},
//             ]);
//             validator.add(phone,[
//                 {strategy:'mobileFormat',errorMsg:'不是一个有效的号码格式!'}
//             ]);
//             validator.add(email,[
//                 {strategy:'isMail',errorMsg:'不是一个有效的邮箱地址!'}
//             ]);
//             var error= validator.start(dom);
//             return error;
//         };

//         $('input').blur(function(){
//             validateFunc(this);
//         })

//         $("select[name='group']").on('select2:close', (function(){
//             validateFunc(this);
//         }))

//         $("form").submit(function(e) {
//             var error = validateFunc();
//             if(error){
//                 return true;
//             }
//             e.preventDefault();
//             return false;
//         });
    });
</script>
</#macro>

<#macro overrideNav>
<ol class="breadcrumb no-margin">
    <li><a href="${contextPath}/admin/index.html">首页</a></li>
    <li><a href="${contextPath}/admin/user.html">用户</a></li>
    <li class="active">
		<#if model??>
            编辑用户
		<#else>
            添加用户
		</#if>
	</li>
</ol>
</#macro>

<@layout title=overrideTitle style=overrideStyle content=overrideContent script=overrideScript nav=overrideNav>
</@layout>