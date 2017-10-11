angular.module('constantModule', [])
	// 登录页
    .constant('LOGIN_PAGE','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:8812/{{ app_name }}/portal/login.html')
    // 主页
    .constant('INDEX_PAGE','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:8812/{{ app_name }}/portal/index.html')
	// portal-base接口
    .constant('BASE_API_URL','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:801/base/ncloud')
    // portal-base接口V2.0
    .constant('BASE_API_URL_V2','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:801/base/ncloud/v2/')
    // 认证中心接口
    .constant('AUTH_API_URL','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:801/auth/AuthCenter/v1/')
    // 认证中心接口V2.0
    .constant('AUTH_API_URL_V2','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:801/auth/AuthCenter/v2/')
    // Base应用名
    .constant('BASE_APP_NAME','/ncloud')
    // 认证中心应用名
    .constant('AUTH_APP_NAME','/AuthCenter')
   	// S3对象存储
    .constant('S3_URL','http://{{ hostvars[groups['portal'][0]]['ansible_' + hostvars[groups['portal'][0]]['api_interface']]['ipv4']['address'] }}:801/')
