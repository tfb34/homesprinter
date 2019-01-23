import React from "react"
import PropTypes from "prop-types"



class ListingType extends React.Component{
	constructor(props){
		super(props);
		this.state = {
			//type: 'buy', default value
			isBuy: this.props.type === 'buy' ? true:false, 
			isRent: this.props.type === 'rent' ? true:false,
			isSold: this.props.type === 'sold' ? true:false
		};
		this.handleClick = this.handleClick.bind(this); //needs binding cause we need access to state. we need to bind state to this instance
	}

	handleClick(newType){//Given the id of new checked
		let t = this.props.type;
		let cType = `is${t.charAt(0).toUpperCase()+t.slice(1)}`;
		let nType = `is${newType.charAt(0).toUpperCase()+newType.slice(1)}`;

		this.setState(state => ({
			[cType]: false,
			[nType]: true
		}));
		this.props.onListingTypeChange(newType);
	}
	toggleDropdown(id){
		let el = document.getElementById(id);
		el.classList.toggle("show");
	}

	render(){
		return(
			<div id="listingTypeOption" className="formOption">
				<a onClick={(e) => this.toggleDropdown('listingtype-menu',e)} className="formButton">Listing Type</a>
				<div id="listingtype-menu" className="dropdown">
					<h4 className="title">Listing Type</h4>
					<div>
						<a onClick={(e) => this.handleClick('buy', e)} className={this.state.isBuy ? 'checked': ''}>Buy</a>
						<a onClick={(e) => this.handleClick('rent', e)} className={this.state.isRent ? 'checked': ''}>Rent</a>
						<a onClick={(e) => this.handleClick('sold', e)} className={this.state.isSold ? 'checked': ''}>Sold</a>
					</div>
				</div>
			</div>
		);
	}
}


class FilterableHomeTable extends React.Component{
	constructor(props){
		super(props);

		this.handleListingTypeChange = this.handleListingTypeChange.bind(this);
		this.handleBedroomChange = this.handleBedroomChange.bind(this);
		this.handlePriceChange = this.handlePriceChange.bind(this);
		this.updateMinPriceChange = this.updateMinPriceChange.bind(this);
		this.updateMaxPriceChange = this.updateMaxPriceChange.bind(this);
		this.handleSortChange = this.handleSortChange.bind(this);
		this.handleFilterTextChange = this.handleFilterTextChange.bind(this);
		this.fetchFirst = this.fetchFirst.bind(this);
		this.handleFilterButton = this.handleFilterButton.bind(this);

		this.state = {
			filterText: 'Neighborhood',
			isAnyPrice: true,
			minPrice: 'No Min',
			maxPrice: 'No Max',
			isAllBeds: true,
			minBeds: 0, // stays
			isAllHomeTypes: true,
			homeType: [],
			listingType: 'buy', // stays
			sortType: 'Featured',
			isFiltersOn: false
		};
	}


	handleFilterButton(){
		var x = !this.state.isFiltersOn;
		this.setState({
			isFiltersOn: x
		});
	}

	fetchFirst(){
	
	   console.log("inside fetchFirst");
		
		var form = new FormData(document.getElementById('filterForm'));
		
		
		var urlString = [`bedrooms=${this.state.minBeds}`,
					 	 `filterText=${this.state.filterText}`,
					 	 `sortType=${this.state.sortType}`,
					 	 `city=${this.state.filterText}`,
					 	 `listingType=${this.state.listingType}`,
					 	 `minPrice=${this.state.minPrice}`,
					 	 `maxPrice=${this.state.maxPrice}`];

		Rails.ajax({
			headers: {'Accept': 'text/javascript, application/javascript'},
			type: "POST",
			url:"/searchResults.js?"+urlString.join('&'),
			data: form,
			success: function(response){
				console.log(response);
			}
		})
	}

	componentDidUpdate(){
		this.fetchFirst();
	}

	handleListingTypeChange(newType){
		this.setState({
			listingType:newType
		});
		/*this.fetchFirst();*/
	}

	handleBedroomChange(newMinBeds){
		this.setState({
			minBeds: newMinBeds
		})
		/*this.fetchFirst();*/
	}

	handlePriceChange(type, newPrice){
		type === 'min' ? this.updateMinPriceChange(newPrice) : this.updateMaxPriceChange(newPrice);
	}

	updateMinPriceChange(newPrice){
		this.setState({
			minPrice: newPrice
		});
	}
	updateMaxPriceChange(newPrice){
		this.setState({
			maxPrice: newPrice
		});
	}

	handleSortChange(event){
		this.setState({
			sortType: event.target.value
		});
	}

	handleFilterTextChange(event){
		this.setState({
			filterText:event.target.value
		});
	}

	render(){
	/*	return (
			<div>
				<SearchBar
					filterText = {this.state.filterText}
					isAnyPrice = {this.state.isAnyPrice}
				/>
				<HomeTable
					homes = {this.props.homes}
				/>
			</div>
		);*/
		return(
			<div id="HomeFilterForm">
				<SearchInput
					filterText = {this.filterText}
					onTextChange = {this.handleFilterTextChange}
				/>
				<SortPreference
					sortType = {this.state.sortType}
					onSortChange = {this.handleSortChange}
				/>
				<a onClick={(e) => this.handleFilterButton(e)} id="filtersButton">Filters</a>
				<div id="filters-container" className={this.state.isFiltersOn? 'show':'hide'}>
					<ListingType 
						type={this.state.listingType}
						onListingTypeChange={this.handleListingTypeChange}
					/>
					<NumBedroomPreference 
						minBeds = {this.state.minBeds}
						onBedroomChange = {this.handleBedroomChange}  
					/>
					<PricePreference
						minPrice = {this.state.minPrice}
						maxPrice = {this.state.maxPrice}
						onPriceChange = {this.handlePriceChange}
					/>
				</div>
			</div>
		);
	}
	 
}
/*<input value={this.props.filterText} type="text" name="filterText" onChange={this.props.onTextChange}>*/

class SearchInput extends React.Component{
	constructor(props){
		super(props);
	}

	render(){
		return(
			<input value={this.props.filterText} type="text" placeholder="Neighborhood, City, State, Zip Code" id="filterTextBox" name="filterText" onChange={this.props.onTextChange}/>
		)
	}
}

class SortPreference extends React.Component{
	constructor(props){
		super(props);

	}

	render(){
		return(
			<select value={this.props.sortType} name="sort" id="sortOption" onChange={this.props.onSortChange}>
				<option value="featured">Sort: Featured</option>
				<option value="priceAsc">Sort: Price(Lo-Hi)</option>
				<option value="priceDesc">Sort: Price(Hi-Lo)</option>
				<option value="bedrooms">Sort: Bedrooms</option>
				<option value="bathrooms">Sort: Bathrooms</option>
			</select>
		)
	}
}


class PricePreference extends React.Component{
	constructor(props){
		super(props);

	}

	toggleDropdown(id){
		let el = document.getElementById(id);
		el.classList.toggle("show");
	}

	handleChange(type,event){
		this.props.onPriceChange(type,event.target.value);
	}

	render(){
		return(
			<div id="priceOption" className="formOption">
				<a onClick={(e) => this.toggleDropdown('price-menu', e)} className="formButton">Any Price</a>
				<div id="price-menu" className="dropdown">
					<h4 className="title">PRICE</h4>
					<select value={this.props.minPrice} name="minPrice" onChange={(e) => this.handleChange('min',e)}>
						<option value="No Min">No Min</option>
						<option value="10000">$10K</option>
						<option value="20000">$20K</option>
						<option value="30000">$30K</option>
						<option value="50000">$50K</option>
						<option value="100000">$100K</option>
						<option value="130000">$130K</option>
						<option value="150000">$150K</option>
						<option value="200000">$200K</option>
						<option value="300000">$300K</option>
						<option value="350000">$350K</option>
						<option value="400000">$400K</option>
						<option value="450000">$450K</option>
						<option value="500000">$500K</option>
						<option value="550000">$550K</option>
						<option value="600000">$600K</option>
						<option value="650000">$650K</option>
						<option value="700000">$700K</option>
						<option value="750000">$750K</option>
						<option value="800000">$850K</option>
						<option value="900000">$900K</option>
						<option value="950000">$950K</option>
						<option value="1000000">$1m</option>
						<option value="1100000">$1.1m</option>
						<option value="1200000">$1.2m</option>
						<option value="1250000">$1.25m</option>
						<option value="1400000">$1.4m</option>
						<option value="1500000">$1.5m</option>
						<option value="1600000">$1.6m</option>
						<option value="1700000">$1.7m</option>
						<option value="1750000">$1.75m</option>
						<option value="1800000">$1.8m</option>
						<option value="1900000">$1.9m</option>
						<option value="2000000">$2m</option>
						<option value="2500000">$2.5m</option>
						<option value="2750000">$2.75m</option>
						<option value="3000000">$3m</option>
						<option value="3500000">$3.5m</option>
						<option value="4000000">$4m</option>
						<option value="5000000">$5m</option>
						<option value="10000000">$10m</option>
						<option value="20000000">$20m</option>
					</select>
					<span>&ndash;</span>
					<select value={this.props.maxPrice} name="maxPrice" onChange={(e) => this.handleChange('max',e)}>
						<option value="No Max">No Max</option>
						<option value="10000">$10K</option>
						<option value="20000">$20K</option>
						<option value="30000">$30K</option>
						<option value="50000">$50K</option>
						<option value="100000">$100K</option>
						<option value="130000">$130K</option>
						<option value="150000">$150K</option>
						<option value="200000">$200K</option>
						<option value="300000">$300K</option>
						<option value="350000">$350K</option>
						<option value="400000">$400K</option>
						<option value="450000">$450K</option>
						<option value="500000">$500K</option>
						<option value="550000">$550K</option>
						<option value="600000">$600K</option>
						<option value="650000">$650K</option>
						<option value="700000">$700K</option>
						<option value="750000">$750K</option>
						<option value="800000">$850K</option>
						<option value="900000">$900K</option>
						<option value="950000">$950K</option>
						<option value="1000000">$1m</option>
						<option value="1100000">$1.1m</option>
						<option value="1200000">$1.2m</option>
						<option value="1250000">$1.25m</option>
						<option value="1400000">$1.4m</option>
						<option value="1500000">$1.5m</option>
						<option value="1600000">$1.6m</option>
						<option value="1700000">$1.7m</option>
						<option value="1750000">$1.75m</option>
						<option value="1800000">$1.8m</option>
						<option value="1900000">$1.9m</option>
						<option value="2000000">$2m</option>
						<option value="2500000">$2.5m</option>
						<option value="2750000">$2.75m</option>
						<option value="3000000">$3m</option>
						<option value="3500000">$3.5m</option>
						<option value="4000000">$4m</option>
						<option value="5000000">$5m</option>
						<option value="10000000">$10m</option>
						<option value="20000000">$20m</option>
					</select>
				</div>
			</div>
		)
	}
}

class NumBedroomPreference extends React.Component{
	constructor(props){
		super(props); // this.props.minBeds

		this.handleClick = this.handleClick.bind(this);

		let beds = this.props.minBeds;

		this.state = {
			is0: beds === 0 ? true:false,
			is1: beds === 1 ? true:false,
			is2: beds === 2 ? true:false,
			is3: beds === 3 ? true:false,
			is4: beds === 4 ? true:false
		};
	}

	handleClick(newNumBeds){

		let cType = `is${this.props.minBeds}`;
		let nType = `is${newNumBeds}`;
		this.setState(state => ({
			[cType]: false,
			[nType]: true
		}));
		this.props.onBedroomChange(newNumBeds);
	}

	toggleDropdown(id){
		let el = document.getElementById(id);
		el.classList.toggle("show");
	}

	render(){
		return(
		<div id="bedroomOption" className="formOption">
			<a onClick={(e) => this.toggleDropdown('bedroom-menu', e)} className="formButton">BEDROOMS</a>
			<div id="bedroom-menu" className="dropdown">
				<h4 className="title">BEDROOMS</h4>
					<div>
						<a id="zero" onClick={(e) => this.handleClick(0,e)} className={this.state.is0 ? 'checked': ''}>Studio+</a>
						<a id="one" onClick={(e) => this.handleClick(1,e)} className={this.state.is1 ? 'checked': ''}>1+</a>
						<a id="two" onClick={(e) => this.handleClick(2,e)} className={this.state.is2 ? 'checked': ''}>2+</a>
						<a id="three" onClick={(e) => this.handleClick(3,e)} className={this.state.is3 ? 'checked': ''}>3+</a>
						<a id="four" onClick={(e) => this.handleClick(4,e)} className={this.state.is4 ? 'checked': ''}>4+</a>
					</div>
			</div>
		</div>
		)
	}
}


class HomeFilter extends React.Component {
  render () {
    return (
      <React.Fragment>
        <FilterableHomeTable />
      </React.Fragment>
    );
  }
}

export default HomeFilter
