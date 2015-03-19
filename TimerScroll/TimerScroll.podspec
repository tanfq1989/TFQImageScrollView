Pod::Spec.new do |s|
  s.name         = "TimerScroll"
  s.version      = "0.0.1"
  s.summary      = "TimerScroll  is a View show a scollableImage."

  s.description  = <<-DESC
                   A longer description of TimerScroll in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/tanfq1989/TFQImageScrollView"

  s.license      = "New BSD License"

  s.author       = { "tanfq1989" => "tanfq1989@hotmail.com" }

	 s.source       = { :git => "https://github.com/tanfq1989/TFQImageScrollView.git", :tag => "0.0.1" }
  s.source_files = "Classes","**/*.{h,m,swift}"

end
