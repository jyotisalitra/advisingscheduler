<div id="navbar">
    <% 
        int rank = -1;
        int sessionid = -1;
        if(!(session.getAttribute("id") == null)){
        sessionid = Integer.parseInt((String)session.getAttribute("id"));
    }
        if(!(session.getAttribute("rank") == null)){
        rank = Integer.parseInt((String)session.getAttribute("rank"));
    }
    %>
            
    <div class="clearfix sub-nav">
        <div class="container-fluid">
            <ul>
            <li><a href="http://www.uta.edu" target="_blank">UTA.edu</a></li>
            <li><a href="http://www.uta.edu/mymav" target="_blank">MyMav</a></li>
            <li><a href="http://www.outlook.com/mavs.uta.edu" target="_blank">Student Email</a></li>
            <li><a href="http://owa.uta.edu/" target="_blank">Faculty/Staff Email</a></li>
        </ul>
        <form>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button">Search</button>
                </span>
              </div><!-- /input-group -->
        </form>
        </div>
    </div>
    
    <ul class="navigation">
                <li class="home">
                    <a href="index.jsp" >Home</a>
                </li>
            
                
                
    <%
        if(session.getAttribute("rank") == null)
        {
            
        }
        else{
            if (rank == 1){
                out.print("<li class='account'>"
                        + "<a href='CreateAccount.jsp' >Create Account</a>"
                        + "</li>");
            }
            if (rank == 0 || rank == 2){
                out.print("<li class='calendar'>"
                        + "<a href='AdvisorCalendar.jsp' >Calendar</a>"
                        + "</li>");
                out.print("<li class='timeslot'>"
                        + "<a href='modifyTimeslot.jsp' >Time slot</a>"
                        + "</li>");
                out.print("<li class='appointment'>"
                        + "<a href='modifyAppointment.jsp' >Appointment</a>"
                        + "</li>");
            }
            if (rank == 3){
                out.print("<li class='schedule'>"
                    + "<a href='schedule.jsp' >Schedule Appointment</a>"
                    + "</li>");
                out.print("<li class='appointment'>"
                        + "<a href='modifyAppointment.jsp' >Appointment</a>"
                        + "</li>");
            }
            
            if (rank == 1 || rank == 0 || rank == 2 || rank == 3){
                out.print("<li class='account'>"
                        + "<a href='EditAccount.jsp' >Edit Account</a>"
                        + "</li>");
                out.print("<li class='logout'>"
                        + "<a href='logout.jsp' >Log Out</a>"
                        + "</li>");
            }
        }
        if ((session.getAttribute("id") == null) || (session.getAttribute("rank") == null)){
            out.print("<li class='schedule'>"
                    + "<a href='schedule.jsp' >Schedule Appointment</a>"
                    + "</li>");
        }
    %>                
            
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            Department 
        <span class="caret"></span>   
        </a>
          
        <ul class="dropdown-menu" role = "menu">
                 <li><a href="http://www.uta.edu/bioengineering/" target="_blank">Bio Engineering</a></li>
                 <li><a href="http://www.uta.edu/ce/" target="_blank">Civil Engineering</a></li>
                 <li><a href="https://cse.uta.edu/" target="_blank">Computer Science and Engineering</a></li>
                 <li><a href="http://www.uta.edu/ie/" target="_blank">Industrial Engineering</a></li>
                 <li><a href="http://www.uta.edu/mse/" target="_blank">Material Science and Engineering</a></li>
                 <li><a href="http://www.uta.edu/mae/" target="_blank">Mechanical and Aerospace Engineering</a></li>
                 
  <li><a href="https://www.uta.edu/business/" target="_blank">College of Business</a></li>
               
            </ul>  
            
    </li>
 
          </ul>
  
    </div>

   