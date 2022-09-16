// import React,{useState} from 'react'


// function Portfolio({displayedArray}) {
    
//     const [newList, setNewList]= useState(displayedArray)
//     console.log(displayedArray)
   
//     const list = displayedArray.map((item) =>{
//     if (item.like === true)
//     return item
//     setNewList(item)
// })
//    console.log(list.item)
//   return (
//     <div>
//     {/* <img alt="house" src={list.item.image}/>
//     <p>${list.item.price}</p>
//     <p>{list.item.location}</p>
//     <p>{list.item.detail}</p> */}
//     </div>
//   )
// }

// export default Portfolio

// import React, { useState, useEffect } from 'react'
// import Best from '../best/Best';

// function Portfolio() {
//     const [favorites, setFavorites] = useState([]);

//     useEffect(() => {
//         fetch('http://localhost:8080/houses')
//             .then(res => res.json())
//             .then(houses => {
//                 setFavorites(houses.filter(house=> {
//                     return house.like 
                    
//                   }))
//             })
//     }, []);
    

//     const best= houses.map(house => (
//       <Best house={house} key={house.id} />
//   ))

//     return (
//         <div className="header">
//             <h2>My Portfolio</h2>
                   
//                 </div>
//     )
// };

// export default Portfolio;