
module = "tabularray"

sourcefiles = {"tabularray-dev.sty"}

-- all files that match checksuppfiles in the supportdir are moved to build/test folder
supportdir = "./testfiles"
checksuppfiles  = {"regression-test.cfg"}

-- we need to check test files with different regression-test.cfg files
checkconfigs = {"build", "confighook"}

checkengines = {"xetex","pdftex"}
checkruns = 2

lvtext = ".tex"

-- files for tagging
tagfiles = {"*.sty"}

uploadconfig = {
  pkg                 = "tabularray",
  version             = "2026A",
  author              = "Valentin Dao, plante, peaR-red, Jevgeni Han",
  uploader            = "Valentin Dao",
  email               = "vdao.texdev@gmail.com",
  license             = "lppl1.3c",
  summary             = "Typeset tabulars and arrays with LaTeX3",
  ctanPath            = "/macros/latex/contrib/tabularray",
  announcement_file   = "announcement.txt",
  update              = true,
  repository          = "https://github.com/TeXackers/tabularray/tree/main",
  bugtracker          = "https://github.com/TeXackers/tabularray/issues",
  home                = "https://texackers.dev"
}

function update_tag(file, content, tagname, tagdate)
  local pkg_name = uploadconfig.pkg
  local new_date = tagdate or os.date("%Y-%m-%d")
  local new_version = tagname or uploadconfig.version
  local description = uploadconfig.summary
  
  local pattern =
    "\\ProvidesExplPackage{%w+}{%d%d%d%d%-%d%d%-%d%d}{%d%d%d%d%u}\n%s*{[^}]+}"
  
  local replacement = string.format(
    "\\ProvidesExplPackage{%s}{%s}{%s}\n\t{%s}",
    pkg_name, new_date, new_version, description
  )
  
  return content:gsub(pattern, replacement)
end

kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end