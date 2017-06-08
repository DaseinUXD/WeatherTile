using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace WeatherTile.Models
{
  public class Response
  {
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int ResponseID { get; set; }
    public string Current { get; set; }
    public string Daily { get; set; }

    public virtual ICollection<Request> Requests { get; set; }
  }
}
