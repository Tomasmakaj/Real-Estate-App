import React from 'react'

import {FaGithub,FaLinkedinIn} from 'react-icons/fa'

import './Footer.css'

const Footer = () => {
    return (
        <div className='footer'>
            
            <div className='col'>
                    <h1>Created By</h1>
                </div>
                
                <div className='col'>
                    <h3>Tomas Makaj</h3>
                    <a href="https://www.linkedin.com/in/tomasmakaj/" target="_blank"><FaLinkedinIn className='icon' /></a>
                    <a href="https://github.com/Tomasmakaj" target="_blank"><FaGithub className='icon' /></a>
                </div>
                
                <div className='col'>
                    <h3>Thierry Yabre</h3>
                    <a href="https://www.linkedin.com/in/thierry-yabre/" target="_blank"><FaLinkedinIn className='icon' /></a>
                    <a href="https://github.com/Cresus9" target="_blank"><FaGithub className='icon' /></a>
                    
                </div>
            </div>
    )
}

export default Footer