// <!DOCTYPE html>
// <html>
// <head>
//   <meta charset="utf-8">
//   <title>SongList</title>
//   <style>
//     body {
//       font-family: Helvetica, Arial, sans-serif;
//       font-size: 18px;
//     }
//
//     .container {
//       margin: 20px auto;
//       width: 500px;
//       border: 1px solid #e6e6e6;
//       border-radius: 3px;
//     }
//
//     h1 {
//       text-align: center;
//     }
//
//     form {
//       padding: 0 0 20px;
//     }
//
//     input#new-todo {
//       display: block;
//       width: 478px;
//       border-radius: 3px;
//       border: 1px solid #e6e6e6;
//       padding: 10px;
//       font-size: 18px;
//     }
//
//     ul#todolist {
//       list-style: none;
//       margin: 0;
//       padding: 0;
//     }
//
//     ul#todolist li {
//       padding: 5px;
//       border: 1px solid #e6e6e6;
//       border-radius: 3px;
//     }
//
//     ul#todolist li:hover {
//       background-color: #e6e6e6;
//     }
//
//     ul#todolist .todo.completed label {
//       text-decoration: line-through;
//       color: #999;
//     }
//
//     .footer {
//       margin-top: 10px;
//       background: #323232;
//       color: #e6e6e6;
//       padding: 5px;
//       border-bottom-left-radius: 3px;
//       border-bottom-right-radius: 3px;
//     }
//
//     .footer a:link,
//     .footer a:hover,
//     .footer a:visited {
//       color: #e6e6e6;
//       text-decoration: none;
//     }
//
//     .footer a:hover {
//       text-decoration: underline;
//     }
//   </style>
// </head>
// <body>
//   <div class="container">
//     <h1>Songs</h1>
//
//     <form onSubmit="submitSong(); return false">
//       <input type="text" id="new-song" placeholder="Title of the song">
//       <input type="integer" id="year_of_release" placeholder="Year of release">
//
//     </form>
//
//     <ul id="song">
//       <li class="song">
//         <label for="todo-1">song 1</label>
//       </li>
//       <li class="todo completed">
//         <label for="todo-2">song 2</label>
//       </li>
//     </ul>
//     <div class="footer">
//     </div>
//   </div>
//
//   <script>
//
//     function createTodo(title) {
//     var song = "song-" + songId();
//
//     var label = $('<label></label>')
//       .html(title);
//
//     var tableRow = $('<tr class="song"></td>')
//       .append($('<td>').append(label));
//
//     $("#song").append( tableRow );
//     }
//
//     function showError(message) {
//       var errorHelpBlock = $('<span class="help-block"></span>')
//         .attr('id', 'error_message')
//         .text(message);
//
//       $("#formgroup-title")
//         .addClass("has-error")
//         .append(errorHelpBlock);
//
//     $("form").bind('submit', submitSong);
//   </script>
//
// </body>
// </html>
