import React, {useEffect, useState} from 'react'
import Navbar from './components/navbar/Navbar';
import Hero from './components/hero/Hero'
import Best from './components/best/Best'
import Footer from './components/footer/Footer'
// import Portfolio from './components/portfolio/Portfolio'
// import Like from './components/like/Like'
import { Routes, Route } from "react-router-dom"
// import portfolio from './components/portfolio/portfolio';


function App() {
  const [house, setHouse] = useState ([])
  const [apartment, setApartment] = useState ([])
  const [filter, setFilter] = useState("")
  const [currentOwner, setCurrentOwner] = useState ("")

  useEffect(() => {
    fetch("http://localhost:8080/houses")
    .then(res => res.json())
    .then(data => {
      console.log(data); 
      
      setHouse(data)})
  }, []);

  useEffect(() => {
    fetch("http://localhost:8080/apartments")
    .then(res => res.json())
    .then(data => setApartment(data))}, []);

function handleLogin(ownerObject) {
  setCurrentOwner(ownerObject)
}

// {currentOwner === "" ? 
  
    return (
    <div>
     <Navbar handleLogin={handleLogin}/>
     
     <Routes>
      
        <Route path="/Home">
        </Route>
        
        <Route path="/Portfolio" />
        
        <Route exact path="/">
        </Route>
     
     </Routes>
     
     <Hero filter={filter} setFilter={setFilter}/>
     <Best  filter={filter} house={house} apartment={apartment}/>

     {/* <Like /> */}
     <Footer />
     {/* <Theme theme={theme === "light" ? lightMode : darkMode }>
      <div className="Flashlight"></div>
     </Theme> */}
    </div>
  );
}

export default App;
