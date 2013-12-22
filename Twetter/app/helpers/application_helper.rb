module ApplicationHelper

  def follow_link(user)
    follow = Follow.where(:user => current_user, :following => user)

    if user.id == current_user.id
	return
    end

    if follow.exists?
      button_to("Unfollow", follow_path(follow.first), :method => :delete,
                                                       :class => 'btn btn-danger mar-top-5',
                                                       :form => { :class => 'form-inline pull-right' })
    else
      form_for(:follow, :url => follows_path, :method => 'POST', :html => { :class => 'pull-right' }) do |f|
        f.hidden_field(:following_id, :value => user.id.to_s) +
        f.submit('Follow', :class => "btn btn-primary mar-top-5")
      end
    end
  end

end
