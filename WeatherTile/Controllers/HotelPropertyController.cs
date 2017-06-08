using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WeatherTile.DAL;
using WeatherTile.Models;

namespace WeatherTile.Controllers
{
    public class HotelPropertyController : Controller
    {
        private ForecastContext db = new ForecastContext();

        // GET: HotelProperty
        public ActionResult Index()
        {
            return View(db.Propertys.ToList());
        }

        // GET: HotelProperty/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HotelProperty hotelProperty = db.Propertys.Find(id);
            if (hotelProperty == null)
            {
                return HttpNotFound();
            }
            return View(hotelProperty);
        }

        // GET: HotelProperty/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HotelProperty/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,FtpBox,City,State,ZipCode,DaysBeforePSM")] HotelProperty hotelProperty)
        {
            if (ModelState.IsValid)
            {
                db.Propertys.Add(hotelProperty);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hotelProperty);
        }

        // GET: HotelProperty/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HotelProperty hotelProperty = db.Propertys.Find(id);
            if (hotelProperty == null)
            {
                return HttpNotFound();
            }
            return View(hotelProperty);
        }

        // POST: HotelProperty/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,FtpBox,City,State,ZipCode,DaysBeforePSM")] HotelProperty hotelProperty)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hotelProperty).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hotelProperty);
        }

        // GET: HotelProperty/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HotelProperty hotelProperty = db.Propertys.Find(id);
            if (hotelProperty == null)
            {
                return HttpNotFound();
            }
            return View(hotelProperty);
        }

        // POST: HotelProperty/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HotelProperty hotelProperty = db.Propertys.Find(id);
            db.Propertys.Remove(hotelProperty);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
