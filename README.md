# README


Inserted suggestion MayankConversation opened. 3 messages. 1 message unread.

Skip to content
Using Gmail with screen readers

1 of 48,702
Kuvera Assignment
Inbox
x

vatsala parmar
Sun, Apr 14, 5:18 PM (7 hours ago)
Create a simple Front end form which takes date and invested amount as a parameter and computes the investment value as of today. For example, If I had invested

Navin Ranga Eshwar
Sun, Apr 14, 9:40 PM (2 hours ago)
Code is available here: https://github.com/navinre/test/tree/nav-calculator Followed these links: https://rails-4-0.railstutorial.org/book/demo_app https://stac

Navin Ranga Eshwar
Attachments
12:32 AM (1 minute ago)
to me


-- 
Navin Ranga Eshwar


Attachments area

# NAV Calculator

This is a RAILS application which calculates and returns the total investment value from the time investment was made. User needs to select the fund which needs they have invested in, amount invested in that fund and time of investment. Based on the number of units owned by that user, it calculates the current worth of that investment.

## Approach

* User selects the desired Fund.
* Fills in other details and Submits the form.
* Database is populated with historical NAV of the available funds.
* Once submitted, based on the data available, it calculates the number of units owned by the user
* Computes the current value of the investment based on the number of units and current NAV.
* Prints the current investment valye in the screen.

## Schema

### Fund Table

Maintains the details of the Fund

```
fund
  name :string
  code :string  
```

### Fund History Table

Contains the NAV value of each fund based on date

```
fund_history
  fund_id :id # Foreign Key
  nav  :float  
  date  :date   
```

## Setting Up the Application

Data is poulated from `NAV-HISTORY.txt` maintained in `storage` folder.

```
git clone <current_url>
bundle install
rake db:migrate
rake db:seed
rails s

```

Once the application has started, application can be accessed via web-browser `http://localhost:3000`

## Actions

CRUD Operations are availble for Funds.

```
http://localhost:3000/funds
```

CRUD Operations are availble for Fund History.
```
http://localhost:3000/fund_histories
```

## End points

```
        calculator_submit GET    /calculator/submit(.:format)                                                             calculator#submit
           fund_histories GET    /fund_histories(.:format)                                                                fund_histories#index
                          POST   /fund_histories(.:format)                                                                fund_histories#create
         new_fund_history GET    /fund_histories/new(.:format)                                                            fund_histories#new
        edit_fund_history GET    /fund_histories/:id/edit(.:format)                                                       fund_histories#edit
             fund_history GET    /fund_histories/:id(.:format)                                                            fund_histories#show
                          PATCH  /fund_histories/:id(.:format)                                                            fund_histories#update
                          PUT    /fund_histories/:id(.:format)                                                            fund_histories#update
                          DELETE /fund_histories/:id(.:format)                                                            fund_histories#destroy
                    funds GET    /funds(.:format)                                                                         funds#index
                          POST   /funds(.:format)                                                                         funds#create
                 new_fund GET    /funds/new(.:format)                                                                     funds#new
                edit_fund GET    /funds/:id/edit(.:format)                                                                funds#edit
                     fund GET    /funds/:id(.:format)                                                                     funds#show
                          PATCH  /funds/:id(.:format)                                                                     funds#update
                          PUT    /funds/:id(.:format)                                                                     funds#update
                          DELETE /funds/:id(.:format)                                                                     funds#destroy
                     root GET    /                                                                                        calculator#index
```
README.md
Displaying README.md.
