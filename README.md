<!--
Licensed under the Apache License, Version 2.0
See LICENSE file or http://www.apache.org/licenses/LICENSE-2.0

Copyright (c) 2025 Lee Liao (Github id lee-liao)
Please retain attribution when redistributing or modifying.
-->
# 🎤 英语用语练习 / English Speech Practice

## 📝 简介 / Introduction

这是一个完全免费的交互式的英语口语练习应用，帮助用户练习各种场景下的英语表达。应用包含预设的会议场景，并支持用户自定义场景。应用使用的技术不需要订阅大模型服务。

This is a free interactive English speech practice application that helps users practice English expressions in various scenarios. The application includes preset meeting scenarios and supports user-defined scenarios. The technology used by the application does not require a subscription to a LLM service.

<center><h2>▶️ <a href="EnglishSpeechPractice.html">English Speech Practice</a></h2></center>

## 🙏 尊重声明 / Notice of Respect

本项目采用 Apache 2.0 许可证。虽然该许可证允许自由分发和修改，但我诚挚地请求所有分发者和使用者尊重开源协作的精神，保留原作者的署名并明确标注原始作品。

欢迎合作添加其它语言作界面和提示。如果您在此项目基础上进行开发或公开分享，请保留许可证头部信息，并附上本仓库的链接。您的尊重将有助于维护开源贡献并激励持续的开发工作。

感谢您支持开放知识与公平使用。

This project is licensed under the Apache 2.0 License. While the license permits redistribution and modification, I kindly ask that all distributors and users honor the spirit of open collaboration by retaining proper attribution and clearly acknowledging the original work.

You are welcome to contribute to support other languages on UI and prompts. If you build upon this project or share it publicly, please preserve the license headers and include a reference to this repository. Your respect helps sustain open-source contributions and encourages continued development.

Thank you for supporting open knowledge and fair use.

## ✨ 功能特性 / Features

- 预设会议场景练习（开场、讨论、表达意见、提问、结束）
- 语音识别功能，支持实时语音输入
- 手动文本输入支持
- 智能答案匹配和反馈
- 个性化学习进度追踪
- 自定义场景上传支持（JSON格式）

- Preset meeting scene practices (Opening, Discussion, Expressing Opinions, Q&A, Closing)
- Voice recognition feature with real-time speech input
- Manual text input support
- Intelligent answer matching and feedback
- Personalized learning progress tracking
- Custom scenario upload support (JSON format)

## 🚀 使用方法 / Usage

### - 🎛️ 场景选择 / Scene Selection

点击主界面的场景按钮选择要练习的类型。

Click on the scene buttons on the main interface to select the type you want to practice.

### - 💪 练习过程 / Practice Process

- 应用会显示中文提示，您需要用英语表达
- 可以使用语音输入或手动输入答案
- 点击“检查答案”验证您的回答
- 点击“下一题”继续练习

- The application will display Chinese prompts, and you need to express them in English
- You can use voice input or manual input for your answers
- Click "Check Answer" to verify your response
- Click "Next Question" to continue practicing

### - 📄 自定义场景与文件格式 / Custom Scenarios and File Format

在页面底部可以从本机上传自定义场景JSON文件。自定义场景文件格式为 JSON：

At the bottom of the page, you can upload custom scenario JSON files from your local drive. The custom scenario file format is JSON：

- `id` - 场景唯一标识符 / Unique identifier for the scenario
- `title` - 场景标题 / Scenario title
- `description` - 场景描述 / Scenario description
- `questions` - 问题数组 / Array of questions
  - `chinese` - 中文提示 / Chinese prompt
  - `english` - 英文答案（字符串或字符串数组） / English answer (string or string array)

这是一个自定义场景的JSON文件示例：

Here is an example of a custom scenario JSON file：

```json
{
  "id": "custom1",
  "title": "自定义场景标题 / Custom Scenario Title",
  "description": "场景描述 / Scenario Description",
  "questions": [
    {
      "chinese": "中文提示 / Chinese Prompt",
      "english": "English Answer"
    },
    {
      "chinese": "另一个提示 / Another Prompt",
      "english": ["多种可能答案 / Multiple Possible Answers", "另一种表达 / Alternative Expression"]
    }
  ]
}
```

### - 📂 样例JSON文件 / sample JSON files

[衔接过渡 transition](sampleData/transition.json)

[获得别人注意 attention](sampleData/attention.json)

[委婉表达不同意见 disagree](sampleData/disagree.json)

[获得时间应对提问 handle_question](sampleData/handle_question.json)

[说服和解释 persuade](sampleData/persuade.json)

[赞许鼓励 praise](sampleData/praise.json)

[获得思考时间 think_time](sampleData/think_time.json)

[总结归纳 summarize](sampleData/summarize.json)

---
### 🧑‍💻 以下内容面向技术读者 / The following sections are intended for technical readers

## 💻 技术特性 / Technical Features

- Web Speech API 语音识别 / Web Speech API voice recognition
- 本地存储（localStorage）支持 / Local storage (localStorage) support
- 响应式界面设计 / Responsive interface design
- 智能文本相似度匹配 / Intelligent text similarity matching
- 现代浏览器支持 (Chrome, Edge, etc.) / Modern browsers (Chrome, Edge, etc.)
- 麦克风权限 / Microphone permissions

## 🚀 部署方法 / Deployment Methods

### 本地使用 / Local Usage
- 直接双击 HTML 文件在浏览器中打开即可
- 或将整个项目文件夹放置在任何 HTTP 服务器中

- Directly double-click the HTML file to open it in a browser.
- Or place the entire project folder in any HTTP server.

### 简单HTTP服务器 / Simple HTTP Servers
以下是一些可以用来部署的简单HTTP服务器示例：

Here are some examples of simple HTTP servers that can be used for deployment：

#### Python
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

#### Node.js
```bash
# 安装 http-server
npm install -g http-server

# 启动服务器
http-server
```

#### PHP
```bash
php -S localhost:8000
```

#### Ruby
```bash
ruby -run -e httpd . -p 8000
```

### Docker 部署 / Docker Deployment

本项目支持使用 Docker 进行容器化部署。

This project supports containerized deployment using Docker.

#### 使用 docker-compose (推荐) / Using docker-compose (Recommended)

项目包含了 [docker-compose.yml](docker-compose.yml) 文件，可以通过以下命令启动应用：

The project includes a [docker-compose.yml](docker-compose.yml) file, and you can start the application with the following command：

```bash
docker-compose up -d
```

默认情况下，应用将在端口 4530 上运行。您可以通过修改 [.env](.env) 文件来更改端口和其他配置选项。

By default, the application will run on port 4530. You can change the port and other configuration options by modifying the [.env](.env) 文件。

#### 环境变量 / Environment Variables

项目使用环境变量来配置容器名称和端口。您可以创建一个 [.env](.env) 文件来设置这些值：

The project uses environment variables to configure the container name and port. You can create a [.env](.env) 文件 to set these values：

```env
CONTAINER_NAME=english-speech-practice
HOST_PORT=4530
```

或者参考提供的 [.env.example](.env.example) 文件创建您的配置。注意 [.env](.env) 文件应该被添加到 [.gitignore](.gitignore) 中以避免敏感信息泄露。

Or refer to the provided [.env.example](.env.example) file to create your configuration. Note that the [.env](.env) file should be added to [.gitignore](.gitignore) to prevent sensitive information leakage.

#### 直接使用 Docker / Using Docker directly

您也可以直接使用 Docker 构建和运行容器：

You can also directly use Docker to build and run the container：

```bash
docker build -t english-speech-practice .
docker run -d --name english-speech-practice -p 4530:80 english-speech-practice
```

## 📄 许可证 / License

本项目采用 [Apache 2.0 许可证](LICENSE)。您可以自由使用、修改和分发本项目，但请保留原始许可证文件和相关版权声明。

This project is licensed under the [Apache 2.0 License](LICENSE). You are free to use, modify, and distribute this project, but please retain the original license file and associated copyright notices.

## 📬 联系方式 / Contact

如需有限支持或希望探讨合作机会，欢迎通过以下方式联系我. 虽然我无法提供全面的技术支持，但我始终欢迎尊重的交流、反馈与合作建议。

For limited support or to explore potential collaboration opportunities, feel free to reach out. While I may not be able to offer extensive technical assistance, I welcome respectful dialogue, feedback, and ideas that align with the spirit of open-source learning and community building.

- 📧 Email: `liao_lee@hotmail.com`  
- 🐙 GitHub: [@lee-liao](https://github.com/lee-liao)

## 🤝 贡献指南 / Contributing

欢迎贡献者参与本项目！如果您有改进建议或功能补充，请通过 Fork 本仓库并提交 Pull Request 的方式参与。

请确保您的提交遵循项目的结构和风格，并保留原始许可证信息。

Contributions are welcome! If you have suggestions or improvements, please fork the repository and submit a pull request.

Make sure your contributions follow the project's structure and style, and retain the original license information.