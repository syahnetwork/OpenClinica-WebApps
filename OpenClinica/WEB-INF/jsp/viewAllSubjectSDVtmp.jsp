<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="org.akaza.openclinica.i18n.words" var="resword"/>
<fmt:setBundle basename="org.akaza.openclinica.i18n.format" var="resformat"/>
<fmt:setBundle basename="org.akaza.openclinica.i18n.notes" var="restext"/>
<fmt:setBundle basename="org.akaza.openclinica.i18n.page_messages" var="resmessages"/>

<jsp:include page="include/managestudy_top_pages.jsp"/>

<%--adam--%>
<table border="0" cellpadding="0" cellspacing="0">

    <tbody>
    <tr>
        <td valign="top">


            <link rel="stylesheet" href="includes/css/icomoon-style.css">
            <table border="0" cellpadding="0" cellspacing="0" width="160">

                <!-- Side alert, onlu show the content after user logs in -->


                <tbody>
                <tr id="sidebar_Alerts_open" style="display: none">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Alerts_open'); leftnavExpand('sidebar_Alerts_closed');"><span
                                class="icon icon-caret-down gray"></span></a>

                        Alerts &amp; Messages

                        <div class="sidebar_tab_content">

                            <i>

                            </i>

                        </div>

                    </td>
                </tr>
                <tr id="sidebar_Alerts_closed" style="display: all">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Alerts_open'); leftnavExpand('sidebar_Alerts_closed');"><span
                                class="icon icon-caret-right gray"></span></a>

                        Alerts &amp; Messages

                    </td>
                </tr>


                <style type="text/css">

                    .graph {
                        position: relative; /* IE is dumb */
                        width: 100px;
                        border: 1px solid #3876C1;
                        padding: 2px;
                    }

                    .graph .bar {
                        display: block;
                        position: relative;
                        background: #E8D28C;
                        text-align: center;
                        color: #333;
                        height: 1em;
                        line-height: 1em;
                    }

                    .graph .bar span {
                        position: absolute;
                        left: 1em;
                    }
                </style>

                <!-- then instructions-->


                <script type="text/javascript">
                    window.onload = function () {
                        document.getElementById("btn").focus();
                    };
                </script>

                <tr id="sidebar_Instructions_open" style="display: all">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Instructions_open'); leftnavExpand('sidebar_Instructions_closed');"><span
                                class="icon icon-caret-down gray"></span></a>

                        Instructions

                        <div class="sidebar_tab_content">
                            If needed you may change the study/site or request access to a new study with a different
                            role.
                        </div>

                    </td>

                </tr>
                <tr id="sidebar_Instructions_closed" style="display: none">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Instructions_open'); leftnavExpand('sidebar_Instructions_closed');"><span
                                class="icon icon-caret-right gray"></span></a>

                        Instructions

                    </td>
                </tr>


                <!-- Sidebar Contents after alert-->


                <tr id="sidebar_Info_open" style="">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Info_open'); leftnavExpand('sidebar_Info_closed');">
                            <span class="icon icon-caret-down gray"></span>
                        </a>

                        Other Info

                        <div class="sidebar_tab_content">
			<span style="color: #789EC5">

    <b>Study:</b>&nbsp;
     <a href="/OpenClinica/ViewStudy?id=4&amp;viewFull=yes">
    teststudy</a>
    <br><br>
    <b>Status:</b>&nbsp;
    available
    <br><br>



    <b>Start Date:</b>&nbsp;
       07-Feb-2020
    <br><br>

    <b>End Date:</b>&nbsp;
       28-Feb-2020
        <br><br>


 <script language="JavaScript">
       <!--
       function leftnavExpand(strLeftNavRowElementName) {

           var objLeftNavRowElement;

           objLeftNavRowElement = MM_findObj(strLeftNavRowElementName);
           if (objLeftNavRowElement != null) {
               if (objLeftNavRowElement.style) {
                   objLeftNavRowElement = objLeftNavRowElement.style;
               }
               objLeftNavRowElement.display = (objLeftNavRowElement.display == "none") ? "" : "none";
           }
       }

       //-->
     </script>

   	</span></div>
                    </td>
                </tr>

                <tr id="sidebar_Info_closed" style="display: none;">
                    <td class="sidebar_tab" style="border-bottom: 1px solid #999;">
                        <a href="javascript:leftnavExpand('sidebar_Info_open'); leftnavExpand('sidebar_Info_closed');"><span
                                class="icon icon-caret-right gray"></span></a>
                        Info
                    </td>
                </tr>
                <tr id="sidebar_Links_open">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Links_open'); leftnavExpand('sidebar_Links_closed');">
                            <span class="icon icon-caret-down gray"></span>
                        </a>
                        Quick Links
                        <div class="sidebar_tab_content">
                        </div>
                    </td>
                </tr>


                <tr id="sidebar_Links_closed" style="display: none;">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_Links_open'); leftnavExpand('sidebar_Links_closed');"><span
                                class="icon icon-caret-right gray"></span></a>
                        Quick Links
                    </td>
                </tr>


                <tr id="sidebar_IconKey_open">
                    <td class="sidebar_tab">

                        <a href="javascript:leftnavExpand('sidebar_IconKey_open'); leftnavExpand('sidebar_IconKey_closed');"><span
                                class="icon icon-caret-down gray"></span></a>

                        Icon Key<br clear="all"><br>

                        <table border="0" cellpadding="4" cellspacing="0" width="100%">
                            <tbody>
                            <tr>
                                <td>Statuses</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-doc"></span></td>
                                <td>Not Started</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-clock"></span></td>
                                <td>Not Scheduled</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-clock2"></span></td>
                                <td>Scheduled</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-pencil-squared orange"></span></td>
                                <td>Data Entry Started</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-stop-circle red"></span></td>
                                <td>Stopped</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-redo"></span></td>
                                <td>Skipped</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-checkbox-checked green"></span></td>
                                <td>Completed</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-icon-sign green"></span></td>
                                <td>Signed</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-lock"></span></td>
                                <td>Locked</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<span class="icon icon-file-excel red"></span></td>
                                <td>Invalid</td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>

                <tr id="sidebar_IconKey_closed" style="display: none">
                    <td class="sidebar_tab">
                        <a href="javascript:leftnavExpand('sidebar_IconKey_open'); leftnavExpand('sidebar_IconKey_closed');"><span
                                class="icon icon-caret-right gray"></span></a>
                        Icon Key
                    </td>
                </tr>
                </tbody>
            </table>
            <!-- End Sidebar Contents -->

            <br><img src="images/spacer.gif" width="120" height="1">
        </td>

        <td class="aka_revised_content" valign="top">
            <script type="text/javascript">
                function onInvokeAction(id, action) {
                    if (id.indexOf('studySiteStatistics') == -1) {
                        setExportToLimit(id, '');
                    }
                    if (id.indexOf('subjectEventStatusStatistics') == -1) {
                        setExportToLimit(id, '');
                    }
                    if (id.indexOf('studySubjectStatusStatistics') == -1) {
                        setExportToLimit(id, '');
                    }
                    createHiddenInputFieldsForLimitAndSubmit(id);
                }
            </script>
            <%--adam--%>

            <link rel="stylesheet" href="../includes/jmesa/jmesa.css" type="text/css">
            <script type="text/JavaScript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/jmesa/jquery.min.js"></script>
            <script type="text/JavaScript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/jmesa/jmesa.js"></script>
            <script type="text/JavaScript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/jmesa/jquery.jmesa.js"></script>
            <script type="text/javascript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/jmesa/jquery-migrate-1.4.1.js"></script>
            <script type="text/javascript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/jmesa/jquery.blockUI.js"></script>
            <script type="text/javascript" language="JavaScript"
                    src="${pageContext.request.contextPath}/includes/permissionTagAccess.js"></script>


            <%-- view all subjects starts here --%>
            <script type="text/javascript">

                function onInvokeAction(id, action) {
                    setExportToLimit(id, '');
                    createHiddenInputFieldsForLimitAndSubmit(id);
                }

                function onInvokeExportAction(id) {
                    var parameterString = createParameterStringForLimit(id);
                    //location.href = '${pageContext.request.contextPath}/ViewCRF?module=manage&crfId=' + '${crf.id}&' + parameterString;
                }
            </script>

            </div>

            <div id="box" class="dialog">
    <span id="mbm">
        <br>
        <c:if test="${(!study.status.pending)}">
            <fmt:message key="study_frozen_locked_note" bundle="${restext}"/>
        </c:if>
        
        <c:if test="${(study.status.pending)}">
            <fmt:message key="study_design_note" bundle="${restext}"/>
        </c:if>   
    </span><br>
                <div style="text-align:center; width:100%;">
                    <button id="btn" onclick="hm('box');">OK</button>
                </div>
            </div>

            <script type="text/javascript">
                window.onload = function () {
                    document.getElementById("btn").focus();
                };
            </script>

            <h1><span class="title_manage">
<fmt:message key="sdv_sdv_for" bundle="${resword}"/> <c:out value="${study.name}"/>
    <a href="javascript:openDocWindow('https://docs.openclinica.com/3.1/openclinica-user-guide/monitor-and-manage-data')">
        <span class=""></span></a>
</span></h1><br/>

            <jsp:useBean scope='session' id='sSdvRestore' class='java.lang.String'/>
            <c:set var="restore" value="true"/>
            <c:if test="${sSdvRestore=='false'}">
                <c:set var="restore" value="false"/>
            </c:if>

            <script type="text/javascript">
                function setRedirection(formObj) {
                    var params = new URLSearchParams(window.location.search);
                    params.delete('redirection');
                    if (!params.has('studyId'))
                        params.append('studyId', '${study.studyId}');
                    formObj.redirection.value = '${pageContext.request.contextPath}/pages/viewAllSubjectSDVtmp?' + params.toString();
                }

                function prompt(formObj, crfId) {
                    var bool = confirm(
                        "<fmt:message key="uncheck_sdv" bundle="${resmessages}"/>");
                    if (bool) {
                        setRedirection(formObj);
                        formObj.action = '${pageContext.request.contextPath}/pages/handleSDVRemove';
                        formObj.crfId.value = crfId;
                        formObj.submit();
                    }
                }

                function submitSdv(formObj, crfId) {
                    setRedirection(formObj);
                    formObj.action = '${pageContext.request.contextPath}/pages/handleSDVGet';
                    formObj.crfId.value = crfId;
                    formObj.submit();
                }
            </script>
            <div id="subjectSDV">
                <form name='sdvForm' action="${pageContext.request.contextPath}/pages/viewAllSubjectSDVtmp">
                    <input type="hidden" name="studyId" value="${param.studyId}">
                    <input type="hidden" name=imagePathPrefix value="../">
                    <%--This value will be set by an onclick handler associated with an SDV button --%>
                    <input type="hidden" name="crfId" value="0">
                    <%-- the destination JSP page after removal or adding SDV for an eventCRF --%>
                    <input type="hidden" name="redirection"
                           value="viewAllSubjectSDVtmp?sdv_restore=true&studyId=${param.studyId}">
                    <%--<input type="hidden" name="decorator" value="mydecorator">--%>
                    ${sdvTableAttribute}
                    <br/>
                    <input type="submit" name="sdvAllFormSubmit" class="button_medium"
                           value="<fmt:message key="sdv_all_checked" bundle="${resword}"/>"
                           onclick="this.form.method='POST';this.form.action='${pageContext.request.contextPath}/pages/handleSDVPost';this.form.submit();"/>
                    <!--  <input type="submit" name="sdvAllFormCancel" class="button_medium" value="Cancel" onclick="this.form.action='${pageContext.request.contextPath}/pages/viewAllSubjectSDVtmp?sdv_restore=true&studyId=${param.studyId}';this.form.submit();"/> -->
                </form>
                <%-- <script type="text/javascript">hideCols('sdv',[2,3,6,7,11,12,13])</script> --%>

            </div>
            <%-- view all subjects ends here --%>

            <link rel="stylesheet" href="../includes/css/icomoon-style.css">

            <script>
                function store(callback) {
                    if (callback)
                        store.data = callback(store.data) || store.data;
                    if (!store.dirty) {
                        store.dirty = true;
                        setTimeout(function () {
                            sessionStorage.setItem(store.key, JSON.stringify(store.data));
                            if (
                                store.data.ocStatusHide !== 'oc-status-removed' ||
                                store.data.datatables.some(function (state) {
                                    return canReset(state)
                                }) ||
                                $('#studySubjectRecord.collapsed, #subjectEvents.collapsed, #commonEvents>.expanded').length
                            )
                                $('#reset-all-filters').removeClass('invisible');
                            else
                                $('#reset-all-filters').addClass('invisible');
                            store.dirty = false;
                        }, 1);
                    }
                }

                store.key = '${study.oc_oid}.SDVs';
                store.data = JSON.parse(sessionStorage.getItem(store.key)) || {
                    sdvChecks: {}
                };
                store.dirty = false;

                $('#sdv')
                    .on('change', 'input[type=checkbox]', function () {
                        var checkbox = $(this);
                        var name = checkbox.attr('name');
                        var checked = checkbox.is(':checked');
                        store(function (data) {
                            data.sdvChecks[name] = checked;
                        });
                    })
                    .find('input[type=checkbox]').each(function () {
                    var checkbox = $(this);
                    var name = checkbox.attr('name');
                    var checked = store.data.sdvChecks[name];
                    if (checked)
                        checkbox.attr('checked', 'checked');
                    else
                        checkbox.removeAttr('checked');
                });
            </script>

            <link rel="stylesheet" type="text/css"
                  href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
            <script type="text/JavaScript" language="JavaScript"
                    src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
            <script type="text/JavaScript" language="JavaScript"
                    src="https://cdn.datatables.net/plug-ins/1.10.16/sorting/datetime-moment.js"></script>
            <script type="text/JavaScript" language="JavaScript"
                    src="https://cdn.datatables.net/plug-ins/1.10.16/api/fnSortNeutral.js"></script>

            <%--//adam--%>
            <style>
                #itemsdv {
                    position: relative;
                    border: none;
                }

                #sdv-close-popup {
                    float: right;
                    position: absolute;
                    right: -25px;
                    top: -25px;
                }

                #sdv-close-popup > .icon-cancel::before {
                    border-radius: 50px;
                    color: black;
                }

                #sdv-show-type {
                    float: right;
                    padding: 10px;
                }

                #sdv-items {
                    clear: both;
                }

                #sdv-details1, #sdv-details2 {
                    width: 50%;
                    height: 100%;
                    float: left;
                    text-align: left;
                    background: lightgrey;
                    padding: 10px 10px 10px 70px;
                }

                #sdv-items_wrapper {
                    margin: 0 10px 10px;
                }

                #sdv-items th {
                    font-weight: normal;
                    background-color: lightgrey;
                }

                .blockOverlay {
                    cursor: default !important;
                }

                .blockUI.blockMsg.blockPage {
                    padding: 0 !important;
                }

                #clear-filter {
                    float: left;
                    margin: 5px 10px;
                }

                /*adam*/
                #sidebar_Instructions_open {
                    display: none;
                }

                #sidebar_Info_open {
                    display: table-row;
                }
            </style>

            <script>
                $(document).ready(function () {
                    $('#sidebar_Info_closed').css('display', 'none');
                    $('#sidebar_Info_open').removeAttr('style');
                    $('#sidebar_Links_closed').css('display', 'none');
                    $('#sidebar_Links_open').removeAttr('style');
                });
            </script>

            <div id="itemsdv" style="display:none;">
                <a href="javascript:jQuery.unblockUI()" id="sdv-close-popup">
                    <span class="icon icon-cancel"></span>
                </a>
                <div>
                    <div id="sdv-details1">
                        <p>Participant ID : <b id="participantId"></b></p>
                        <p>Site Name : <b id="siteName"></b></p>
                        <p>Form Name : <b id="formName"></b></p>
                        <p>Form Status : <b id="formStatus"></b></p>
                    </div>
                    <div id="sdv-details2">
                        <p>Event Name : <b id="eventName"></b></p>
                        <p>Event Start Date : <b id="eventStartDate"></b></p>
                        <p>SDV Requirement : <b id="sdvRequirement"></b></p>
                        <p>SDV Status : <b id="sdvStatus"></b></p>
                    </div>
                </div>

                <div id="sdv-show-type">
                    <label>
                        <input name="radio" type="radio" autofocus="autofocus" class="sdv-show-type" value="n">
                        Show all items
                    </label>
                    <a href="">|</a>
                    <label>
                        <input name="radio" type="radio" class="sdv-show-type" value="y"> Show only changed
                        since last Verified
                    </label>
                </div>

                <a id="clear-filter" href="javascript:clearFilter()">Clear Filter</a>
                <table id='sdv-items' style="width:100%">
                    <thead>
                    <tr>
                        <th>Brief Description (Item Name)</th>
                        <th>Value</th>
                        <th>Last Verified (UTC)</th>
                        <th>Open Queries</th>
                        <th>Last Modified (UTC)</th>
                        <th>Modified By</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody id="sdvItems">
                    </tbody>
                </table>
            </div>

            <script>
                var datatable = jQuery('#sdv-items').DataTable({
                    dom: 't',
                    columns: [
                        {data: 'briefDescriptionItemName'},
                        {data: 'value'},
                        {data: 'lastVerifiedDate'},
                        {data: 'openQueriesCount'},
                        {data: 'lastModifiedDate'},
                        {data: 'lastModifiedUserName'},
                        {data: 'actions'}
                    ]
                });
                datatable.order([]);

                function clearFilter() {
                    jQuery('#sdv-items').dataTable().fnSortNeutral();
                }

                function translate(str) {
                    var trans = {
                        '100percent_required': '100% Required'
                    };
                    return trans[str] || str;
                }

                var url = '';

                function popupSdv(item) {
                    var data = $(item).data();

                    url = 'auth/api/sdv/studies/' + data.studyOid + '/events/' + data.eventOid + '/occurrences/1/forms/' + data.formOid + '/participants/' + data.participantId + '/sdvItems?changedAfterSdvOnlyFilter=';
                    $.get(url, function (data) {
                        $('#participantId').text(data.participantId);
                        if (data.repeatingEvent) {
                            $('#eventName').text(data.eventName + '(' + data.eventOrdinal + ')');
                        } else {
                            $('#eventName').text(data.eventName);
                        }
                        $('#formName').text(data.formName);
                        $('#sdvRequirement').text(translate(data.sdvRequirement));
                        $('#siteName').text(data.siteName);
                        $('#eventStartDate').text(data.eventStartDate);
                        $('#formStatus').text(data.formStatus);
                        $('#sdvStatus').text(data.sdvStatus);

                        var tbl = jQuery('#sdv-items').DataTable();
                        tbl.rows.add(data.sdvItems.map(function (item) {
                            console.log(item);
                            item.briefDescriptionItemName = item.briefDescription + ' (' + item.name + ')';
                            if (item.repeatingGroup) {
                                item.briefDescriptionItemName += ' ' + item.ordinal;
                            }
                            item.lastVerifiedDate = data.lastVerifiedDate;
                            item.actions = '';
                            return item;
                        }));
                        tbl.draw();
                    });

                    jQuery.blockUI({message: jQuery('#itemsdv'), css: {cursor: 'default', left: '75px', top: '100px'}});
                    var cols = $(item).closest('tr').children();
                }
            </script>

            <script>
                var showFilter = "";

                $(document).ready(function () {
                    $('input[type=radio]').on('click', function () {
                        showFilter = $(this).attr("value");
                        var urlAjax = url + showFilter;
                        $.ajax({
                            url: urlAjax,
                            method: "GET",
                            dataType: "json",
                            success: function (result) {
                                jQuery('#sdv-items').DataTable().clear()
                                    .rows.add(
                                    result.sdvItems.map(function (item) {
                                        item.briefDescriptionItemName = item.briefDescription;
                                        item.lastVerifiedDate = result.lastVerifiedDate;
                                        item.actions = "";
                                        return item;
                                    })
                                ).draw();
                            }
                        })
                    })
                });
            </script>