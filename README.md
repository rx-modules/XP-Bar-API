# === XP API - Completely renovated and updated for 1.14 ===

This datapack is an API that allows you to customize the xp bar however you like. It's very easy to set a percentage of the bar and control it through various methods. Also, this might work for 1.13.

All you have to do is drop the `xp_api` into your datapacks folder and `/reload` and it'll set itself up!

This datapack is very simple to use: Just set `xp_input` to what you need and call one of three functions: `xp:instant`, `xp:linear`, and `xp:smooth`. Example to set bar instantly to 100%

    scoreboard players set @s xp.input 100
    function xp:instant

&#x200B;

Here is what each function does:

* `xp:instant` \- instantly sets the bar to the input percentage
* `xp:linear` \- linearly grows or shrinks the bar over a certain amount of time.
   * `scoreboard players set @s xp.timer <time>` to control the amount of time it should take
   * If xp.timer is not set, automatically uses the default value (adjustable)
* `xp:smooth` \- smoothly sets the bar to the input percentage
   * This is a smooth animation that gives a little flavor to the bar
   * `scoreboard players set @s xp.smooth <smoothness>` to control the speed of the animation
* This value is also controlable via a default value. I suggest you keep this between 2 and 10

&#x200B;

The api can also do a bit more then just the simple percentage -> bar. There are multiple functions you can call before the final `xp:<action>` function: `xp:levels`, `xp:levels_and_bar`, `xp:raw`

* `xp:levels` \- adjusts the levels instead of the bar
* `xp:levels_and_bar` \- adjusts both the levels and the bar (bar is copied to the levels)
* `xp:raw` \- converts the scoreboard input into the direct xp points values. this emulates the mc leveling system.

&#x200B;

This example demonstrates how to control both the levels and the bar via a timer

    scoreboard players set @s xp.input 100
    scoreboard players set @s xp.timer 200
    function xp:levels_and_bar
    function xp:linear

As you see, you can mix and match and really control every aspect of your xp bar.

You can also control all the default values that the library will use. obj: `xp.constants`, vars: `$timer`, `$smooth`, `$cleanup` (more technical)

&#x200B;

`function xp:get` will store the current percentage (or raw points) into xp.output You can chain the functions into this as well

    function xp:raw
    function xp:get
    tellraw @s {"score":{"objective":"xp.output", "name":"@s"}}

Also, while the xp bar is being utilized by the `xp:linear` and `xp:smooth` functions, a tag, `xp.lock`, is placed on the player You can use this to test whether you maybe wait for the timer/animation to finish before calling an `xp:instant`

    execute unless entity @s[tag=xp.lock] run function xp:instant

Finally, you can call `xp:stop` to cancel the current action (aka cancel `xp:linear`, and `xp:smooth`)

&#x200B;

Please look at the xp\_examples datapack for more specific usage of the datapack (probably broken in 1.13) This datapack took a lot of time to plan and design so I'd appreciate any feedback you guys can give me :) You can contact me on discord or on reddit (Discord: @rx#1284).

Some extra videos of things you can do:

[https://streamable.com/v3gk5](Bow Quiver)

[https://streamable.com/1hjnv](Zombie Health)

[https://streamable.com/f829f](Elytra Durability)

Enjoy!
