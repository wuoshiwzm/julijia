(function(){var e,t,s,i,r,n={}.hasOwnProperty,l=function(e,t){for(var s in t){if(n.call(t,s))e[s]=t[s]}function i(){this.constructor=e}i.prototype=t.prototype;e.prototype=new i;e.__super__=t.prototype;return e};i=function(){function t(){this.options_index=0;this.parsed=[]}t.prototype.add_node=function(e){if(e.nodeName.toUpperCase()==="OPTGROUP"){return this.add_group(e)}else{return this.add_option(e)}};t.prototype.add_group=function(e){var t,s,i,r,n,l;t=this.parsed.length;this.parsed.push({array_index:t,group:true,label:this.escapeExpression(e.label),title:e.title?e.title:void 0,children:0,disabled:e.disabled,classes:e.className});n=e.childNodes;l=[];for(i=0,r=n.length;i<r;i++){s=n[i];l.push(this.add_option(s,t,e.disabled))}return l};t.prototype.add_option=function(t,s,i){if(t.nodeName.toUpperCase()==="OPTION"){if(t.text!==""){if(s!=null){this.parsed[s].children+=1}var r=t.text;if(e.isFunction(e.toPinyin)){r=new Array;r[0]=e.trim(t.text);r[1]=e.toPinyin(e.trim(t.text),false);r[2]=e.toPinyin(e.trim(t.text),true)}this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,value:t.value,text:t.text,html:t.innerHTML,title:t.title?t.title:void 0,selected:t.selected,disabled:i===true?i:t.disabled,group_array_index:s,group_label:s!=null?this.parsed[s].label:null,classes:t.className,style:t.style.cssText,search_data:r})}else{this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,empty:true})}return this.options_index+=1}};t.prototype.escapeExpression=function(e){var t,s;if(e==null||e===false){return""}if(!/[\&\<\>\"\'\`]/.test(e)){return e}t={"<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"};s=/&(?!\w+;)|[\<\>\"\'\`]/g;return e.replace(s,function(e){return t[e]||"&amp;"})};return t}();i.select_to_array=function(e){var t,s,r,n,l;s=new i;l=e.childNodes;for(r=0,n=l.length;r<n;r++){t=l[r];s.add_node(t)}return s.parsed};t=function(){function t(e,s){this.form_field=e;this.options=s!=null?s:{};if(!t.browser_is_supported()){return}this.is_multiple=this.form_field.multiple;this.set_default_text();this.set_default_values();this.setup();this.set_up_html();this.register_observers();this.on_ready()}t.prototype.set_default_values=function(){var e=this;this.click_test_action=function(t){return e.test_active_click(t)};this.activate_action=function(t){return e.activate_field(t)};this.active_field=false;this.mouse_on_container=false;this.results_showing=false;this.result_highlighted=null;this.allow_single_deselect=this.options.allow_single_deselect!=null&&this.form_field.options[0]!=null&&this.form_field.options[0].text===""?this.options.allow_single_deselect:false;this.disable_search_threshold=this.options.disable_search_threshold||0;this.disable_search=this.options.disable_search||false;this.enable_split_word_search=this.options.enable_split_word_search!=null?this.options.enable_split_word_search:true;this.group_search=this.options.group_search!=null?this.options.group_search:true;this.search_contains=this.options.search_contains||true;this.single_backstroke_delete=this.options.single_backstroke_delete!=null?this.options.single_backstroke_delete:true;this.max_selected_options=this.options.max_selected_options||Infinity;this.inherit_select_classes=this.options.inherit_select_classes||false;this.display_selected_options=this.options.display_selected_options!=null?this.options.display_selected_options:true;this.display_disabled_options=this.options.display_disabled_options!=null?this.options.display_disabled_options:true;return this.include_group_label_in_selected=this.options.include_group_label_in_selected||false};t.prototype.set_default_text=function(){if(this.form_field.getAttribute("data-placeholder")){this.default_text=this.form_field.getAttribute("data-placeholder")}else if(this.is_multiple){this.default_text=this.options.placeholder_text_multiple||this.options.placeholder_text||t.default_multiple_text}else{this.default_text=this.options.placeholder_text_single||this.options.placeholder_text||t.default_single_text}return this.results_none_found=this.form_field.getAttribute("data-no_results_text")||this.options.no_results_text||t.default_no_result_text};t.prototype.choice_label=function(e){if(this.include_group_label_in_selected&&e.group_label!=null){return"<b class='group-name'>"+e.group_label+"</b>"+e.html}else{return e.html}};t.prototype.mouse_enter=function(){return this.mouse_on_container=true};t.prototype.mouse_leave=function(){return this.mouse_on_container=false};t.prototype.input_focus=function(e){var t=this;if(this.is_multiple){if(!this.active_field){return setTimeout(function(){return t.container_mousedown()},50)}}else{if(!this.active_field){return this.activate_field()}}};t.prototype.input_blur=function(e){var t=this;if(!this.mouse_on_container){this.active_field=false;return setTimeout(function(){return t.blur_test()},100)}};t.prototype.results_option_build=function(e){var t,s,i,r,n;t="";n=this.results_data;for(i=0,r=n.length;i<r;i++){s=n[i];if(s.group){t+=this.result_add_group(s)}else{t+=this.result_add_option(s)}if(e!=null?e.first:void 0){if(s.selected&&this.is_multiple){this.choice_build(s)}else if(s.selected&&!this.is_multiple){this.single_set_selected_text(this.choice_label(s))}}}return t};t.prototype.result_add_option=function(e){var t,s;if(!e.search_match){return""}if(!this.include_option_in_results(e)){return""}t=[];if(!e.disabled&&!(e.selected&&this.is_multiple)){t.push("active-result")}if(e.disabled&&!(e.selected&&this.is_multiple)){t.push("disabled-result")}if(e.selected){t.push("result-selected")}if(e.group_array_index!=null){t.push("group-option")}if(e.classes!==""){t.push(e.classes)}s=document.createElement("li");s.className=t.join(" ");s.style.cssText=e.style;s.setAttribute("data-option-array-index",e.array_index);s.innerHTML=e.search_text==undefined?"&nbsp;":e.search_text;if(e.title){s.title=e.title}return this.outerHTML(s)};t.prototype.result_add_group=function(e){var t,s;if(!(e.search_match||e.group_match)){return""}if(!(e.active_options>0)){return""}t=[];t.push("group-result");if(e.classes){t.push(e.classes)}s=document.createElement("li");s.className=t.join(" ");s.innerHTML=e.search_text;if(e.title){s.title=e.title}return this.outerHTML(s)};t.prototype.results_update_field=function(){this.set_default_text();if(!this.is_multiple){this.results_reset_cleanup()}this.result_clear_highlight();this.results_build();if(this.results_showing){return this.winnow_results()}};t.prototype.reset_single_select_options=function(){var e,t,s,i,r;i=this.results_data;r=[];for(t=0,s=i.length;t<s;t++){e=i[t];if(e.selected){r.push(e.selected=false)}else{r.push(void 0)}}return r};t.prototype.results_toggle=function(){if(this.results_showing){return this.results_hide()}else{return this.results_show()}};t.prototype.results_search=function(e){if(this.results_showing){return this.winnow_results()}else{return this.results_show()}};t.prototype.winnow_results=function(){var t,s,i,r,n,l,o,h,a,c,_,u;this.no_results_clear();r=0;l=this.get_search_text();t=l.replace(/[-[\]{}()*+?.,\\^$|#\s]/g,"\\$&");a=new RegExp(t,"i");i=this.get_search_regex(t);u=this.results_data;for(c=0,_=u.length;c<_;c++){s=u[c];s.search_match=false;n=null;if(this.include_option_in_results(s)){if(s.group){s.group_match=false;s.active_options=0}if(s.group_array_index!=null&&this.results_data[s.group_array_index]){n=this.results_data[s.group_array_index];if(n.active_options===0&&n.search_match){r+=1}n.active_options+=1}s.search_text=s.group?s.label:s.html;if(!(s.group&&!this.group_search)){if(e.isArray(s.search_data)){for(var d=0;d<s.search_data.length;d++){s.search_match=this.search_string_match(s.search_data,i);if(s.search_match&&!s.group){break}}}else{s.search_match=this.search_string_match(s.search_data,i)}if(s.search_match&&!s.group){r+=1}if(s.search_match){if(!e.isFunction(e.toPinyin)&&l.length){o=s.search_text.search(a);h=s.search_text.substr(0,o+l.length)+"</em>"+s.search_text.substr(o+l.length);s.search_text=h.substr(0,o)+"<em>"+h.substr(o)}if(n!=null){n.group_match=true}}else if(s.group_array_index!=null&&this.results_data[s.group_array_index].search_match){s.search_match=true}}}}this.result_clear_highlight();if(r<1&&l.length){this.update_results_content("");return this.no_results(l)}else{this.update_results_content(this.results_option_build());return this.winnow_results_set_highlight()}};t.prototype.get_search_regex=function(e){var t;t=this.search_contains?"":"^";return new RegExp(t+e,"i")};t.prototype.search_string_match=function(e,t){var s,i,r,n;if(t.test(e)){return true}else if(this.enable_split_word_search&&e&&(e.indexOf(" ")>=0||e.indexOf("[")===0)){i=e.replace(/\[|\]/g,"").split(" ");if(i.length){for(r=0,n=i.length;r<n;r++){s=i[r];if(t.test(s)){return true}}}}};t.prototype.choices_count=function(){var e,t,s,i;if(this.selected_option_count!=null){return this.selected_option_count}this.selected_option_count=0;i=this.form_field.options;for(t=0,s=i.length;t<s;t++){e=i[t];if(e.selected){this.selected_option_count+=1}}return this.selected_option_count};t.prototype.choices_click=function(e){e.preventDefault();if(!(this.results_showing||this.is_disabled)){return this.results_show()}};t.prototype.keyup_checker=function(e){var t,s;t=(s=e.which)!=null?s:e.keyCode;this.search_field_scale();switch(t){case 8:if(this.is_multiple&&this.backstroke_length<1&&this.choices_count()>0){return this.keydown_backstroke()}else if(!this.pending_backstroke){this.result_clear_highlight();return this.results_search()}break;case 13:e.preventDefault();if(this.results_showing){return this.result_select(e)}break;case 27:if(this.results_showing){this.results_hide()}return true;case 9:case 38:case 40:case 16:case 91:case 17:break;default:return this.results_search()}};t.prototype.clipboard_event_checker=function(e){var t=this;return setTimeout(function(){return t.results_search()},50)};t.prototype.container_width=function(){if(this.options.width!=null){return this.options.width}else{return""+this.form_field.offsetWidth+"px"}};t.prototype.include_option_in_results=function(e){if(this.is_multiple&&(!this.display_selected_options&&e.selected)){return false}if(!this.display_disabled_options&&e.disabled){return false}return true};t.prototype.search_results_touchstart=function(e){this.touch_started=true;return this.search_results_mouseover(e)};t.prototype.search_results_touchmove=function(e){this.touch_started=false;return this.search_results_mouseout(e)};t.prototype.search_results_touchend=function(e){if(this.touch_started){return this.search_results_mouseup(e)}};t.prototype.outerHTML=function(e){var t;if(e.outerHTML){return e.outerHTML}t=document.createElement("div");t.appendChild(e);return t.innerHTML};t.browser_is_supported=function(){if(window.navigator.appName==="Microsoft Internet Explorer"){return document.documentMode>=8}if(/iP(od|hone)/i.test(window.navigator.userAgent)){return false}if(/Android/i.test(window.navigator.userAgent)){if(/Mobile/i.test(window.navigator.userAgent)){return false}}return true};t.default_multiple_text="";t.default_single_text="";t.default_no_result_text="未匹配到任何结果";return t}();e=jQuery;e.fn.extend({chosen:function(i){if(!t.browser_is_supported()){return this}return this.each(function(t){var r,n;r=e(this);n=r.data("chosen");if(i==="destroy"&&n instanceof s){n.destroy()}else if(!(n instanceof s)){r.data("chosen",new s(this,i))}})}});s=function(t){l(s,t);function s(){r=s.__super__.constructor.apply(this,arguments);return r}s.prototype.setup=function(){this.form_field_jq=e(this.form_field);this.current_selectedIndex=this.form_field.selectedIndex;return this.is_rtl=this.form_field_jq.hasClass("chosen-rtl")};s.prototype.set_up_html=function(){var t,s;t=["chosen-container"];t.push("chosen-container-"+(this.is_multiple?"multi":"single"));if(this.inherit_select_classes&&this.form_field.className){t.push(this.form_field.className)}if(this.is_rtl){t.push("chosen-rtl")}s={"class":t.join(" "),title:this.form_field.title};if(e(this.form_field).attr("data-width")=="auto"){s=e.extend(s,{style:"width: "+this.container_width()+";"})}else if(e(this.form_field).attr("data-width")){var i=parseInt(e(this.form_field).attr("data-width"));s=e.extend(s,{style:"width: "+i+"px;"})}if(this.form_field.id.length){s.id=this.form_field.id.replace(/[^\w]/g,"_")+"_chosen"}this.container=e("<div />",s);if(this.is_multiple){this.container.html('<ul class="chosen-choices"><li class="search-field"><input type="text" value="'+this.default_text+'" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chosen-drop"><ul class="chosen-results"></ul></div>')}else{this.container.html('<a class="chosen-single chosen-default" tabindex="-1"><span>'+this.default_text+'</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" /></div><ul class="chosen-results"></ul></div>')}if(e(this.form_field).attr("data-position")=="after"){this.form_field_jq.hide().after(this.container)}else{this.form_field_jq.hide().before(this.container)}this.dropdown=this.container.find("div.chosen-drop").first();this.search_field=this.container.find("input").first();this.search_results=this.container.find("ul.chosen-results").first();this.search_field_scale();this.search_no_results=this.container.find("li.no-results").first();if(this.is_multiple){this.search_choices=this.container.find("ul.chosen-choices").first();this.search_container=this.container.find("li.search-field").first()}else{this.search_container=this.container.find("div.chosen-search").first();this.selected_item=this.container.find(".chosen-single").first()}this.results_build();this.set_tab_index();return this.set_label_behavior()};s.prototype.on_ready=function(){return this.form_field_jq.trigger("chosen:ready",{chosen:this})};s.prototype.register_observers=function(){var e=this;this.container.bind("touchstart.chosen",function(t){e.container_mousedown(t);return t.preventDefault()});this.container.bind("touchend.chosen",function(t){e.container_mouseup(t);return t.preventDefault()});this.container.bind("mousedown.chosen",function(t){e.container_mousedown(t)});this.container.bind("mouseup.chosen",function(t){e.container_mouseup(t)});this.container.bind("mouseenter.chosen",function(t){e.mouse_enter(t)});this.container.bind("mouseleave.chosen",function(t){e.mouse_leave(t)});this.search_results.bind("mouseup.chosen",function(t){e.search_results_mouseup(t)});this.search_results.bind("mouseover.chosen",function(t){e.search_results_mouseover(t)});this.search_results.bind("mouseout.chosen",function(t){e.search_results_mouseout(t)});this.search_results.bind("mousewheel.chosen DOMMouseScroll.chosen",function(t){e.search_results_mousewheel(t)});this.search_results.bind("touchstart.chosen",function(t){e.search_results_touchstart(t)});this.search_results.bind("touchmove.chosen",function(t){e.search_results_touchmove(t)});this.search_results.bind("touchend.chosen",function(t){e.search_results_touchend(t)});this.form_field_jq.bind("chosen:updated.chosen",function(t){e.results_update_field(t)});this.form_field_jq.bind("chosen:activate.chosen",function(t){e.activate_field(t)});this.form_field_jq.bind("chosen:open.chosen",function(t){e.container_mousedown(t)});this.form_field_jq.bind("chosen:close.chosen",function(t){e.input_blur(t)});this.search_field.bind("blur.chosen",function(t){e.input_blur(t)});this.search_field.bind("keyup.chosen",function(t){e.keyup_checker(t)});this.search_field.bind("keydown.chosen",function(t){e.keydown_checker(t)});this.search_field.bind("focus.chosen",function(t){e.input_focus(t)});this.search_field.bind("cut.chosen",function(t){e.clipboard_event_checker(t)});this.search_field.bind("paste.chosen",function(t){e.clipboard_event_checker(t)});if(this.is_multiple){return this.search_choices.bind("click.chosen",function(t){e.choices_click(t)})}else{return this.container.bind("click.chosen",function(e){e.preventDefault()})}};s.prototype.destroy=function(){e(this.container[0].ownerDocument).unbind("click.chosen",this.click_test_action);if(this.search_field[0].tabIndex){this.form_field_jq[0].tabIndex=this.search_field[0].tabIndex}this.container.remove();this.form_field_jq.removeData("chosen");return this.form_field_jq.show()};s.prototype.search_field_disabled=function(){this.is_disabled=this.form_field_jq[0].disabled;if(this.is_disabled){this.container.addClass("chosen-disabled");this.search_field[0].disabled=true;if(!this.is_multiple){this.selected_item.unbind("focus.chosen",this.activate_action)}return this.close_field()}else{this.container.removeClass("chosen-disabled");this.search_field[0].disabled=false;if(!this.is_multiple){return this.selected_item.bind("focus.chosen",this.activate_action)}}};s.prototype.container_mousedown=function(t){if(!this.is_disabled){if(t&&t.type==="mousedown"&&!this.results_showing){t.preventDefault()}if(!(t!=null&&e(t.target).hasClass("search-choice-close"))){if(!this.active_field){if(this.is_multiple){this.search_field.val("")}e(this.container[0].ownerDocument).bind("click.chosen",this.click_test_action);this.results_show()}else if(!this.is_multiple&&t&&(e(t.target)[0]===this.selected_item[0]||e(t.target).parents("a.chosen-single").length)){t.preventDefault();this.results_toggle()}return this.activate_field()}}};s.prototype.container_mouseup=function(e){if(e.target.nodeName==="ABBR"&&!this.is_disabled){return this.results_reset(e)}};s.prototype.search_results_mousewheel=function(e){var t;if(e.originalEvent){t=e.originalEvent.deltaY||-e.originalEvent.wheelDelta||e.originalEvent.detail}if(t!=null){e.preventDefault();if(e.type==="DOMMouseScroll"){t=t*40}return this.search_results.scrollTop(t+this.search_results.scrollTop())}};s.prototype.blur_test=function(e){if(!this.active_field&&this.container.hasClass("chosen-container-active")){return this.close_field()}};s.prototype.close_field=function(){e(this.container[0].ownerDocument).unbind("click.chosen",this.click_test_action);this.active_field=false;this.results_hide();this.container.removeClass("chosen-container-active");this.clear_backstroke();this.show_search_field_default();return this.search_field_scale()};s.prototype.activate_field=function(){this.container.addClass("chosen-container-active");this.active_field=true;this.search_field.val(this.search_field.val());return this.search_field.focus()};s.prototype.test_active_click=function(t){var s;s=e(t.target).closest(".chosen-container");if(s.length&&this.container[0]===s[0]){return this.active_field=true}else{return this.close_field()}};s.prototype.results_build=function(){this.parsing=true;this.selected_option_count=null;this.results_data=i.select_to_array(this.form_field);if(this.is_multiple){this.search_choices.find("li.search-choice").remove()}else if(!this.is_multiple){this.single_set_selected_text();if(this.disable_search||this.form_field.options.length<=this.disable_search_threshold){this.search_field[0].readOnly=true;this.container.addClass("chosen-container-single-nosearch")}else{this.search_field[0].readOnly=false;this.container.removeClass("chosen-container-single-nosearch")}}this.update_results_content(this.results_option_build({first:true}));this.search_field_disabled();this.show_search_field_default();this.search_field_scale();return this.parsing=false};s.prototype.result_do_highlight=function(e){var t,s,i,r,n;if(e.length){this.result_clear_highlight();this.result_highlight=e;this.result_highlight.addClass("highlighted");i=parseInt(this.search_results.css("maxHeight"),10);n=this.search_results.scrollTop();r=i+n;s=this.result_highlight.position().top+this.search_results.scrollTop();t=s+this.result_highlight.outerHeight();if(t>=r){return this.search_results.scrollTop(t-i>0?t-i:0)}else if(s<n){return this.search_results.scrollTop(s)}}};s.prototype.result_clear_highlight=function(){if(this.result_highlight){this.result_highlight.removeClass("highlighted")}return this.result_highlight=null};s.prototype.results_show=function(){if(this.is_multiple&&this.max_selected_options<=this.choices_count()){this.form_field_jq.trigger("chosen:maxselected",{chosen:this});return false}this.container.addClass("chosen-with-drop");this.results_showing=true;this.search_field.focus();this.search_field.val(this.search_field.val());this.winnow_results();return this.form_field_jq.trigger("chosen:showing_dropdown",{chosen:this})};s.prototype.update_results_content=function(e){return this.search_results.html(e)};s.prototype.results_hide=function(){if(this.results_showing){this.result_clear_highlight();this.container.removeClass("chosen-with-drop");this.form_field_jq.trigger("chosen:hiding_dropdown",{chosen:this})}return this.results_showing=false};s.prototype.set_tab_index=function(e){var t;if(this.form_field.tabIndex){t=this.form_field.tabIndex;this.form_field.tabIndex=-1;return this.search_field[0].tabIndex=t}};s.prototype.set_label_behavior=function(){var t=this;this.form_field_label=this.form_field_jq.parents("label");if(!this.form_field_label.length&&this.form_field.id.length){this.form_field_label=e("label[for='"+this.form_field.id+"']")}if(this.form_field_label.length>0){return this.form_field_label.bind("click.chosen",function(e){if(t.is_multiple){return t.container_mousedown(e)}else{return t.activate_field()}})}};s.prototype.show_search_field_default=function(){if(this.is_multiple&&this.choices_count()<1&&!this.active_field){this.search_field.val(this.default_text);return this.search_field.addClass("default")}else{this.search_field.val("");return this.search_field.removeClass("default")}};s.prototype.search_results_mouseup=function(t){var s;s=e(t.target).hasClass("active-result")?e(t.target):e(t.target).parents(".active-result").first();if(s.length){this.result_highlight=s;this.result_select(t);return this.search_field.focus()}};s.prototype.search_results_mouseover=function(t){var s;s=e(t.target).hasClass("active-result")?e(t.target):e(t.target).parents(".active-result").first();if(s){return this.result_do_highlight(s)}};s.prototype.search_results_mouseout=function(t){if(e(t.target).hasClass("active-result"||e(t.target).parents(".active-result").first())){return this.result_clear_highlight()}};s.prototype.choice_build=function(t){var s,i,r=this;s=e("<li />",{"class":"search-choice"}).html("<span>"+this.choice_label(t)+"</span>");if(t.disabled){s.addClass("search-choice-disabled")}else{i=e("<a />",{"class":"search-choice-close","data-option-array-index":t.array_index});i.bind("click.chosen",function(e){return r.choice_destroy_link_click(e)});s.append(i)}return this.search_container.before(s)};s.prototype.choice_destroy_link_click=function(t){t.preventDefault();t.stopPropagation();if(!this.is_disabled){return this.choice_destroy(e(t.target))}};s.prototype.choice_destroy=function(e){if(this.result_deselect(e[0].getAttribute("data-option-array-index"))){this.show_search_field_default();if(this.is_multiple&&this.choices_count()>0&&this.search_field.val().length<1){this.results_hide()}e.parents("li").first().remove();return this.search_field_scale()}};s.prototype.results_reset=function(){this.reset_single_select_options();this.form_field.options[0].selected=true;this.single_set_selected_text();this.show_search_field_default();this.results_reset_cleanup();this.form_field_jq.trigger("change");if(this.active_field){return this.results_hide()}};s.prototype.results_reset_cleanup=function(){this.current_selectedIndex=this.form_field.selectedIndex;return this.selected_item.find("abbr").remove()};s.prototype.result_select=function(e){var t,s;if(this.result_highlight){t=this.result_highlight;this.result_clear_highlight();if(this.is_multiple&&this.max_selected_options<=this.choices_count()){this.form_field_jq.trigger("chosen:maxselected",{chosen:this});return false}if(this.is_multiple){t.removeClass("active-result")}else{this.reset_single_select_options()}t.addClass("result-selected");s=this.results_data[t[0].getAttribute("data-option-array-index")];s.selected=true;this.form_field.options[s.options_index].selected=true;this.selected_option_count=null;if(this.is_multiple){this.choice_build(s)}else{this.single_set_selected_text(this.choice_label(s))}if(!((e.metaKey||e.ctrlKey)&&this.is_multiple)){this.results_hide()}this.search_field.val("");if(this.is_multiple||this.form_field.selectedIndex!==this.current_selectedIndex){this.form_field_jq.trigger("change",{selected:this.form_field.options[s.options_index].value})}this.current_selectedIndex=this.form_field.selectedIndex;e.preventDefault();return this.search_field_scale()}};s.prototype.single_set_selected_text=function(e){if(e==null){e=this.default_text}if(e===this.default_text){this.selected_item.addClass("chosen-default")}else{this.single_deselect_control_build();this.selected_item.removeClass("chosen-default")}return this.selected_item.find("span").html(e)};s.prototype.result_deselect=function(e){var t;t=this.results_data[e];if(!this.form_field.options[t.options_index].disabled){t.selected=false;this.form_field.options[t.options_index].selected=false;this.selected_option_count=null;this.result_clear_highlight();if(this.results_showing){this.winnow_results()}this.form_field_jq.trigger("change",{deselected:this.form_field.options[t.options_index].value});this.search_field_scale();return true}else{return false}};s.prototype.single_deselect_control_build=function(){if(!this.allow_single_deselect){return}if(!this.selected_item.find("abbr").length){this.selected_item.find("span").first().after('<abbr class="search-choice-close"></abbr>')}return this.selected_item.addClass("chosen-single-with-deselect")};s.prototype.get_search_text=function(){return e("<div/>").text(this.search_field.val()).html()};s.prototype.winnow_results_set_highlight=function(){var e,t;t=!this.is_multiple?this.search_results.find(".result-selected.active-result"):[];e=t.length?t.first():this.search_results.find(".active-result").first();if(e!=null){return this.result_do_highlight(e)}};s.prototype.no_results=function(t){var s;s=e('<li class="no-results">'+this.results_none_found+' "<span></span>"</li>');s.find("span").first().html(t);this.search_results.append(s);return this.form_field_jq.trigger("chosen:no_results",{chosen:this})};s.prototype.no_results_clear=function(){return this.search_results.find(".no-results").remove()};s.prototype.keydown_arrow=function(){var e;if(this.results_showing&&this.result_highlight){e=this.result_highlight.nextAll("li.active-result").first();if(e){return this.result_do_highlight(e)}}else{return this.results_show()}};s.prototype.keyup_arrow=function(){var e;if(!this.results_showing&&!this.is_multiple){return this.results_show()}else if(this.result_highlight){e=this.result_highlight.prevAll("li.active-result");if(e.length){return this.result_do_highlight(e.first())}else{if(this.choices_count()>0){this.results_hide()}return this.result_clear_highlight()}}};s.prototype.keydown_backstroke=function(){var e;if(this.pending_backstroke){this.choice_destroy(this.pending_backstroke.find("a").first());return this.clear_backstroke()}else{e=this.search_container.siblings("li.search-choice").last();if(e.length&&!e.hasClass("search-choice-disabled")){this.pending_backstroke=e;if(this.single_backstroke_delete){return this.keydown_backstroke()}else{return this.pending_backstroke.addClass("search-choice-focus")}}}};s.prototype.clear_backstroke=function(){if(this.pending_backstroke){this.pending_backstroke.removeClass("search-choice-focus")}return this.pending_backstroke=null};s.prototype.keydown_checker=function(e){var t,s;t=(s=e.which)!=null?s:e.keyCode;this.search_field_scale();if(t!==8&&this.pending_backstroke){this.clear_backstroke()}switch(t){case 8:this.backstroke_length=this.search_field.val().length;break;case 9:if(this.results_showing&&!this.is_multiple){this.result_select(e)}this.mouse_on_container=false;break;case 13:if(this.results_showing){e.preventDefault()}break;case 32:if(this.disable_search){e.preventDefault()}break;case 38:e.preventDefault();this.keyup_arrow();break;case 40:e.preventDefault();this.keydown_arrow();break}};s.prototype.search_field_scale=function(){var t,s,i,r,n,l,o,h,a;if(this.is_multiple){i=0;o=0;n="position:absolute; left: -1000px; top: -1000px; display:none;";l=["font-size","font-style","font-weight","font-family","line-height","text-transform","letter-spacing"];for(h=0,a=l.length;h<a;h++){r=l[h];n+=r+":"+this.search_field.css(r)+";"}t=e("<div />",{style:n});t.text(this.search_field.val());e("body").append(t);o=t.width()+25;t.remove();s=this.container.outerWidth();if(o>s-10){o=s-10}return this.search_field.css({width:o+"px"})}};return s}(t)}).call(this);