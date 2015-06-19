class Blog

    def initialize
       @all_blog_posts = []
    end
    
    def create_blog_post
        puts "Time to create a new blog post!"
        new_blog_post = BlogPost.new
        @all_blog_posts << new_blog_post
    end
    
    def collect_all_posts
        return @all_blog_posts
    end
    
    def publish(all_blog_posts)
        all_blog_posts.each do |post|
            puts post.title
            puts post.time_stamp
            puts post.content
        end
    end
        

end


class BlogPost
    
   def set_title=(post_title)
       @post_title=post_title
   end

   def get_title
       return @post_title
   end

  def set_content=(post_content)
        @post_content=post_content
   end

   def get_content
       return @post_content
   end
    
   def initialize

       @time_stamp = Time.now
        
       puts "Enter your blog post title:"
       set_title = gets.chomp
       @title = get_title
        
       puts "Enter your post\'s content:"
       set_content = gets.chomp
       @content = get_content
        
    end

end

my_blog = Blog.new
my_first_post = my_blog.create_blog_post
my_second_post = my_blog.create_blog_post
all_blog_posts = my_blog.collect_all_posts

#my_blog.publish(all_blog_posts)
#I've commented out the above line because it gives me the following error:
#Blog.rb:19:in `block in publish': undefined method `title' for #<BlogPost:0x007fae3b1c5b38> (NoMethodError)                                                   
#        from Blog.rb:18:in `each'                                                                                                                             
#        from Blog.rb:18:in `publish'                                                                                                                          
#        from Blog.rb:67:in `<main>'    

#So, when I inspect my blog posts, they both say 'nil' for title and content.
#I'm pretty sure that's why my publish method gives me the error above.
#....But I'm not understanding why those values are nil??? Help!
puts my_first_post.inspect
puts my_second_post.inspect


