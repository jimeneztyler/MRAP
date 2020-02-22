#' Prints info about 1033 Program
#' @export
what.is <- function() {
  print("FROM WIKIPEDIA: In the United States, the 1033 Program transfers excess military equipment to civilian law enforcement agencies. The program legally requires the Department of Defense to make various items of equipment available to local law enforcement. As of 2014, 8,000 local law enforcement agencies participated in the program that has transferred $5.1 billion in military material from the Department of Defense to law enforcement agencies since 1997. According to the Defense Logistics Agency, material worth $449 million was transferred in 2013 alone. Some of the most commonly requested items include ammunition, cold weather clothing, sand bags, medical supplies, sleeping bags, flashlights and electrical wiring. Small arms and vehicles such as aircraft, watercraft and armored vehicles have also been obtained.")
}

#' Prints total value of equipment in data'
#' @export
total.equipment <- function() {
  print(sum(leso_12_31_19$Quantity, na.rm = T))
}

#' Prints total value of equipment in data'
#' @export
total.value <- function() {
  print(sum(leso_12_31_19$`Acquisition Value`, na.rm = T))
}

#'Subset of 1033 Program transfers made to colleges
#' @export
college.transfers <- function() {
  data.frame(leso_12_31_19[grep("HI_ED", leso_12_31_19$`Station Name (LEA)`), ])
}
