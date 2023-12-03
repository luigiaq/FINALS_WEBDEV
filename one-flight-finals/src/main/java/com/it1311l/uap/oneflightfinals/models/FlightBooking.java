package com.it1311l.uap.oneflightfinals.models;

public class FlightBooking {
	private Integer type;
	private Integer subtype;
	private String name;
	private String iataCode;
	private GeoCode geoCode;
	private Address address;
	private TimeZone timeZone;
	private Metric metrics;
	
	public FlightBooking(Integer type, Integer subtype, String name, String iataCode, GeoCode geoCode, Address address, TimeZone timeZone, Metric metrics) {
		this.type = type;
        this.subtype = subtype;
        this.name = name;
        this.iataCode = iataCode;
        this.geoCode = geoCode;
        this.address = address;
        this.timeZone = timeZone;
        this.metrics = metrics;
	}
	
	public Integer getid() {
        return type;
    }

    public void setid(Integer type) {
        this.type = type;
    }

    public Integer getqueuing_office_id() {
        return subtype;
    }

    public void setqueuing_office_id(Integer subtype) {
        this.subtype = subtype;
    }

    public String getcreation_date() {
        return name;
    }

    public void setcreation_date(String name) {
        this.name = name;
    }

    public String getorigin_location_code() {
        return iataCode;
    }

    public void setorigin_location_code(String iataCode) {
        this.iataCode = iataCode;
    }

    public GeoCode getround_trip_tag() {
        return geoCode;
    }

    public void setround_trip_tag(GeoCode geoCode) {
        this.geoCode = geoCode;
    }

    public Address getno_of_passenger() {
        return address;
    }

    public void setno_of_passenger(Address address) {
        this.address = address;
    }
    
    public TimeZone getreference_no() {
        return timeZone;
    }

    public void setreference_no(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

	public Metric getflight_offer_id() {
		return metrics;
	}

	public void setflight_offer_id(Metric metrics) {
		this.metrics = metrics;
	}

	
    
}

class GeoCode {
	Float latitude;
	Float longitude;
}

class Address {
	String countryName;
	String countryCode;
	String stateCode;
	String regionCode;
}

class TimeZone {
	String offSet;
	String referenceLocalDateTime;
}

class Metric {
	Integer relevance;
}