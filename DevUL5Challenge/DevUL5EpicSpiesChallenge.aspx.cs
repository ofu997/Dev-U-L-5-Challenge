using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevUL5Challenge
{
	public partial class DevUL5EpicSpiesChallenge : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				oldCalendar.SelectedDate = DateTime.Now.Date;
				newCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
				endCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
			}
		}

		protected void assignButton_Click(object sender, EventArgs e)
		{   //total days of last assignment
			TimeSpan duration = endCalendar.SelectedDate.Subtract(newCalendar.SelectedDate);
			double totalcost = duration.TotalDays * 500.0;
			// if > 21 dys then add $1000
			if (duration.TotalDays > 21)
			{
				totalcost += 1000.0;
			}
			resultLabel.Text = String.Format("Assignment of {0} to assignment {1} is authorized. budget total: {2:C}",
				codeNameTextBox.Text,
				newAssignmentTextBox.Text,
				totalcost.ToString());
			TimeSpan timeBetweenAssignments = newCalendar.SelectedDate
				.Subtract(oldCalendar.SelectedDate);
			if (timeBetweenAssignments.TotalDays < 14)
			{
				resultLabel.Text = "Error: must allow t least two weeks betwen " + "previous assignment and new assignmetns. ";
				DateTime earliestNewAssignmentDate = oldCalendar.SelectedDate.AddDays(14);
				newCalendar.VisibleDate = earliestNewAssignmentDate;
			}
		}
	}
}