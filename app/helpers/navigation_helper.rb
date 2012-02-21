module NavigationHelper
  def simple_nav
    tables = ActiveRecord::Base.connection.tables
    tables = tables.reject { |t| t == 'schema_migrations' }
    tables = tables.map { |t| Kernel.const_get t.classify }
    return '' if tables.empty?
    return render :partial => "menu", :locals => { :tables => tables }
  end
end
