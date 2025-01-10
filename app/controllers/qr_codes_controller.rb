class QrCodesController < ApplicationController
  def index
    @content = params[:content] || "https://example.com"
    qr_code = RQRCode::QRCode.new(@content)

    @svg = qr_code.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    )
  end
end
