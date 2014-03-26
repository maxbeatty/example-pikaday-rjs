example-pikaday-rjs
===================

[Pikaday](https://github.com/dbushell/Pikaday) previous to v1.2.0 would not optimize correctly with r.js ([example of error](http://maxbeatty.com/example-pikaday-rjs/requirejs.html)).

It works fine with normal RequireJS ([working example](http://maxbeatty.com/example-pikaday-rjs/requirejs.html))

The fix: use [v1.2.0](https://github.com/dbushell/Pikaday/releases/tag/1.2.0) or above where they [use proper UMD-wrapper](https://github.com/dbushell/Pikaday/commit/7be03e8bfbf01b87687d584e7a1cd97cb41febe0)
