<!DOCTYPE html>
<html>
  {include file='header.tpl' title="New article page"}
  
  </head>

  <body>
    {include file='navbar.tpl'} 

    <div id="wrapper">

    {include file='sidebar.tpl' posts=$posts}

      <div id="page-content-wrapper">
        <div class="wrapper">
            <div class="page-content inset">
                <div class="row">
      
            	<form class="form-horizontal">
                    <!-- Form Name -->
                    <legend><h2>New Article</h2></legend>

                    <!-- Text input-->
                    <div class="control-group">
                      <label class="control-label" for="title_input">Title</label>
                      <div class="controls">
                        <input id="title_input" name="title_input" placeholder="Article Title" class="input-xlarge" type="text">
                      </div>
                    </div>

                    <!-- Textarea -->
                    <div class="control-group">
                      <label class="control-label" for="body_input">Body</label>
                      <div class="controls">                     
                        <textarea id="body_input" name="body_input" placeholder="Article Body"></textarea>
                      </div>
                    </div>
                    <!-- Multiple Checkboxes (inline) -->
                    <div class="control-group">
                      <label class="control-label" for="checkboxes"></label>
                      <div class="controls">
                        <label class="checkbox inline" for="checkboxes-0">
                          <input name="checkboxes" id="checkboxes-0" value="Featured" type="checkbox">
                          Featured
                        </label>
                      </div>
                    </div>
                    <!-- Button -->
                    <div class="control-group">
                      <label class="control-label" for="post_button"></label>
                      <div class="controls">
                        <button id="post_button" name="post_button" class="btn btn-default">Publish</button>
                      </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="push"></div>
        </div>
      {include file='footer.tpl'}
      </div>       
      <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  </body>

</html>
