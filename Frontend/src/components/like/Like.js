import React,{useState} from 'react'

export default function Like() {
    const [isLike, setIsLike] = useState(false)
    let handleClick = ()=>{
        setIsLike(!isLike)
    }
  return (
    <>
      { isLike?<button onClick={handleClick}>❤️</button>:<button onClick={handleClick}>♡</button>}
    </>
  )
}
