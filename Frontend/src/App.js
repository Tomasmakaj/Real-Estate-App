import React, {useEffect, useState} from 'react'
import Navbar from './components/navbar/Navbar';
import Hero from './components/hero/Hero'
import Best from './components/best/Best'
// import { Routes, Route } from "react-router-dom"

function App() {
  
  const[house, setHouse] = useState ([])
  const[apartment, setApartment] = useState ([])

  useEffect(() => {
    fetch("http://localhost:8080/houses")
    .then(res => res.json())
    .then(data => setHouse(data))
  }, []);

  useEffect(() => {
    fetch("http://localhost:8080/apartments")
    .then(res => res.json())
    .then(data => setApartment(data))
  }, []);


    return (
    <div>
     <Navbar />
     <Hero />
     <Best  house={house} apartment={apartment}/>
    </div>
  );
}

export default App;
