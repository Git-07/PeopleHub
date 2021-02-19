$filePathToTask = $args[0]
[String]$setTheDate = $args[1]
[String]$setTheHardCopy = $args[2]
[xml]$myXML = Get-Content $filePathToTask
$myXml.root.document.ChildNodes.Item(3).value = $setTheDate
$myXml.root.document.ChildNodes.Item(6).value = $setTheHardCopy
$myXml.Save($filePathToTask)