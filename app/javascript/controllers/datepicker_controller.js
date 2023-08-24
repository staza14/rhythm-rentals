import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {


  connect() {
    flatpickr(this.element,
      {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      disable: [
          function(date) {
              // disable every multiple of 8
              return !(date.getDate() % 8);
          }
      ]
  });
    console.log("hello from date")
  }
}
