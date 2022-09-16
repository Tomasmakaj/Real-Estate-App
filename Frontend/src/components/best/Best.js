import React, {useState, useEffect} from 'react'
import BestItem from "../like/BestItem.js"
import './Best.css'


const Best = ({house , apartment, filter}) => {
    let displayedArray = [...house,...apartment]
    let filteredArray = displayedArray.filter(e=>e.location.toLowerCase().includes(filter.toLowerCase()))

    
    
    const [finalDisplay, setFinalDisplay] = useState([...filteredArray])

    useEffect(() => {
        setFinalDisplay(filteredArray)
        // console.log(house)
    }, [house, filter])

    function handleAllClick(){
        setFinalDisplay(filteredArray)
    }

    function handleHouseClick(){
        setFinalDisplay(house)
    }

    function handleApartmentClick(){
        setFinalDisplay(apartment)


    }

    return (
        <div className='best'>
            <h1>Find Best Properties</h1>
            <div>
                <button onClick={handleAllClick} className='btn'>All</button>
                <button onClick={handleHouseClick} className='btn'>Houses</button>
                <button onClick={handleApartmentClick} className='btn'>Apartments</button>
            </div>
            <div className='container'>
                {finalDisplay.map((data,i)=><BestItem key={i} data={data}/>)}
            </div>
        </div>
    )
}

export default Best