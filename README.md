# 异环薄荷 · NTE Mint Codex Pet

以《异环》（Neverness to Everness / NTE）角色薄荷（Mint）为参考制作的非官方 Q 版 Codex 宠物。薄荷色长发、粉色挑染与猫耳，配合跳跃、挥手及日常动作，为桌面增添一点活力。

![薄荷跳跃预览](nte-mint-preview-jump.gif)
![薄荷挥手预览](nte-mint-preview-wave.gif)

## 角色出处

薄荷（Mint）来自 Hotta Studio 开发的超自然都市开放世界 RPG《异环》（Neverness to Everness，简称 NTE），隶属异象管理局收容二组。她熟悉海特洛市的人物与地点，休息时能和各行各业的人聊得来；不过，收容安全考试成绩是她不太愿意谈起的话题。

角色信息根据[《异环》官方薄荷介绍](https://nte.perfectworld.com/en/article/news/gamenews/20240830/252475.html)整理；也可查看[官方角色页面](https://nte.perfectworld.com/en/character/index.html)。本仓库的 Q 版宠物与动画为非官方制作，角色出处属于《异环》。

搜索名称：异环薄荷、薄荷 Codex 宠物、NTE Mint、Neverness to Everness Mint、Codex Pet。

## 动作与特色

- 跳跃包含蓄力、起跳、腾空收腿、下落与软着陆，离地幅度约 24 像素。
- 挥手包含抬手、手腕摆动、表情跟随与收回。
- 统一留出约 5% 的边缘余量，避免动作触及格子边缘。
- 73 个有效帧，15 个透明未用格，包含九种动画状态与十六个观察方向。

预览播放时长用于演示；客户端的实际播放节奏由客户端决定。

## 下载与使用

点击仓库的 **Code → Download ZIP**，解压后运行 `安装异环薄荷-NTE-Mint.bat`。脚本会将薄荷安装到 Windows 用户目录的 `.codex/pets/nte-mint/`。

已有同名安装会先备份到带时间戳的文件夹，再更新。安装后可重新打开宠物选择面板，选择 **薄荷**；是否支持本地宠物取决于所用 Codex 客户端。

也可以手动安装：将 `pet.json` 与 `nte-mint-spritesheet.webp` 放到 `.codex/pets/nte-mint/`。

这些是本地宠物文件，不包含绑定任何个人账号的云端宠物 ID。云端 Work 模式的宠物应通过相应宠物导入工具安装。

## 文件

| 文件 | 用途 |
| --- | --- |
| `pet.json` | 薄荷宠物配置 |
| `nte-mint-spritesheet.webp` | 透明无损 WebP 精灵图 |
| `nte-mint-preview-jump.gif` / `nte-mint-preview-wave.gif` | 跳跃与挥手预览 |
| `nte-mint-preview-all.gif` / `nte-mint-preview-all.mp4` | 全状态预览 |
| `nte-mint-contact-sheet.png` | 全部动作排布 |
| `install.ps1` / `安装异环薄荷-NTE-Mint.bat` | Windows 安装入口 |
| `checksums.sha256` | 发布文件校验值 |

## 素材规格与检查

精灵图为 1536 × 2288 像素，8 列 11 排，每格 192 × 208。已通过结构校验、逐帧边界检查与独立视觉复核，云端存储副本已做逐像素核对。部分中间方向的转头幅度较轻。

发布日期：2026-10-05。动画使用角色素材作为参考，通过图像生成工具制作，并统一提取、排布和验证。
