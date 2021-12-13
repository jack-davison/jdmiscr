#' Save ggplot figures as PDFs with good defaults
#'
#' Saves a ggplot figure to PDF. Importantly, this is done via SVG so that
#' text is converted to a static image. Optionally the svg can be retained.
#'
#' @param filename File name to create on disk.
#' @param plot Plot to save.
#' @param height Plot size in units ("in", "cm", "mm", or "px").
#' @param width Plot size in units ("in", "cm", "mm", or "px").
#' @param keep_svg Keep the svg file? Defaults to FALSE.
#' @param ... Other arguments to pass to svg().
#'
#' @return
#' @export

ggpdf = function(filename, plot, height, width, keep_svg = FALSE, ...){

  filename = gsub(filename,
                  pattern = "\\.svg|\\.pdf",
                  replacement = "")

  svgname = paste0(filename, ".svg")
  pdfname = paste0(filename, ".pdf")

  svg(filename = svgname, width = width, height = height, ...)
  plot(plot)
  dev.off()

  rsvg::rsvg_pdf(svg = svgname, file = pdfname)

  if(!keep_svg){unlink(svgname)}

}
