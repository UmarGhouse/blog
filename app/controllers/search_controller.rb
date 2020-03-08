class SearchController < ApplicationController
  def search
    @posts = Post.ransack(title_or_action_text_rich_text_body_cont: params[:q]).result(distinct: true)
    @podcast_notes = PodcastNote.ransack(title_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {
        @posts = @posts.page(params[:page])
        @podcast_notes = @podcast_notes.page(params[:page])
      }

      format.json {
        @posts = @posts.limit(5)
        @podcast_notes = @podcast_notes.limit(5)
      }
    end
  end
end
