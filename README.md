安装注意事项
========

先编辑group_vars/all里面的变量


第一步: 编辑hosts文件
--------------

* 填写hosts里面的portal地址
* 填写hosts里面ceph_rgw地址，这个主要是delegate to委派功能使用
* 执行命令: ansible-playbook -i hosts ceph_pre_action.yml

第二步: 执行安装
--------------

* 执行命令: ansible-playbook -i hosts setup-portal.yml
* 主要的执行步骤是，安装docker、配置文件和启动镜像
* 还没有调试到最佳状态，还需要安装测试优化

