class ProvincsController < InheritedResources::Base

  private

    def provinc_params
      params.require(:provinc).permit(:name, :pst, :hst)
    end

end
