import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the User Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  connect() {
    super.connect();
    this.debounceAutosave = this.debounce(this.autosave.bind(this), 500);
  }

  async delete(event) {
    event.preventDefault();
    event.stopPropagation();

    this.showLoading();
    await this.stimulate("User#delete", event.currentTarget);
    this.hideLoading();
  }

  async create(event) {
    event.preventDefault();
    event.stopPropagation();

    const form = event.currentTarget;

    this.showLoading();
    await this.stimulate("User#create", event.currentTarget);
    this.hideLoading();
    form.reset();
  }

  showLoading() {
    document.body.classList.add("wait");
  }

  hideLoading() {
    document.body.classList.remove("wait");
  }

  toggle_other_country() {
    const otherCountryNameWrapper = this.element.querySelector('.other-country-name-wrapper')
    const selectedCountry = event.target.value

    if (selectedCountry === 'Other') {
      otherCountryNameWrapper.classList.remove('d-none')
    } else {
      otherCountryNameWrapper.classList.add('d-none')
    }
  }
}
