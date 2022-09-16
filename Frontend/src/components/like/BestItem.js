import React,{useState} from 'react'
// import Portfolio from './components/portfolio/Portfolio';
export default function BestItem({data}) {
    const [isLike, setIsLike]= useState(data.like)
    const [newList, setNewList]= useState([])

    function handleLikeClick() {
        fetch(`http://localhost:8080/${ data.is_house ? "houses" : "apartments"}/${data.id}`, {
          method: "PATCH",
          headers: {
            'Content-Type': 'application/json'
          }
        })
        .then(res => res.json())
        .then(data => setIsLike(data.like))
      };
   return (
    <>
      <div className='display'>
      <img alt="house" src={data.image}/>
      <p>${data.price}</p>
      <p>{data.location}</p>
      <p>{data.detail}</p>
      <div>
      {isLike?<button onClick={handleLikeClick}>❤️</button>:<button onClick={handleLikeClick}>♡</button>}

        </div>
      </div>
    </>
  )
}