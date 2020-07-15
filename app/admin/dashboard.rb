ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    columns do 
      column do
        panel "Users' article count" do
          table_for User.all do |t|
            t.column('Id') { |user| user.id }
            t.column('Email') { |user| user.email }
            t.column('Articles') { |user| user.articles.count }
          end
        end
      end
    end

  end # content
end
