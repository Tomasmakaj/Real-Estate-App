import React, {useState} from 'react'
import {HiOutlineMenuAlt4} from 'react-icons/hi'
import {FaRegTimesCircle} from 'react-icons/fa'
import {BsFillHouseFill} from 'react-icons/bs'
// import {useNavigate} from "react-router-dom"

import './Navbar.css'

const Navbar = () => {
    // const navigate = () => {
    //   console.log("sending u to login page ....");
    // }
    const[click, setClick] = useState(false)
    const handleClick = () => setClick(!click)



  return (
    <div className='navbar'>
        <div className='container'>
        <h1><span><BsFillHouseFill />Lucid</span> Real Estate</h1>
        <ul className={click ? 'nav-menu active' : 'nav-menu'}>
            <li><a href='#'>Home</a></li>
            <li><a href='#'>Search</a></li>
            <li><a href='#'>Portfolio</a></li>
            
        </ul>
        <button className='btn' /*onClick={navigate}*/ >Login</button>
        <div className='hamburger' onClick={handleClick}>
                    {click ? (<FaRegTimesCircle className='icon' />) : (<HiOutlineMenuAlt4 className='icon' />)}
            </div>
        </div>

    </div>
  )
}

export default Navbar