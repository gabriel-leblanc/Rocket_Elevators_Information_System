// Variables Globals
var typeQuote;
var priceElevator;
var numberOccupantsFloor;
var numberFloors;
var numberBasements;
var totalNumberOccupants;
var numberElevatorsRequired;
var numberStories;
var numberElevatorsColumn;
var numberElevatorsPerColumn;
var numberElevators;
var totalPriceElevator;
var installationFees;
var productLine;

// Functions that will be called on page load
$(document).ready(function () {
    // All textboxs residential
    $("#number_apartments").onlyNumber();
    $("#number_floors_residential").onlyNumber();
    $("#number_basements_residential").onlyNumber();

    // All textboxs commercial
    $("#number_distinct_businesses_commercial").onlyNumber();
    $("number_floors_commercial").onlyNumber();
    $("#number_basements_commercial").onlyNumber();
    $("#number_parking_commercial").onlyNumber();
    $("#number_elevators").onlyNumber();

    // All textboxs corporate
    $("#number_separate_companies").onlyNumber();
    $("#number_floors_corporate").onlyNumber();
    $("#number_basements_corporate").onlyNumber();
    $("#number_parking_corporate").onlyNumber();
    $("#max_number_occupants_floor_corporate").onlyNumber();

    // All textboxs hybrid
    $("#number_distinct_businesses_hybrid").onlyNumber();
    $("#number_floors_hybrid").onlyNumber();
    $("#number_basements_hybrid").onlyNumber();
    $("#number_parking_hybrid").onlyNumber();
    $("#max_number_occupants_floor_hybrid").onlyNumber();
    $("#number_hours_activity").onlyNumber();

    // Get the change in radio group "radio_quote"
    $("input[type=radio][name=radio_quote]").change(function () {
        typeQuote = $("input[name='radio_quote']:checked").val();

        switch (typeQuote) {
            case "commercial":
                $("#div-quote-residential").hide();
                $("#div-quote-commercial").show();
                $("#div-quote-corporate").hide();
                $("#div-quote-hybrid").hide();
                eraseData();
                break;
            case "corporate":
                $("#div-quote-residential").hide();
                $("#div-quote-commercial").hide();
                $("#div-quote-corporate").show();
                $("#div-quote-hybrid").hide();
                eraseData();
                break;
            case "hybrid":
                $("#div-quote-residential").hide();
                $("#div-quote-commercial").hide();
                $("#div-quote-corporate").hide();
                $("#div-quote-hybrid").show();
                eraseData();
                break;
            default:
                $("#div-quote-residential").show();
                $("#div-quote-commercial").hide();
                $("#div-quote-corporate").hide();
                $("#div-quote-hybrid").hide();
                eraseData();
        }
    });

    // Get the change in radio group "radio_quote"
    $("input[type=radio][name=product_line]").change(function () {
        productLine = $("input[name='product_line']:checked").val();
        priceElevator = 0;

        switch (productLine) {
            case "premium":
                priceElevator = "$12,345";
                break;
            case "excelium":
                priceElevator = "$15,400";
                break;
            default:
                priceElevator = "$7565";
        }

        // Show the value
        $("#lblPriceElevator").text(priceElevator);
        $("#unit_price").val(priceElevator);




        // Call the function to calculate the total price of the elevators
        calculateTotalPriceElevators();
    });
});

// Function to call quote calculate by onkeypress event
function calculateQuote() {
    typeQuote = $("input[name='radio_quote']:checked").val();

    switch (typeQuote) {
        case "commercial":
            requestQuoteCommercial();
            break;
        case "corporate":
            requestQuoteCorporate();
            break;
        case "hybrid":
            requestQuoteHybrid();
            break;
        default:
            requestQuoteResidential();
    }
}

// Function to validate only numbers
jQuery.fn.onlyNumber = function () {
    return this.each(function () {
        $(this).keydown(function (e) {
            var key = e.charCode || e.keyCode || 0;
            // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
            // home, end, period, and numpad decimal
            return (
                key == 8 ||
                key == 9 ||
                key == 13 ||
                key == 46 ||
                key == 110 ||
                key == 190 ||
                (key >= 35 && key <= 40) ||
                (key >= 48 && key <= 57) ||
                (key >= 96 && key <= 105)
            );
        });
    });
};

// Function to calculate the commercial quote
function requestQuoteCommercial() {
    numberElevators = parseInt($("#number_elevators").val());

    //console.log("Elevators required:" + numberElevators);

    // Show the value
    $("#lblNumberElevators").text(numberElevators);
    $("#elevator_need").val(numberElevators);


    // Call the function to calculate the total price of the elevators
    calculateTotalPriceElevators();
}

// Function to calculate the corporate quote
function requestQuoteCorporate() {
    numberOccupantsFloor = parseInt(
        $("#max_number_occupants_floor_corporate").val()
    );
    numberFloors = parseInt($("#number_floors_corporate").val());
    numberBasements = parseInt($("#number_basements_corporate").val());

    // Call function
    calculateQuoteCorporateOrHybrid();
}

// Function to calculate the hybrid quote
function requestQuoteHybrid() {
    numberOccupantsFloor = parseInt(
        $("#max_number_occupants_floor_hybrid").val()
    );
    numberFloors = parseInt($("#number_floors_hybrid").val());
    numberBasements = parseInt($("#number_basements_hybrid").val());

    // Call function
    calculateQuoteCorporateOrHybrid();
}

// Function to calculate the residential quote
function requestQuoteResidential() {
    var numberApartments = parseInt($("#number_apartments").val());
    numberFloors = parseInt($("#number_floors_residential").val());
    numberBasements = parseInt($("#number_basements_residential").val());

    var averageApartmentsPerFloor = numberApartments / numberFloors;

    // Ensure that the calculation will be done only if the "averageApartmentsPerFloor" is a finite number and greater than 0
    if (isFinite(averageApartmentsPerFloor) && averageApartmentsPerFloor > 0) {
        // We require an elevator shaft for every 6 apartments
        numberElevators = Math.ceil(averageApartmentsPerFloor / 6);

        numberStories = numberFloors;

        numberStories = numberFloors;

        // If the apartment has more than 20 stories
        if (numberStories > 20) {
            numberElevatorsColumn = Math.ceil(numberStories / 20);
            //console.log("Columns Required: " + numberElevatorsColumn);
            numberElevators = numberElevators * numberElevatorsColumn;
        }

        // Ensure to show the result only after the second value session
        if (numberElevators > 0) {

            //console.log("Elevators required:" + numberElevators);

            // Show the value
            $('#lblNumberElevators').text(numberElevators);

            // Call the function to calculate the total price of the elevators
            calculateTotalPriceElevators();
        }
        else {
            // Show 0 when calculation is not performed
            $('#lblNumberElevators').text('0');
        }


        // Ensure to show the result only after the second value session
        if (numberElevators > 0) {
            console.log("Elevators required:" + numberElevators);

            // Show the value
            $("#lblNumberElevators").text(numberElevators);
            $("#elevator_need").val(numberElevators);


            // Call the function to calculate the total price of the elevators
            calculateTotalPriceElevators();
        } else {
            // Show 0 when calculation is not performed
            $("#lblNumberElevators").text("0");
            $("#elevator_need").val(numberElevators);

        }
    }
}

// Function to calculate the quote corporate or hybrid
function calculateQuoteCorporateOrHybrid() {
    numberStories = numberFloors + numberBasements;
    totalNumberOccupants = numberStories * numberOccupantsFloor;
    numberElevatorsRequired = Math.trunc(totalNumberOccupants / 1000);
    //("Elevators Required: " + numberElevatorsRequired);
    numberElevatorsColumn = Math.ceil(numberStories / 20);
    //console.log("Columns Required: " + numberElevatorsColumn);
    numberElevatorsPerColumn = Math.ceil(numberElevatorsRequired / numberElevatorsColumn);
    //console.log("Elevators/Columns: " + numberElevatorsPerColumn);

    numberElevators = numberElevatorsPerColumn * numberElevatorsColumn;

    // Ensure to show the result only after the second value session
    if (numberElevators > 0) {
        // Show the value
        $("#lblNumberElevators").text(numberElevators);

        // Call the function to calculate the total price of the elevators
        calculateTotalPriceElevators();
    } else {
        // Show 0 when calculation is not performed
        $("#lblNumberElevators").text("0");
        $("#elevator_need").val(numberElevators);

    }
}

// Function to calculate the total price of the elevators
function calculateTotalPriceElevators() {
    // Get the content of label "lblPriceElevator", replace "$" per "", replace "," per "" and after that convert the value in float
    priceElevator = parseFloat(
        $("#lblPriceElevator").text().replace("$", "").replace(",", "")
    );

    // Verify if "numberElevator" and "priceElevator" are greater than 0 to calculate of total price of the elevators"
    if (numberElevators > 0 && priceElevator > 0) {
        totalPriceElevator = numberElevators * priceElevator;

        // Create our number formatter.
        var formatter = new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
        });

        // Write the total value with just 2 decimal places and replace "." per ","
        $("#lblTotalPriceElevator").text(
            formatter.format(totalPriceElevator.toFixed(2))
        );
        $("#total_price").val(
            formatter.format(totalPriceElevator.toFixed(2))
        );

        // Call the function to calculate the installation fees
        calculateInstallationFees();
    } else {
        // Show 0 when calculation is not performed
        $("#lblTotalPriceElevator").text("$0");
    }
}

// Function to calculate the installation fees
function calculateInstallationFees() {
    // Ensure that the calculate will be done only if the total price of the elevators is already calculated
    if (totalPriceElevator > 0) {
        // The fees will be according to the type
        switch (productLine) {
            case "premium":
                // Premium = 13%
                rateIncrease = 0.13; // 13/100
                installationFees = totalPriceElevator * rateIncrease;
                break;
            case "excelium":
                // Excelium = 16%
                rateIncrease = 0.16; // 16/100
                installationFees = totalPriceElevator * rateIncrease;
                break;
            default: // 10/100
                // Standard = 10%
                rateIncrease = 0.1;
                installationFees = totalPriceElevator * rateIncrease;
        }

        // Create our number formatter.
        var formatter = new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
        });

        // Write the total value with just 2 decimal places and replace "." per ","
        $("#lblInstallationFees").text(
            formatter.format(installationFees.toFixed(2))
        );
        $("#installation_fees").val(
            formatter.format(installationFees.toFixed(2))
        );

        // Call the function to calculate the final price
        calculateFinalPrice();
    }
}

// Function to calculate the final price
function calculateFinalPrice() {
    if (installationFees > 0) {
        var finalPrice = totalPriceElevator + installationFees;

        // Create our number formatter.
        var formatter = new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
        });

        // Write the total value with just 2 decimal places and replace "." per ","
        $("#lblFinalPrice").text(formatter.format(finalPrice.toFixed(2)));
        $("#final_price").val(formatter.format(finalPrice.toFixed(2)));

    }
}

// Function to erase all data
function eraseData() {
    // Reset all textbox
    $("input[type=text]").each(function () {
        $(this).val("");
    });

    // Reset radio products line
    $("input[name='product-line']").prop("checked", false);

    // Reset all labels data
    $("#lblNumberElevators").text("0");
    $("#lblPriceElevator").text("$0");
    $("#lblTotalPriceElevator").text("$0");
    $("#lblInstallationFees").text("$0");
    $("#lblFinalPrice").text("$0");
}
