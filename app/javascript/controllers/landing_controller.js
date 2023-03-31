import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="landing"
export default class extends Controller {
  connect() {
    console.log("Landing controller connected");
  }
}
