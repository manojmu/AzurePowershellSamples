$s = "%systemroot%\system32\drivers\srv.sys"
$v = [System.Environment]::ExpandEnvironmentVariables($s)

$versionInfo = (Get-Item $v).VersionInfo

$stdout = "$($versionInfo.FileMajorPart).$($versionInfo.FileMinorPart).$($versionInfo.FileBuildPart).$($versionInfo.FilePrivatePart)"
return $stdout
