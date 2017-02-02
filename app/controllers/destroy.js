("#like-buttons").html("<%= j(render partial: 'like', locals: { tweets: @tweets, likes: @likes }) %>");
