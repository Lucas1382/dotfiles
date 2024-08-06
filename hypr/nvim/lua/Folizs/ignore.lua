require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules",
      "./:LOCALAPPDATA",
      "./go/pkg",
      "./picom"
    }
  }
}
