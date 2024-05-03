import { Controller } from "stimulus"

export default class extends Controller {
  format() {
    new Cleave(this.element, {
      numericOnly: true,
      delimiters: ["-"],
      blocks: [3, 2, 4],
      uppercase: true
    });
  }
}