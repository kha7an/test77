import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="foo"
export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    console.log("Foo controller connected")
  }

  fetch() {
    fetch('/foos')
        .then(response => response.json())
        .then(data => {
          this.outputTarget.innerHTML = JSON.stringify(data, null, 2)
        })
  }
}
