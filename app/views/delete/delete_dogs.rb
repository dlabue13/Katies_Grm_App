<div data-role="page" id="delete_dog">
  <div data-role="header">
    <h1>Delete Appt</h1>
  </div>
  <div data-role="content">
    <h1 style="text-align: center;">Delete Dog</h1>
    <p style="text-align: center;">Are you sure?</a></p>
    <p><%= button_to "Delete", @grm_dog, :method => :delete %></p>
    <p><a href="grm_dog" data-role="button" data-rel="back">Cancel</a></p>
  </div>
</div>