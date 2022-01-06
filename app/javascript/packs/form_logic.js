var currentTab = 0;
document.addEventListener("DOMContentLoaded", function(event) {
  showTab(currentTab);
  document.getElementById("nextBtn").onclick = () => nextPrev(1);
  document.getElementById("prevBtn").onclick = () => nextPrev(-1);
});



function showTab(n) {
  var tabs = document.getElementsByClassName("tab");
  tabs[n].style.display = "block";
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (tabs.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
  document.getElementById("nextBtn").innerHTML = "Next";
  }
// fixStepIndicator(n)
}

function nextPrev(n) {
  if (n > 0 && !reportFormValidity()) return;

  var tabs = document.getElementsByClassName("tab");
  tabs[currentTab].style.display = "none";
  currentTab = currentTab + n;
  if (currentTab >= tabs.length) {
    document.querySelector("form").submit();
    return false;
// document.getElementById("nextprevious").style.display = "none";
// document.getElementById("all-steps").style.display = "none";
// document.getElementById("register").style.display = "none";
// document.getElementById("text-message").style.display = "block";
  }
  showTab(currentTab);
}

function reportFormValidity() {
  const tabs = document.getElementsByClassName("tab");
  const visibleInputs = tabs[currentTab].getElementsByTagName("input");
  for (input of visibleInputs) {
    if (!input.reportValidity()) {
      return false;
    }
  }
  return true;
}
