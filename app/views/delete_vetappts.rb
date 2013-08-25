<div data-role="page" id="delete_vetappt">
  <div data-role="header">
    <h1>Delete Appt</h1>
  </div>
  <div data-role="content">
    <h1 style="text-align: center;">Delete Appointment</h1>
    <p style="text-align: center;">Are you sure?</a></p>
    <p><%= button_to "Delete", @grm_vetappt, :method => :delete %></p>
    <p><a href="grm_vetappt" data-role="button" data-rel="back">Cancel</a></p>
  </div>
</div>