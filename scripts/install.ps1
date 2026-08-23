# motion-web-design 一键安装：规则 + prompts + catalog 全部打进 Skill 目录
$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path $PSScriptRoot -Parent
$SkillSrc = Join-Path $RepoRoot ".cursor\skills\motion-web-design"
$SkillDst = Join-Path $env:USERPROFILE ".cursor\skills\motion-web-design"

if (-not (Test-Path $SkillSrc)) {
    Write-Error "找不到 Skill 源目录: $SkillSrc"
}

Write-Host "motion-web-design 安装中..."
Write-Host "  源: $RepoRoot"
Write-Host "  目标: $SkillDst"

New-Item -ItemType Directory -Force -Path (Split-Path $SkillDst -Parent) | Out-Null

if (Test-Path $SkillDst) {
    Remove-Item -Recurse -Force $SkillDst
}

New-Item -ItemType Directory -Force -Path $SkillDst | Out-Null

Copy-Item -Recurse -Force "$SkillSrc\*" $SkillDst
Copy-Item -Recurse -Force (Join-Path $RepoRoot "prompts") (Join-Path $SkillDst "prompts")
Copy-Item -Force (Join-Path $RepoRoot "catalog.json") (Join-Path $SkillDst "catalog.json")

$dataSrc = Join-Path $RepoRoot "data"
if (Test-Path $dataSrc) {
    Copy-Item -Recurse -Force $dataSrc (Join-Path $SkillDst "data")
}

$count = (Get-ChildItem (Join-Path $SkillDst "prompts") -Filter "*.md").Count
Write-Host ""
Write-Host "安装完成!" -ForegroundColor Green
Write-Host "  路径: $SkillDst"
Write-Host "  模板数: $count"
Write-Host ""
Write-Host "试用: 用 motion-web-design，以 interactive-discovery 为模板，品牌改成我的"

if ($count -lt 300) {
    Write-Warning "模板数量偏少，请检查 prompts 是否复制完整"
    exit 1
}

exit 0
