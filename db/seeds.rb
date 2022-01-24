# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
	AdminUser.create(email: "admin@thoughtwin.com", password: "thoughtwin_777") if AdminUser.find_by_email("admin@gopando.io").nil?
   User.create!(email: "admin@thoughtwin.com", password: 'Thoughtwin')if User.find_by_email("admin@thoughtwin.com").nil?
if Portfolio.all.count == 0
	  file  = File.open(File.join(Rails.root,'app/assets/images/img/storyboard.jpg'))
	  @portfolio = Portfolio.create!(title: "Storyboard", description: "Storyboard is the firrst mobile app that allows companies, teams, and organizations to use the power of podcasting, just for their internal audiences.", image: file, language: "Ruby on Rails", web_link: "https://www.storyboardthat.com/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/gitfit.jpg'))
	  @portfolio = Portfolio.create!(title: "GITFIT", description: "Gitfit is a fitness application where coaches manages their athletes. In this platform coaches can sell memberships to their athletes and tracks their fitness parameters with a well architectures fitness features of the application. Coaches and athletes and communicate and track reports, questions, marcors etc over this platform.", image: file, language: "React-Redux, Python-Django", web_link: "https://www.gitfit247.com/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/portfolio1.jpg'))
	  @portfolio = Portfolio.create!(title: "PerfectWedding - Your Personal Wedding Planner", description: "PerfectWedding is a Wedding Planning Website and app where you can find the best wedding vendors, with prices and reviews at the click of a button. Whether you are looking to hire wedding planners or looking for the top photographers, or just some ideas and inspiration for your wedding. PerfectWedding can help you solve your wedding planning woes through its unique features.", image: file, language: ".net , Angular6", web_link: "https://www.perfectweddingguide.com/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/portfolio4.jpg'))
	  @portfolio = Portfolio.create!(title: "18000miles - an amazing way to connect people", description: "18000miles is an amazing social platform as well as Local & travel website where backpackers can share their memorable journeys.", image: file, language: "ReactJs, ROR", web_link: "", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/icodoc.jpg'))
	  @portfolio = Portfolio.create!(title: "ICODOG - cryptocurrency", description: "In ICODOG they present cryptocurrency in its best light. At the same time, it ensure equality of opportunity for members, enabling big and small investors to invest in promising Crypto projects. It feel that this is in accordance with the philosophy of Satoshi Nakamoto..", image: file, language: "Python, ReactJS", web_link: "", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/post-car.png'))
	  @portfolio = Portfolio.create!(title: "Postyourcars", description: "This provides a Smart Web and App based action platform that specialize in the sell and buy of automobiles which assists user and dealer. In order to conveniently and safely help trade used vehicles that are dispersed unevenly throughout the local market.", image: file, language: "Python, ReactJS", web_link: "https://postyourcars.com/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/portfolio2.jpg'))
	  @portfolio = Portfolio.create!(title: "Transitiv - For marketers", description: "Transitiv is an innovative platform for all marketer which connects all of your customer data to give the marketer a single customer view.", image: file, language: "ROR, Angular6", web_link: "https://transitiv.io/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/smartlead.jpg'))
	  @portfolio = Portfolio.create!(title: "Smartleads", description: "Smartleads help you to Stop wasting your time with unqualified leads kicked around to multiple contractors. Start interacting with high intent homeowners needing your help in real-time. It helps Manage conversations with your prospects also Set and manage appointments.", image: file, language: "ROR, Angular6", web_link: "https://www.smartleads.so/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/mybithday.jpg'))
	  @portfolio = Portfolio.create!(title: "Make my Bday", description: "This is a platform where you can find everything for your kid's Birthday. It is the easiest way to organize a birthday party where you can choose venue at low price, book it, do payment and it will provide unlimited benefits enjoy it.", image: file, language: "ROR, Angular6", web_link: "https://makemybday.evolan.net/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/diy.jpg'))
	  @portfolio = Portfolio.create!(title: "Diyenergyreport", description: "With this energy efficiency tool, you will be able to gain a clear understanding of how your home works as a system and which aspects of your home are keeping you away from enjoying maximum comfort and savings.", image: file, language: "ROR, Angular6", web_link: "https://diyenergyreport.com/", web_type: "Web Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/fuel.png'))
	  @portfolio = Portfolio.create!(title: "IOT Based Fuel Management System", description: "It is an Internet of Things Fuel Management platform, utilizing proprietary Fuel Sensors. It is commercially available industrial fuel sensors, with the aim to connect stationary or mobile fuel tanks to the cloud and provide deep insight of their operational and management needs.", image: file, language: "Python, React", web_link: "", web_type: "Ios portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/Smartblb.png'))
	  @portfolio = Portfolio.create!(title: "IOT based application for a LED manufacturer", description: "It is an IOT product by which we increased energy savings, efficiency, and operational insight by instrumenting in manufacturing plant with intelligent LED lighting and smart sensor-based Industrial IoT (IIoT) solutions.", image: file, language: "Python, Vue.js", web_link: "", web_type: "Ios portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/Smartbin.png'))
	  @portfolio = Portfolio.create!(title: "IOT based Waste Management", description: "We implemented the smart waste management using IoT. This system assures the collection of garbage when the garbage level reaches its maximum level. The system will thus provide accurate reports, increasing the efficiency of the system.", image: file, language: "Rails, React", web_link: "", web_type: "Ios portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/bitfex.jpg'))
	  @portfolio = Portfolio.create!(title: "Bitfex", description: "Bitfex is a Crypto Derivatives Exchange, providing traders a diverse range of trading products, a highly secure and intuitive trading interface and is registered in Seychelles.", image: file, language: "IOS ANDROID", web_link: "", web_type: "Mobile Portfolio")

	file  = File.open(File.join(Rails.root,'app/assets/images/images/giftpod.jpg'))
	  @portfolio = Portfolio.create!(title: "Giftpod", description: "GiftPods is created to capture the memories. A GiftPod is an audio memory in the form of a private podcast, that can be recorded and given for any occasion.", image: file, language: "IOS ANDROID", web_link: "https://www.giveagiftpod.com/", web_type: "Mobile Portfolio")

	file  = File.open(File.join(Rails.root,'app/assets/images/images/nyfsy.png'))
	  @portfolio = Portfolio.create!(title: "Nefsy", description: "Nefsy provides you with an opportunity to give back to those in need every day while you avail discounts for dining at restaurants. Every meal you buy with nefsy will also feed someone hungry.", image: file, language: "IOS ANDROID", web_link: "https://nefsy.com/", web_type: "Mobile Portfolio")

	file  = File.open(File.join(Rails.root,'app/assets/images/images/gitfitmob-portfolio.jpg'))
	  @portfolio = Portfolio.create!(title: "GITFIT", description: "Gitfit is a fitness application where coaches manages their athletes. In this platform coaches can sell memberships to their athletes and tracks their fitness parameters with a well architectures fitness features of the application. Coaches and athletes and communicate and track reports, questions, marcors etc over this platform.", image: file, language: "React-Redux, Python-Django, React Js", web_link: "https://www.gitfit247.com/", web_type: "Mobile Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/story_board.jpg'))
	  @portfolio = Portfolio.create!(title: "Storyboard - an amazing way to connect people", description: "Storyboard is the first mobile app that allows companies, teams, and organizations to use the power of podcasting, just for their internal audiences", image: file, language: "IOS ANDROID", web_link: "https://www.storyboardthat.com/", web_type: "Mobile Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/dollar_mob.jpg'))
	  @portfolio = Portfolio.create!(title: "DollarWatcher - business in your neighborhood", description: "Dollarwatcher is the technology platform for every business in your neighborhood – with features that are needed by restaurants and service businesses like nail salons, dry cleaners, etc.", image: file, language: "IOS ANDROID", web_link: "", web_type: "Mobile Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/farma_mob.jpg'))
	  @portfolio = Portfolio.create!(title: "FamaCash - Money Transfer Platform", description: "FamaCash is an independent, technology-rich Money Transfer Platform. As a mobile and open digital payments marketplace, they give customers and merchants the exibility to use multiple services from one company.", image: file, language: "IOS ANDROID", web_link: "https://www.famacash.com/portfolios", web_type: "Mobile Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/van_mob.jpg'))
	  @portfolio = Portfolio.create!(title: "VanMile - Mobile App available", description: "It is moving & delivery Mobile App available on Apple and Google Play Store(s). Where you can book your request instantly at your own fingertips. Booking requests – Accept or reject a booking request. When you accept a request, notication gets sent to that shipper", image: file, language: "IOS ANDROID", web_link: "https://vanmile.com/", web_type: "Mobile Portfolio")

	  file  = File.open(File.join(Rails.root,'app/assets/images/images/icck_mob.jpg'))
	  @portfolio = Portfolio.create!(title: "ICHK - an amazing way to connect people", description: "ICHK Dining Club is the exclusive lifestyle membership to HongKong’s leading waterfront luxury hotel, the InterContinental HongKong. This new app oers ICHK Dining Club members total convenience.", image: file, language: "IOS ANDROID", web_link: "", web_type: "Mobile Portfolio")
end

#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'thoughtwin@example.com', password: 'password', password_confirmation: 'password')
