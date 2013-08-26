<div data-role="page" id="delete_stylist">
  <div data-role="header">
    <h1>Delete Stylist</h1>
  </div>
  <div data-role="content">
    <h1 style="text-align: center;">Delete Stylist</h1>
    <p style="text-align: center;">Are you sure?</a></p>
    <p><%= button_to "Delete", @grm_stylist, :method => :delete %></p>
    <p><a href="grm_stylist" data-role="button" data-rel="back">Cancel</a></p>
  </div>
</div>