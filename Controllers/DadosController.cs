using Microsoft.AspNetCore.Mvc;
using SampleTcc.Models;
using System.Net;

namespace SampleTcc.Controllers
{
    public class DadosController : Controller
    {
        public IActionResult Index()
        {
            Global.count++;
            DadosModel model = GetModel();
            return View(model);
        }

        private DadosModel GetModel() {
            DadosModel model = new DadosModel();
            model.ServerName = Dns.GetHostName();
            model.RequestCount = Global.count;
            model.Version = "1.0";
            return model;
        }
    }
}
