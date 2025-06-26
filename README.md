Chatbot for food orders online delivery [Egyptian Food] using Dialogflow
===================
Build a chatbot for food orders online delivery using Google's Dialogflow ES. This bot supports two options,

1) New Order
2) Track Order

1) New Order: Sample Conversation


![chat-website](https://github.com/user-attachments/assets/0cd167a9-355d-4ff4-8667-cc5971417846)


```
Bot: How can I help you? You can say things like (1) New Order (2) Track Order
User: New Order
Bot: What would you like to have? You can say things like 2 Kunafa, one basbousa.
     Only order from this list: ful wa tamia, feteer meshaltet, koshari, kofta, mahshi, kebda, basbousa, Roz bel laban, kunafa
User: I would like to have 2 Roz bel laban and one plate of koshary
Bot: Added 2 Roz bel laban and 1 koshary. Anything else?
User: Oh yes, add one piece of basbosa, please
Bot: Sure. Now we have 2 Roz bel laban, 1 koshary and 1 basbosa. Anything else?
User: Well, you know my cholesterol came high so let's remove basbosa
Bot: Sure. Now we have 2 Roz bel laban, and 1 koshary. Anything else?
User: Nope. That's it
Bot: Awesome. Your order is placed. Order id # 45. Your total bill is 19$ which you can pay at the time of delivery!
```

2) Track Order: Sample Conversation

```Bot: How can I help you? You can say things like (1) New Order (2) Track Order
User: Track Order
Bot: What is your order id?
User: 45
Bot: Order # 45, is in transit
User: How about 41
Bot: Order # 41 is delivered
```


Directory structure
===================
backend: Contains Python FastAPI backend code
db: contains the dump of the database. you need to import this into your MySQL db by using MySQL workbench tool
dialogflow_assets: this has training phrases etc. for our intents
frontend: website code

Install these modules
======================

pip install mysql-connector
pip install "fastapi[all]"

OR just run pip install -r backend/requirements.txt to install both in one shot

To start fastapi backend server
================================
1. Go to backend directory in your command prompt
2. Run this command: uvicorn main:app --reload

ngrok for https tunneling
================================
1. To install ngrok, go to https://ngrok.com/download and install ngrok version that is suitable for your OS
2. Extract the zip file and place ngrok.exe in a folder.
3. Open windows command prompt, go to that folder and run this command: ngrok http 80000

NOTE: ngrok can timeout. you need to restart the session if you see session expired message.
