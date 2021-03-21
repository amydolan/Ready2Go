/*
  I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/Registration-Page-Project
  https://www.youtube.com/watch?v=TJXTfF55QDE&t=2056s
 */

package eg.xadmin.register.model;

/**
 *
 * @author amydolan
 */
public class Member {
    
    private String username, password, email, jobtitle;

	
	public Member() {
		super();
	}

	public Member(String username, String password, String email, String jobtitle) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.jobtitle = jobtitle;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
    
}
