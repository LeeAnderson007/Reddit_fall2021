class WordsController < ApplicationController
    def hotdog
        x = params[:bobross]
        first_sub_name = Sub.first.name
        render component: "Treasure", props: {y:First_sub_name}
    end
end
