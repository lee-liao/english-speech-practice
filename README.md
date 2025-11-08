# 🎤 英语用语练习 / English Speech Practice

## 📝 简介 / Introduction

这是一个交互式的英语口语练习应用，帮助用户练习各种场景下的英语表达。应用包含预设的会议场景，并支持用户自定义场景。

This is an interactive English speech practice application that helps users practice English expressions in various scenarios. The application includes preset meeting scenarios and supports user-defined scenarios.

<center><h2>▶️ <a href="EnglishSpeechPractice.html">English Speech Practice</a></h2></center>

## 🙏 尊重声明 / Notice of Respect

本项目采用 Apache 2.0 许可证。虽然该许可证允许自由分发和修改，但我诚挚地请求所有分发者和使用者尊重开源协作的精神，保留原作者的署名并明确标注原始作品。

欢迎将此应用制作成使用其它语言作界面和提示。如果您在此项目基础上进行开发或公开分享，请保留许可证头部信息，并附上本仓库的链接。您的尊重将有助于维护开源贡献并激励持续的开发工作。

感谢您支持开放知识与公平使用。

This project is licensed under the Apache 2.0 License. While the license permits redistribution and modification, I kindly ask that all distributors and users honor the spirit of open collaboration by retaining proper attribution and clearly acknowledging the original work.

You are welcome to adapt this application to support user interfaces and prompts in other languages. If you build upon this project or share it publicly, please preserve the license headers and include a reference to this repository. Your respect helps sustain open-source contributions and encourages continued development.

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

### 场景选择 / Scene Selection

点击主界面的场景按钮选择要练习的类型。

Click on the scene buttons on the main interface to select the type you want to practice.

### 练习过程 / Practice Process

- 应用会显示中文提示，您需要用英语表达
- 可以使用语音输入或手动输入答案
- 点击“检查答案”验证您的回答
- 点击“下一题”继续练习

- The application will display Chinese prompts, and you need to express them in English
- You can use voice input or manual input for your answers
- Click "Check Answer" to verify your response
- Click "Next Question" to continue practicing

### 📄 自定义场景与文件格式 / Custom Scenarios and File Format

在页面底部可以上传自定义场景JSON文件。自定义场景文件格式为 JSON：

At the bottom of the page, you can upload custom scenario JSON files. The custom scenario file format is JSON:

- `id` - 场景唯一标识符 / Unique identifier for the scenario
- `title` - 场景标题 / Scenario title
- `description` - 场景描述 / Scenario description
- `questions` - 问题数组 / Array of questions
  - `chinese` - 中文提示 / Chinese prompt
  - `english` - 英文答案（字符串或字符串数组） / English answer (string or string array)

这是一个自定义场景的JSON文件示例：

Here is an example of a custom scenario JSON file:

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

Here are some examples of simple HTTP servers that can be used for deployment:

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
