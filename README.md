Here is the diagram I Have created in mySQL for the Backend of the E-Commerce application I Posted .
With this system design a user could be able to open two accounts with one email and phone number(one buyer account and one seller account).
a shipping cart for calculation their expenses before purchase,
and a product table associated product image so a product could have many Images but in backend logic You can control how many Images a user could post,
and a Category table associate with product table and parent of its own if the reference is applicable.
such an amazing technique to categorize your Product in inventory and warehouse or even in the application it self.what I mean by these for begginers
who wants to know about system designs or SQL databases:

Electronics: id 1 (Parent Categories)
 pc: id 3 (Sub Categories)
 tv: id 4
 laptop: 5
Fashion: id 2 (Parent Categories):
 (Sub Categories)
 woman: id 6
 man: id 7
 kids: id 8
very organized if you check amazon.com their filtering works like this.
and we have a delivery methods table which can be use for different types of delivery like : normal , standard and fast
normal , 3-5 business days , cost : 40
standard, 5-7 business days , cost: free
fast, overnight , cost: 100.
Of course you change this accourding to your project requirement.

It needs some Data Engineering to for User Profile to collect users Data like: Clicks , Browser history, previews purchase,
and user related for machine learning models to Suggest Products for buyers to make a purchase. 
Which I will update soon right now I want to create some backend APIs to integrate with front-end and make it work like full-stack application!

