import { Controller } from "stimulus";

export default class extends Controller {
  toggleOtherInput() {
    const selectedValue = this.element.value;
    const otherCountryField = document.getElementById("other_country_name_field");
    if (selectedValue === "Other") {
      otherCountryField.classList.remove("hidden");
    } else {
      otherCountryField.classList.add("hidden");
    }
  }
}