<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学籍信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header img {
            height: 50px;
        }
        .header #xtmc {
            font-size: 24px;
            margin-left: 10px;
        }
        .container {
            padding: 20px;
        }
        .tabs {
            display: flex;
            border-bottom: 2px solid #007bff;
            margin-bottom: 20px;
        }
        .tabs a {
            padding: 10px 20px;
            cursor: pointer;
            text-decoration: none;
            color: #007bff;
            border-bottom: 2px solid transparent;
        }
        .tabs a.active {
            border-bottom: 2px solid #007bff;
            font-weight: bold;
        }
        .content-section {
            display: none;
        }
        .content-section.active {
            display: block;
        }
        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
        }
        .info-table th, .info-table td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        .info-table th {
            background-color: #f2f2f2;
        }
        .info-section {
            margin-bottom: 20px;
        }
    </style>
    <script>
        function showSection(sectionId) {
            var sections = document.querySelectorAll('.content-section');
            var tabs = document.querySelectorAll('.tabs a');
            sections.forEach(function(section) {
                section.classList.remove('active');
            });
            tabs.forEach(function(tab) {
                tab.classList.remove('active');
            });
            document.getElementById(sectionId).classList.add('active');
            document.querySelector('.tabs a[href="#' + sectionId + '"]').classList.add('active');
        }

        document.addEventListener('DOMContentLoaded', function() {
            showSection('basic-info'); // 默认显示基础信息
        });
    </script>
</head>
<body>
<div class="header">
    <div class="logo_1">
        <img src="/IMG/logo_jw_d.png" alt="学校Logo">
        <span id="xtmc">浙江工业大学正方教务管理系统</span>
    </div>
</div>
<div class="container">
    <div class="tabs">
        <a href="#basic-info" class="active" onclick="showSection('basic-info'); return false;">基础信息</a>
        <a href="#admission-info" onclick="showSection('admission-info'); return false;">入学信息</a>
        <a href="#extended-info" onclick="showSection('extended-info'); return false;">扩展信息</a>
    </div>
    <div id="basic-info" class="content-section active">
        <h2>基础信息</h2>
        <table class="info-table">
            <tr>
                <th>学号</th>
                <td>${user.studentID}</td>
                <th>姓名</th>
                <td>${user.name}</td>
                <th>姓名拼音</th>
                <td>${user.namePY}</td>
            </tr>
            <tr>
                <th>性别</th>
                <td>${user.gender}</td>
                <th>民族</th>
                <td>${user.nation}</td>
                <th>出生日期</th>
                <td>${user.birthDate}</td>
            </tr>
            <tr>
                <th>籍贯</th>
                <td>${user.nativePlace}</td>
                <th>政治面貌</th>
                <td>${user.politicalStatus}</td>
                <th>证件号码</th>
                <td>${user.IDNumber}</td>
            </tr>
            <tr>
                <th>证件类型</th>
                <td>${user.IDType}</td>
                <th>婚姻状况</th>
                <td>${user.maritalStatus}</td>
                <th>生源地</th>
                <td>${user.birthPlace}</td>
            </tr>
            <tr>
                <th>家庭地址</th>
                <td>${user.familyAddress}</td>
                <th>户口所在地详细地址</th>
                <td>${user.huKouDetailedPlace}</td>
                <th>火车起点站</th>
                <td>${user.railwayStationStart}</td>
            </tr>
            <tr>
                <th>户口所在地</th>
                <td>${user.huKouPlace}</td>
                <th>户口所在地邮编</th>
                <td>${user.huKouPostalCode}</td>
                <th>火车终点站</th>
                <td>${user.railwayStationEnd}</td>
            </tr>
            <tr>
                <th>校内电子邮箱</th>
                <td>${user.campusEmail}</td>
                <th>宿舍号</th>
                <td>${user.personalEmail}</td>
                <th>手机号码</th>
                <td>${user.phoneNumber}</td>
            </tr>
            <tr>
                <th>入党日期</th>
                <td><${user.joinPartyDate}</td>
            </tr>
        </table>
        <h2>在校信息</h2>
        <table class="info-table">
            <tr>
                <th>年级</th>
                <td>${user.grade}</td>
                <th>入学季节</th>
                <td>${user.entranceSeason}</td>
                <th>培养层次</th>
                <td>${user.cultivationLevel}</td>
            </tr>
            <tr>
                <th>学生类别</th>
                <td>${user.studentCategory}</td>
                <th>学院</th>
                <td>${user.college}</td>
                <th>学制</th>
                <td>${user.lengthOfSchooling}</td>
            </tr>
            <tr>
                <th>校区</th>
                <td>${user.campusZone}</td>
                <th>入学年月</th>
                <td>${user.entranceDate}</td>
                <th>管理单位</th>
                <td>${user.managementDepartment}</td>
            </tr>
            <tr>
                <th>专业</th>
                <td>${user.major}</td>
                <th>入学方式</th>
                <td>${user.entranceMethod}</td>
                <th>班级</th>
                <td>${user.studentClass}</td>
            </tr>
            <tr>
                <th>招生专业</th>
                <td>${user.enrollmentMajor}</td>
                <th>学习方式</th>
                <td>${user.studyMethod}</td>
                <th>学位类型</th>
                <td>${user.degreeType}</td>
            </tr>
            <tr>
                <th>学位情况</th>
                <td>${user.degreeStatus}</td>
                <th>是否留学生</th>
                <td>${user.isInternationalStudent}</td>
                <th>学籍状态</th>
                <td>${user.registrationStatus}</td>
            </tr>
            <tr>
                <th>实际毕业时间</th>
                <td>${user.actualGraduationDate}</td>
                <th>是否接受学历教育</th>
                <td>${user.isFormalEducation}</td>
                <th>进修性质</th>
                <td>${user.upgradeNature}</td>
            </tr>
            <tr>
                <th>导师</th>
                <td>${user.supervisor}</td>
                <th>是否学科交叉培养</th>
                <td>${user.isInterdisciplinary}</td>
                <th>联合培养单位名称</th>
                <td>${user.jointTrainingUnitName}</td>
            </tr>
            <tr>
                <th>在校标识</th>
                <td>${user.onCampusIdentifier}</td>
                <th>学籍异动状态</th>
                <td>${user.statusChange}</td>
                <th>联合培养导师</th>
                <td>${user.jointSupervisor}</td>
            </tr>
            <tr>
                <th>缴费情况</th>
                <td>${user.paymentStatus}</td>
                <th>研究方向</th>
                <td>${user.researchDirection}</td>
                <th>注册状态</th>
                <td>${user.registrationState}</td>
            </tr>
        </table>
    </div>
    <div id="admission-info" class="content-section">
        <h2>入学信息</h2>
        <table class="info-table">
            <tr>
                <th>招生年度</th>
                <td>${user.enrollmentYear}</td>
                <th>考生编号</th>
                <td>${user.candidateID}</td>
                <th>报考类别</th>
                <td>${user. applicationCategory}</td>
            </tr>
            <tr>
                <th>考生来源</th>
                <td>${user.candidateSource}</td>
                <th>录取类别</th>
                <td>${user.admissionCategory}</td>
                <th>考试方式</th>
                <td>${user.examinationMethods}</td>
            </tr>
            <tr>
                <th>是否保送</th>
                <td>${user.returnStatus}</td>
                <th>保留入学资格年限</th>
                <td>${user.retentionQualificationYears}</td>
                <th>定向委培单位所在地</th>
                <td>${user.targetedTrainingUnitsPlace}</td>
            </tr>
            <tr>
                <th>定向委培单位</th>
                <td><"${user.targetedTrainingUnits}/></td>
                <th>推免单位</th>
                <td>${user.recommendedUnit}</td>
            </tr>
            <!-- 其他入学信息字段 -->
        </table>

        <h2>入学前学历信息</h2>
        <table class="info-table">
            <tr>
                <th>最后毕业学校</th>
                <td>${user.finalGraduationSchool}</td>
                <th>最后毕业学校名称</th>
                <td>${user.finalGraduationSchoolName}</td>
            </tr>
            <tr>
                <th>最后毕业专业</th>
                <td>${user.finalGraduationMajor}</td>
                <th>最后毕业专业名称</th>
                <td>${user.finalGraduationMajorName}</td>
                <th>最后学历单位</th>
                <td>${user.lastDegreeUnit}</td>
            </tr>
            <tr>
                <th>最后学位单位名称</th>
                <td>${user. finalGraduationSchoolName}</td>
                <th>最后学位专业</th>
                <td>${user.finalGraduationMajor}</td>
                <th>最后学历专业名称</th>
                <td>${user.finalGraduationMajorName}</td>
            </tr>
            <tr>
                <th>最后毕业证书编号</th>
                <td>${user.finalGraduationCertificateNumber}</td>
                <th>最后学历</th>
                <td>${user.finalEducation}</td>
            </tr>
            <tr>
                <th>最后学位</th>
                <td>${user.finalDegree}</td>
                <th>最后毕业时间</th>
                <td><"${user.finalGraduationDate}"/></td>
                <th>最后学位时间</th>
                <td><"${user.finalDegreeDate}"/></td>
            </tr>
            <tr>
                <th>最后学历学习形式</th>
                <td>${user.finalAcademicLearningForm}</td>
            </tr>
        </table>
    </div>
    <div id="extended-info" class="content-section">
        <h2>扩展信息</h2>
        <table class="info-table">
            <tr>
                <th>微信号</th>
                <td>${user.wxID}</td>
                <th>QQ</th>
                <td>${user.qqID}</td>
                <th>联系电话</th>
                <td>${user.phone}</td>
            </tr>
            <tr>
                <th>通讯地址</th>
                <td colspan="3">${user.address}</td>
                <th>邮政编码</th>
                <td>${user.postCode}</td>
            </tr>
            <tr>
                <th>现就学习或工作单位</th>
                <td>${user.studyUnit}</td>
                <th>单位电话</th>
                <td>${user.unitPhone}</td>
                <th>单位邮编</th>
                <td>${user.unitPostCode}</td>
            </tr>
            <tr>
                <th>现就学习或工作单位地址</th>
                <td colspan="3">${user.unitAddress}</td>
            </tr>
            <tr>
                <th>紧急联系人</th>
                <td>${user.emergencyContact}</td>
                <th>紧急电话</th>
                <td>${user.emergencyPhone}</td>
                <th>紧急联系人邮政编码</th>
                <td>${user.emergencyPostCode}</td>
            </tr>
            <tr>
                <th>紧急联系人住址</th>
                <td colspan="3">${user.emergencyAddress}</td>
            </tr>
            <tr>
                <th>宿舍地址</th>
                <td>${user.dormitoryAddress}</td>
                <th>宿舍电话</th>
                <td>${user.dormitoryPhone}</td>
                <th>专业技术职务</th>
                <td>${user.technicalPosition}</td>
            </tr>
            <tr>
                <th>行政职务级别</th>
                <td>${user.administrativePositionLevel}</td>
                <th>家庭所在地</th>
                <td>${user.familyAddress}</td>
                <th>家庭邮政编码</th>
                <td>${user.familyPostCode}</td>
            </tr>
            <tr>
                <th>家庭电话</th>
                <td>${user.familyPhone}</td>
                <th>家庭联系人</th>
                <td>${user.familyContact}</td>
            </tr>
        </table>

        <h2>工作经历</h2>
        <table class="info-table">
            <thead>
            <tr>
                <th>起始日期</th>
                <th>结束日期</th>
                <th>所在单位</th>
                <th>从事工作</th>
                <th>担任职务</th>
                <th>证明人</th>
                <th>备注</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${user.startTime}</td>
                <td>${user.endTime}</td>
                <td>${user.workUnit}</td>
                <td>${user.workCategory}</td>
                <td>${user.workPosition}</td>
                <td>${user.provePerson}</td>
                <td>${user.notes}</td>
            </tr>
            <!-- 可以添加更多的工作经历记录 -->
            </tbody>
        </table>


<%--    <div id="education-experience" class="content-section">--%>
        <h2>教育经历</h2>
        <table class="info-table">
            <thead>
            <tr>
                <th>学校名称</th>
                <th>起始日期</th>
                <th>结束日期</th>
                <th>专业名称</th>
                <th>专业描述</th>
                <th>学历</th>
                <th>学位类型</th>
                <th>毕业学校地点</th>
                <th>修学年限</th>
                <th>是否毕业</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${user.schoolName}</td>
                <td>${user.startTime}</td>
                <td>${user.endTime}</td>
                <td>${user.major}</td>
                <td>${user.majorDescription}</td>
                <td>${user.finalEducation}</td>
                <td>${user.degreeType}</td>
                <td>${user.graduatePosition}</td>
                <td>${user.restTime}</td>
                <td>${user.isGraduate}</td>
            </tr>
            <!-- 可以添加更多的教育经历记录 -->
            </tbody>
        </table>
    </div>


    </div>
</div>
</body>
</html>
