
# Karin Docker

## 快速开始

### 1. 克隆项目代码

首先，克隆项目代码到本地：

```bash
git clone https://github.com/HalcyonAlcedo/karin-docker.git
```

### 2. 进入项目目录

进入 `karin-docker` 目录：

```bash
cd karin-docker
```

### 3. 构建镜像并启动应用

执行以下命令，构建镜像并启动应用：

```bash
docker-compose up -d
```

### 4. 访问管理面板

在浏览器中访问以下地址进入karin管理面板：

```
http://karin.alcedo.top/
```

### 5. 快速登陆

在服务器地址中输入以下地址后点击“快速登陆”：

```
http://localhost:5333
```

### 6. 获取快速登陆令牌

在终端中输入以下命令查看日志，并获取快速登陆令牌：

```bash
docker-compose logs karin
```

使用获取的快速登陆令牌登陆系统。

### 7. 修改配置

根据需要在面板中修改配置并保存，然后执行以下命令重启应用：

```bash
docker-compose restart
```

## 开始愉快的使用

完成以上步骤后，您即可开始愉快地使用 Karin 系统。如果在使用过程中遇到任何问题，请参阅项目文档或提交问题至项目仓库。

---

## 项目概述

这是一个用于快速启动 `karin` 项目的 Docker 配置。该项目包含三个主要服务：

- **karin**: 核心服务
- **support**: 支持服务
- **manage**: 管理界面

通过使用 Docker Compose，您可以快速地启动和管理这些服务。

## 项目结构

- **docker-compose.yml**: Docker Compose 配置文件。
- **Dockerfile**: 定义如何构建每个服务的 Docker 镜像。
- **entrypoint.sh**: 启动脚本，处理启动时的初始化任务（如插件安装）。

## 启动项目

要启动项目，请执行以下命令：

```bash
docker-compose up -d
```

此命令将在后台启动所有服务。您可以使用 `docker-compose ps` 查看服务状态。


## 停止项目

要停止并删除所有正在运行的容器，请执行以下命令：

```bash
docker-compose down
```

## 日志

要查看服务的日志，请使用以下命令：

```bash
docker-compose logs
```

要查看特定服务的日志，可以使用：

```bash
docker-compose logs <service_name>
```

例如，要查看 `karin` 服务的日志，可以运行：

```bash
docker-compose logs karin
```

## 贡献

欢迎提交问题报告、建议和代码贡献。请遵循项目的贡献指南和代码规范。

## 许可证

本项目采用 [GPL-3.0 许可证](LICENSE)。有关更多信息，请参阅 [LICENSE](LICENSE) 文件。
