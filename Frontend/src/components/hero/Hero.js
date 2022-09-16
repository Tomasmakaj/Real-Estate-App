import React from 'react'
import {AiOutlineSearch} from 'react-icons/ai'



import './Hero.css'

const Hero = ({filter, setFilter}) => {
  return (
    <div className='hero'>
        <div className='content'>
            
            <h1>Find it Own it</h1>
            {/* <p>Dream Home</p>
            <p>Dream Apartment</p> */}
            
            <form className="search">
                <div>
                    <input type='text' placeholder='Enter Keyword..'  value={filter} onChange={(e)=> setFilter(e.target.value)}/>

                </div>
                <div className='radio'>
                    {/* <input type='radio' checked/>
                    <label>Buy</label>
                    <input type='radio'/>
                    <label>Rent</label> */}
                    <button type='submit'><AiOutlineSearch className='icon'/></button>
                </div>
            </form>
        </div>
    </div>
  )
}

export default Hero