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
#' @param ... Other arguments to pass to ggsave.
#'
#' @return
#' @export

ggpdf = function(filename, plot, height, width, keep_svg = FALSE, ...){

  filename = gsub("myfile.pdf",
                  pattern = "\\.svg|\\.pdf",
                  replacement = "")

  svgname = paste0(filename, ".svg")
  pdfname = paste0(filename, ".pdf")

  ggplot2::ggsave(filename = svgname, plot = plot, device = "svg",
         height = height, width = width, ...)

  rsvg::rsvg_pdf(svg = svgname, file = pdfname)

  if(keep_svg){unlink(svgname)}

}
