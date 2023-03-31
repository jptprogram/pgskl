import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="landing"
export default class extends Controller {

  static targets = ["emailFieldUpper", "emailFieldLower", "firstNameField"];

  connect() {
  }

  scrollToContact(event) {
    event.preventDefault();
    const contact = document.getElementById("contact");
    contact.scrollIntoView({ behavior: "smooth" });
    const upperEmail = this.emailFieldUpperTarget.value;
    this.emailFieldLowerTarget.value = upperEmail;
    this.firstNameFieldTarget.focus();
  }
}
