import React, {useState} from 'react'
import {HiOutlineMenuAlt4} from 'react-icons/hi'
import {FaRegTimesCircle} from 'react-icons/fa'
import {BsFillHouseFill,BsFacebook,BsTwitter,BsApple} from 'react-icons/bs'
import { NavLink } from 'react-router-dom'
// import {useNavigate} from "react-router-dom"

import './Navbar.css'



const Navbar = ({handleLogin}) => {
    // const navigate = () => {
    //   console.log("sending u to login page ....");
    // }
    const[click, setClick] = useState(false)
    const handleClick = () => setClick(!click)
    const[isShowingSignUp, setIsShowingSignUp] = useState (false)
    const[logInInfo, setLogInInfo] = useState ({email:"", password:"" })

    function handleChange(e){
      let{name, value} = e.target
      setLogInInfo({...logInInfo, [name]:value})
    }

    function handleSubmit(e){
      e.preventDefault()
      fetch("http://localhost:8080/login" , {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(logInInfo)
      })
      .then((res) => res.json())
      .then((data) => handleLogin(data))
      }

  return (
    <div className='navbar'>
        <div className='container'>
        <h1><span><BsFillHouseFill />Lucid</span> Real Estate</h1>
        <ul className={click ? 'nav-menu active' : 'nav-menu'}>
            <li>
              <NavLink to="/">Home</NavLink>
            </li>
            <li>
            <NavLink to="/Portfolio">Portfolio</NavLink>
            </li>
            
            
        </ul>
        <button onClick={()=>{setIsShowingSignUp(true)}}className='btn' /*onClick={navigate}*/ >Login</button>
        {/* <button className='btn'>{CgDarkMode}</button> */}
        <div className='hamburger' onClick={handleClick}>
                    {click ? (<FaRegTimesCircle className='icon' />) : (<HiOutlineMenuAlt4 className='icon' />)}
            </div>
        </div>
{isShowingSignUp&&
      <div onClick={()=>{setIsShowingSignUp(false)}}id='sign-in-modal'><div id='sign-in-container' onClick={(e)=>{e.stopPropagation()}}>
      <h1>Sign-In</h1>
      <form id='Sign-In-Form' onSubmit={handleSubmit}>
      <span><BsFacebook size={40}/></span>
      <span><BsTwitter size={40} /></span>
      <span><BsApple size={40}/></span>
        <input onChange={handleChange} name="email" value={logInInfo.email} type='email' placeholder='Email' />
        <input onChange={handleChange} name="password" value={logInInfo.password}type='password'placeholder='Password'/>
        <button className='btn'>Sign In</button>
      </form>
      </div></div>}
    </div>
  )
}

export default Navbar