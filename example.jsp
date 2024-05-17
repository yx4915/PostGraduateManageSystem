<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <img src="/img/logo_jw_d.png" alt="学校Logo">
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
                <td><fmt:formatDate value="${user.birthDate}" pattern="yyyy-MM-dd"/></td>
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
                <td><fmt:formatDate value="${user.joinPartyDate}" pattern="yyyy-MM-dd"/></td>
            </tr>
        </table>
    </div>
    <div id="admission-info" class="content-section">
        <h2>入学信息</h2>
        <table class="info-table">
            <tr>
                <th>入学日期</th>
                <td><fmt:formatDate value="${user.entranceDate}" pattern="yyyy-MM-dd"/></td>
                <th>入学方式</th>
                <td>${user.entranceMethod}</td>
            </tr>
            <!-- 其他入学信息字段 -->
        </table>
    </div>
    <div id="extended-info" class="content-section">
        <h2>扩展信息</h2>
        <table class="info-table">
            <tr>
                <th>兴趣爱好</th>
                <td>${user.hobbies}</td>
                <th>特长</th>
                <td>${user.specialties}</td>
            </tr>
            <!-- 其他扩展信息字段 -->
        </table>
    </div>
</div>
</body>
</html>
