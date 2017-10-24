#Final GA Project- CS:Helpdesk

My inspiration for this project came from my experience in the customer service industry. I used many tools including help desks and wanted to recreate my own.

I have used the Sentiment Gem to mark messages's based on their positive or negative comments to ensure messages are prioritised.

#My project uses, HTML, Bootstrap, SCSS and Ruby on Rails. Also uses devise, sentiment and rails-admin gems.

I also used:

The command line
Source control - git hub
Researched using various tutorials, websites, books and links
Comments in code
Deployment to Heroku
Trello

#Snippet of code?

Sentiment colour score:

<% if ticket.score > 0.3 %>
  <div class="bubble happy"></div>
<% end %>
<% if ticket.score >= 0 && ticket.score <= 0.2  %>
  <div class="bubble neutral"></div>
<% end %>
<% if ticket.score < 0  %>
  <div class="bubble sad"></div>
<% end %>


#What issues did I experience and what I did not get working?

I Had trouble with the devise and rails admin gem due to their limitations to personalise.

I learnt a lot about Ruby during this project, however there is still much more to learn.

#What I would like to add?

Social media icons
Clean, condensed code
More styling
More features:

  - Emails inbound and outbound
  - Staff chat room
  - Daily tips
  - Image / file upload

#What I would do next time?

Take a bit more time in understanding what I want the app to do and achieve
Spend more time to understand the navigation and what I need to do to connect the models together

#Whats next?

I plan to continue to work on this project in my own time, tidy up the code and add further features. i would also like to remove the rails-admin and make my own version.

#Acknowledgments

http://rubyonrails.org/ - for a great guide to all things Ruby https://deliveroo.com.au/ - for keeping me fed and sane www.w3schools.com - for Bootstrap guide www.stackoverflow.com

For pretty much everything else - TA's / Tutors / Class mates in WDI23 at GA.

Nick T - for helping me on the night before project showcase to implement bootstrap styling

License

The MIT License (MIT)

Copyright (c) 2013 Thomas Park

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
