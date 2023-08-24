import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]


  connect() {
    console.log("hello")
  }

  fire () {
    this.togglableElementTarget.classList.toggle("d-none");
  }

  openNav() {
    console.log("Hvordan");
    this.element.classList.toggle("left-12")
  }
}
