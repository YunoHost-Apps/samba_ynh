<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Samba

[![集成程度](https://dash.yunohost.org/integration/samba.svg)](https://ci-apps.yunohost.org/ci/apps/samba/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/samba.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/samba.maintain.svg)

[![使用 YunoHost 安装 Samba](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=samba)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Samba。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

This package allows you to create directories reachable on a private network.

### Features

- Create and name your directories;
- Configure permissions for your directories thanks to the yunohost permission view;
- Define readonly directories


**分发版本：** 4.13.13~ynh2
## 文档与资源

- 官方应用网站： <https://www.samba.org/>
- 官方管理文档： <https://www.samba.org/samba/docs/>
- 上游应用代码库： <https://git.samba.org/?p=samba.git;a=summary>
- YunoHost 商店： <https://apps.yunohost.org/app/samba>
- 报告 bug： <https://github.com/YunoHost-Apps/samba_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/samba_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/samba_ynh/tree/testing --debug
或
sudo yunohost app upgrade samba -u https://github.com/YunoHost-Apps/samba_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
