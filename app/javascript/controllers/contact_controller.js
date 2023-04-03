import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact"
export default class extends Controller {
  static targets = [ "name", "phone", "email" ]

  connect() {
  }

  // remove d-none from each button with a cool animation
  show() {
    this.nameTarget.classList.toggle("d-none")
    this.phoneTarget.classList.toggle("d-none")
    this.emailTarget.classList.toggle("d-none")
  }

  hide() {
    this.nameTarget.classList.add("d-none")
    this.phoneTarget.classList.add("d-none")
    this.emailTarget.classList.add("d-none")
  }
}
