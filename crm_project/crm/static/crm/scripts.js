// Collect selected record number option value
window.getSelectedOption = function () {
    const recordDropdown =
        document.getElementById("record-number");

    const recordDropdownValue =
        recordDropdown.value;

    const url = new URL(window.location.href);

    url.searchParams.set("page", "1");
    url.searchParams.set(
        "record-number",
        recordDropdownValue
    );

    localStorage.setItem(
        "record-number",
        recordDropdownValue
    );

    window.location.assign(url.toString());
};