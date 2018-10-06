<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>国软软件</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    </head>

    <body>
        <header id="header">
            <div class="center">
                <h1 class="logo">国软软件</h1>
                <div class="tel"></div>
                <div class="tel_nav">
                    <nav class="nav">
                        <ul class="link">
                            <li><a href="index.html">首页</a></li>
                            <li><a href="gsxx.html">公司信息</a></li>
                            <li><a href="cptx.html">产品体系</a></li>
                            <li><a href="zpxx.html">招聘信息</a></li>
                            <li><a href="gsal.html">公司案例</a></li>
                            <li><a href="fwkh.html">服务客户</a></li>
                            <li><a href="lxwm.html">联系我们</a></li>
                            <li><a href="flsm.html">法律声明</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <div id="section">
            <img src="img/gsxx.jpg"/>
            <div class="gsxx-nav">
                <ul>
                    <li class="a"><a href="gsxx.html">企业简介</a></li>
                    <li class="b"><a href="./index.php?m=content&c=index&a=lists&catid=9">企业动态</a></li>
                    <li class="c"><a href="ywfw.html">业务范围</a></li>
                    <li class="d"><a href="hydt.html">行业动态</a></li>
                    <li class="e"><a href="ryzz.html">荣誉资质</a></li>
                </ul>
            </div>
            <div class="qydt">
                <div class="qydt-tou">
                    
                </div>
                <h2>企业动态</h2>
                <ul>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=5d5ade0902ce2efd5a2a98787ada1abc&action=lists&catid=%24catid&order=listorder+ASC&num=100&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 100;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'listorder ASC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'listorder ASC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
             <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                 <li>
             <div class="qydt-lleft"><a href="<?php echo $r['url'];?>" style="color:#000"><?php echo str_cut($r['title'],200);?></a></div>
                        <p class="qydt-lright">20<?php echo date('y-m-d',$r[inputtime]);?></p>
             </li>
               <!--  <li><img src="./images/cp_jt.jpg"><a class="xwbt" href="<?php echo $r['url'];?>"><?php echo str_cut($r['title'],200);?></a><span><?php echo date('m-d',$r[inputtime]);?></span></li> -->
                <?php $n++;}unset($n); ?>
               
                 <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <!-- <li>
                        <div class="qydt-left"><a href="qydt1.html">公司聚餐同庆元宵佳节</a></div>
                        <p class="qydt-right">2014-02-15</p>
                    </li>
                    <li>
                        <div class="qydt-left"><a href="qydt1.html">公司聚餐同庆元宵佳节</a></div>
                        <p class="qydt-right">2014-02-15</p>
                    </li>
                    <li>
                        <div class="qydt-left"><a href="qydt1.html">公司聚餐同庆元宵佳节</a></div>
                        <p class="qydt-right">2014-02-15</p>
                    </li>
                    <li>
                        <div class="qydt-left"><a href="qydt1.html">公司聚餐同庆元宵佳节</a></div>
                        <p class="qydt-right">2014-02-15</p>
                    </li>
                     -->
                </ul>
                
                
            </div>
            
            <div class="youqinglianjie">
                <div class="center">
                    <div class="left"></div>
                    <div class="right">
                        <ul>
                            <li><a href="###">中国移动</a> <a href="###">中国电信</a> <a href="###">华能电力集团</a> <a href="###">浪潮集团</a> <a href="###">中国石化</a> <a href="###">中国人寿</a> <a href="###">中国烟草集团</a> <a href="###">国税</a> <a href="###">新华社</a> <a href="###">教育部</a> <a href="###">解放军空军后备处</a>                                </li>
                            <li><a href="###">济南军区</a> <a href="###">交通局</a> <a href="###">上海银行</a> <a href="###">中信银行</a> <a href="###">国家安全局</a> <a href="###">检察院</a> <a href="###">保安公司</a> <a href="###">解放军人民武装部</a> <a href="###">解放军海防第九团部</a> <a href="###">新浪</a> <a href="###">腾讯</a>                                </li>
                            <li><a href="###">国家开发银行</a> <a href="###">国家统计局</a> <a href="###">国家气象局</a> <a href="###">国家电网</a> <a href="###">北京点击科技</a> <a href="###">北京华建蓝海</a> <a href="###">九龙集团</a> <a href="###">香港象亿国际</a> <a href="###">上海龙明</a> <a href="###">浙江典极</a> </li>
                            <li><a href="###">北京网尚</a> <a href="###">江苏天一网络</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <footer id="footer">
            <div class="center">
                <ul>
                    <li><a href="###">加入收藏</a></li>
                    <li><a href="###">网站首页</a></li>
                    <li><a href="###">支付方式</a></li>
                    <li><a href="###">联系我们</a></li>
                    <li><a href="###">反馈意见</a></li>
                    <li><a href="###">办公平台</a></li>
                    <li><a href="###">法律声明</a></li>
                    <li><a href="###">设为首页</a></li>
                    <li>
                        <hr style="margin-left:-10px;width:555px"> </li>
                    <li><span style="font-size:10px;color:#222;margin-left:70px">Copyright  1997 - 2012 All Rights Reserved. 国软公司 版权所有 京ICP证09000566号</span></li>
                </ul>

            </div>
        </footer>
    </body>
</html>
