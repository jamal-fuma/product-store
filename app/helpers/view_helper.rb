module ViewHelper
class Helper
  include MenuHelper
    def initialize(template)
        @template = template
    end

    def authenticated(opts={},&block)
        unless (logged_in?)
            content_tag(:span,opts)
        else
             content_tag(:span,capture(&block),opts)
        end
    end

    def cms_links
        authenticated :class => 'cms_links' do
            link_to('New ', '') +
            link_to('CMS ', '')
        end
    end
    
    def masthead
        spacer_tag(:id => 'masthead') {
            menubar + page_title_helper
        }
    end

    def render_header
       company_category + 
       masthead
    end

    def company_logo_link
        link_to(image_tag("fuma_logo_col.png"),"/")
    end

    def page_name_helper
        image_tag("colors.png") + content_tag(:h2, "" , :id => 'page_name' )
    end
    
    def menubar
        div_tag(:class => 'menubar')  {
            menu_list_tag(:class => 'menu') 
        }
        
    end
    def page_title_helper
        div_tag(:id => 'page_title'){
           page_name_helper 
         
        }
    end
    
  def menu_item_tag(title,url,&block)
      if block_given?
        content_tag(:li,capture(&block))
      else
        content_tag(:li){ link_to(propercase(title),url) }
      end
    end

   def supplier_menu_tag
        @supplier = @template.instance_variable_get("@supplier")
        to_return = ""

        if(@supplier)
            to_return << menu_item_tag("Suppliers (Home)",suppliers_url)
        end
        to_return << menu_item_tag("New Supplier",new_supplier_url)
        if @supplier && !@supplier.new_record?
            to_return << menu_item_tag("Edit (#{h @supplier.name})",edit_supplier_url(@supplier))
            to_return << menu_item_tag("",""){
              link_to("Delete #{h @supplier.name}", @supplier, :confirm => 'Are you sure?', :method => :delete)
            }
        end
        menu_item_tag("",""){ block_tag(:ul,opts={:class => 'submenu'}) { to_return } } + 
        Supplier.all(:order => :position).inject(""){ |result, pg| result << menu_item_tag(pg.name, "#{supplier_url( :id => pg)}") }  
    end
   
    def role_menu_tag
        @role = @template.instance_variable_get("@role")
        to_return = ""

        if(@role)
            to_return << menu_item_tag("Roles (Home)",roles_url)
        end
        to_return << menu_item_tag("New Role",new_role_url)
        if @role && !@role.new_record?
            to_return << menu_item_tag("Edit (#{h @role.name})",edit_role_url(@role))
            to_return << menu_item_tag("",""){
              link_to("Delete #{h @role.name}", @role, :confirm => 'Are you sure?', :method => :delete)
            }
        end
        menu_item_tag("",""){ block_tag(:ul,opts={:class => 'submenu'}) { to_return } } + 
        Role.all(:order => :position).inject(""){ |result, pg| result << menu_item_tag(pg.name, "#{role_url( :id => pg)}") }  
    end
    
    def bug_menu_tag
        @bug = @template.instance_variable_get("@bug")
        title_to_menu = lambda { |result, pg| result << menu_item_tag(pg.title, "#{bug_url( :id => pg)}") }  
        to_return = ""

        if(@bug)
            to_return << menu_item_tag("Bugs (Home)",bugs_url)
        end
        to_return << menu_item_tag("New Bug",new_bug_url)
        if @bug && !@bug.new_record?
            to_return << menu_item_tag("Edit (#{h @bug.title})",edit_bug_url(@bug))
            to_return << menu_item_tag("",""){
              link_to("Delete #{h @bug.title}", @bug, :confirm => 'Are you sure?', :method => :delete)
            }
        end
        menu_item_tag("",""){ 
          block_tag(:ul,opts={:class => 'submenu'}) {
            to_return 
          } 
        } + 
        Bug.all(:order => :position).inject("",&title_to_menu)
    end

    def menu_list_tag(opts={:class =>'menu', :id => ''})
#require 'ruby-debug'
#      debugger
      return block_tag(:ul,opts) do
         case controller.controller_name 
            when "suppliers"  : supplier_menu_tag
            when "categories" : category_menu_tag
            when "roles"      : role_menu_tag
            when "bugs"       : bug_menu_tag
            else
            end
#  Page.visible_pages.inject("") { |result, pg| 
#               result << menu_item_tag(pg.name, "#{page_url( :id => pg.name)}.html") 
#           }
        end
    end

    def new_section_link(page)
        authenticated do 
            link_to('New section', new_page_section_path(page))
        end
    end

    def edit_section_links(page,section)
        authenticated do 
        end
    end
   
    def method_missing(*args, &block)
        @template.send(*args, &block)
    end
    
    def spacer_tag(opts = {}, &block )
        opts[:class] = 'spacer' unless opts[:class]
        div_tag(opts,&block)
    end

    def div_tag(opts, &block )
        block_tag(:div,opts,&block)
    end

    def block_tag(*args, &block )
        sym = args.shift ||= :div
        opts = args.first
        if(opts.is_a?(Hash) && !block_given?)
            raise "block_tag requires a block if you pass an attribute hash" 
        elsif(opts.is_a?(String) && block_given?)
            raise "block_tag can't take a block if you pass inline-content" 
        end
        if block_given?
          content_tag(sym, opts) { yield }
        else
          content_tag(sym,opts) 
        end
    end 
    def framed_content(opts={},&block)
        title = opts.delete(:content_title)
        frame_class = opts.delete(:inner_frame_class)
        frame_class ||= 'inner_frame'
        div_tag(opts) do
            div_tag(:class => frame_class) do
                s = framed_content_title(title)
                s << yield rescue ""
            end
        end
    end
        
    def framed_content_title(title,opts={})
        (title) ? content_tag(:h2,propercase(title),opts) : ""
    end

    def copyright_tag(opts={},&block)
        opts[:inner_frame_class] ||= ''
        opts[:class] ||= 'spacer'
        framed_content_tag(opts) {
            content_tag(:p, ("&copy; #{Time.now.year} " + ((block_given?) ? yield : "")))
        }
    end


 end
 end

    
