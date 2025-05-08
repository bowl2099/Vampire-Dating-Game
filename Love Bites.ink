VAR affection = 0
VAR outfit_casual = false
VAR outfit_fancy = false
VAR outfit_goth = false
VAR outfit_baggy = false
VAR gift = false

You wake up. It's a big day today. Don't tell me you've already forgotten. 

* Of course I haven't forgotten ... but can you tell me what today is, anyway? Just to be safe.

(Sigh) You're hopeless. It's finally the day for your big date.

** Date?

Yes! Date! You have one of those! I know, I know. It's hard to believe with how your last several dates ended, but don't fret! You have this! Especially with all the ways you've prepped for this. She's beautiful, too. One of those "goth girls" the internet keeps raving about. Irina, her name was. You pull out her dating profile and take a moment to look at her. Her pale skin and raven dark hair captivate you, and there's something about her eyes that draws you in. Those beautiful, crimson red eyes ... where was I? Ah, yes! The date! Surely, you've prepared for this!

*** ...

- You have prepared for this, haven't you?

* Define "prepared."

- Oh, my God. You're hopeless, aren't you? Alright, we still have a couple hours. We can still fix this. All we have to do is throw together an outfit to make you look ... presentable, find a gift, and make sure you can save your date! We can do this!

* I don't like that pause, but alright! Let's look through my closet. ->closet

That's the spirit! Alright, let's see what you're working with.

= closet
* Wear something casual 
Alright, something casual. Nothing too overwhelming or fancy, but still put together enough to make you look good. I like it.
~ affection = affection + 50
~ outfit_casual = true
-> gift_buying


* Wear something fancy 
Ah, there you go! A realy gentleman if I've ever seen one! I'm sure she'll love you going all out on the first date.
~ affection = affection +25
~ outfit_fancy = true
-> gift_buying

* Wear something baggy
I guess you're going to go as a slob. Sure. Why not. Let's see how this plays out.
~ affection = affection + 0
~ outfit_baggy = true
-> gift_buying

* Wear something goth
Oh, yes. You did have something of a goth phase, didn't you? Well, maybe you can bond over that (even though the "goth scene" never did feel quite right for you).
~ affection = affection -25
~outfit_goth = true
-> gift_buying

= gift_buying
 Alright, your outfit is ready. Now, then: what kind of gift do you want to give her?
 
 * Flowers 
 You enter a flower shop and paruse the different offerings available. You settle on a bouqet of roses. That seems romantic, right? You hope so, anyway.
 ~ gift = "flowers"
 ~ affection = affection +50
 -> first_date
 
 * Perfume
 You pick up a bottle of perfume from a nearby beauty parlor. Everyone likes to smell good, right? Speaking of, you did put on some cologne, right? Ah, we'll handle that when we get there.
 ~ gift = "perfume"
 ~ affection = affection +25
 ->first_date
 
 * Nothing
 Wow, you really think your charm is enough for this? Your funeral, I suppose.
 ~ affection = affection -25
 ->first_date
 
 === first_date ===
 Alright, you're all set. As you come to the Italian restaurant you agreed to meet at, you see her standing there at the entrance almost as if she's waiting to be let in. You wait there for what feels like an eternity before she noties you. "Oh, you made it!"
 *"It's nice to meet you in person!"
 "Likewise," she says with a comforting smile. She stands there for a second, almost like she's waiting for something ...
{

 - gift: Give Irina the {gift}
 "Aww, thank you so much!
 }
 
 She stands there for a while. What are you missing ... AH, yes. You need to open the door for her. You know, like a gentleman. She thanks you and walks inside of the restaurant, and you follow suit. A waiter sits you both down, and you're left in an uncomfortable silence for what feels like hours.
 
 Irina seems to tap her fingernails anxiously against the table while staring into space, and you get the idea that you should, maybe, say something. ->flirting
 
 =flirting
 
 * Ask her a question.
 You ask her how she's doing, and she snaps back to attention and nods. "It's, well, I'm not sure how I can describe it. It's just that, I don't really get out much."
 ~ affection = affection +25
 
 ** "It's okay. I'm not really that much of a social butterfly, either."
 She gives you a slight smile, and you smile back in return. "Thanks," she says while relaxing her shoulders. "I mean, there's a lot of reasons for that. I don't really go out that much during the day anymore." You think back to the photos on her dating profile and how none of them were taken in broad daylight. You ask her if she has a skin condition, and she takes a second to answer. "Something like that," she says. "I get some nasty sunburns." You suppose that makes enough sense and leave it alone.
 
 * Tell a bad joke.
 You remember a bad joke your dad once told you. "Do you know why the vampire went to the therapist?" She perks up and looks at you intensely. "Because he was acting batty!" 
 
 You could swear someone else in the restaurant dropped a pin, until her mouth shifts into a grin. She tries to keep her cool, but that lasts for a few seconds before she breaks out into a hearty laugh. I'm impressed. Though, there's something about her that catches your eye. It's almost as if her teeth are ... pointier than usual. 
 ~ affection = affection +50
 
 ...
 
 It's probably fine.
 ~ affection = affection +50
 
 - A waiter comes by and asks for your orders. Irina orders a small salad. "I always want to save room for desert," she tells you. What do you order?
 
 *A big, garlic-y pasta 
 Irina looks at you with a bit of disgust. You ask her what's wrong, and she dismisses it offhandedly. Still, she seems to keep a bit more distance from you for the rest of the night.
 ~ affection = affection - 50
 ->night_one_end
 
 *A pizza
 A bit stereotypical on your part, but nothing wrong with that, you suppose. You ask Irina if she wants a slice, and she happily accepts. "It's been so long since I've had a pizza," she says. "I've been on a weird diet recently." You ask if she's a vegan, and she pauses. "No, nothing like that." You decide to enjoy the rest of your meal without asking more questions. Hours pass, but you and Irina are too content with eating and getting to know each other to notice.
 ~affection = affection + 50
 ->night_one_end
 
 === night_one_end ===
 {
 - affection < 125:
 You both leave the restaurant, Irina walking slightly ahead of you. She stops and turns. "I know it's weird of me to ask, but is it alright if I lead you somewhere?" Alright, this is it. This is THE big break. You can feel yourself get giddier and giddier as she leads you into a dark, lonely alley. Don't you DARE think about how sketchy this alley looks. She puts her arms around your shoulders, leans in, and kisses you. Focus on how heavenly that kiss is, savor the feeling of her lips on yours. She trails down to your neck, and you feel her hot breath on your neck before the sharp, searing pain of - wait a second. 
 
 "Sharp, searing pain," what is this? Is she biting you? Is she biting you with fangs? What is she? A vampire? You try to fight back, but your strength is quickly being drained out of your body. You can't even call for help. She leaves you there to die in that alley. You don't wonder if there was any way you could have survived the night. No, your final thoughts are if you could have pursued an actual relationship. You're a fool, but I can't fault you for liking that girl. ->END
 
 - affection >= 125:
 You both leave the restaurant, Irina's hand in yours. She's cold to the touch, deathly so. You steal a glance at her, and she looks nervous. You squeeze her hand as a sort of comfort (you're reasonably sure people do that as an act of comfort), but she doesn't seem to respond. She stops, turns to you, and almost says something before deciding not to. Instead, she plants a soft kiss on your cheek. You can feel the blood rushing to your face as she does so. "I had fun," she says almost solemnly. "Let's do this again," she says before walking off into the dark of night. You smile to yourself and rub your cheek. "Yeah," you say to no one but yourself, "I'd love that." ->END
 }
 
 
 
 
 
 
 
