<% if (session == null) {
        out.println("logout");
    } else if (session.getAttribute("idleflag") == null) {
        out.println("logout");
    } else {
        out.println(session.getAttribute("idleflag"));
    }%> 
