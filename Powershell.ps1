$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

function Neuer-Brief($unterordner = "Neuer Brief")
{
	$dateien = gci $PSScriptRoot -Exclude Powershell.ps1
	mkdir $unterordner
	cp $dateien $unterordner
	cd $unterordner
	if(!(Test-Path tmp))
	{
		mkdir tmp
	}
}

function Erstelle-Brief()
{
	if((Get-Command "pdflatex.exe" -ErrorAction SilentlyContinue) -eq $null)
	{
		Write-Host "PDFLatex muss im PATH liegen.."
		return
	}
	pdflatex.exe Brief.tex -aux-directory tmp -quiet -enable-installer
}
