console.log("Wlcome To MY Tic Tac Toe")
let music = new Audio("music.mp3")
let audioturn = new Audio("ting.mp3")
let gameover = new Audio("gameover.mp3")
let turn = "X"
let isgameover = false;


const ChangeTurn = () => {
    return turn === "X" ? "0" : "X"
}

const checkwin = () => {
    let boxtexts = document.getElementsByClassName('boxtext');
    let win = [
        [0, 1, 2, 5, 5, 0],
        [3, 4, 5, 5, 15, 0],
        [6, 7, 8, 5, 25, 0],
        [0, 3, 6, -5, 15, 90],
        [1, 4, 7, 5, 15, 90],
        [2, 5, 8, 15, 15, 90],
        [0, 4, 8, 5, 15, 40],
        [2, 4, 6, 5, 15, 135],
    ]
    win.forEach(e => {
        if ((boxtexts[e[0]].innerText === boxtexts[e[1]].innerText) && (boxtexts[e[2]].innerText === boxtexts[e[1]].innerText) && (boxtexts[e[0]].innerText !== '')) {
            document.querySelector('.info').innerText = boxtexts[e[0]].innerText + " win";
            isgameover = true;
            document.querySelector('.imagebox').getElementsByTagName('img')[0].style.width = '400px';
            document.querySelector(".line").style.transform = `translate(${e[3]}vw, ${e[4]}vw) rotate(${e[5]}deg)`
            document.querySelector(".line").style.width = "20vw";
        }
    })
}






let boxes = document.getElementsByClassName("box");
Array.from(boxes).forEach(element => {
    let boxtext = element.querySelector(".boxtext");
    element.addEventListener('click', () => {
        if (boxtext.innerText === '')
            boxtext.innerText = turn;
        turn = ChangeTurn();
        audioturn.play();
        checkwin();
        itgameover();
        if (!isgameover) {
            let info = document.getElementsByClassName("info")[0].innerText = "Turn For " + turn;
        }
    })
})







    reset.addEventListener('click', () => {
        let boxtext = document.querySelectorAll(".boxtext");
        Array.from(boxtext).forEach(element => {
            element.innerText = ""
        })
        isgameover = false;
        turn = "X";
        let info = document.getElementsByClassName("info")[0].innerText = "Turn For " + turn;
        document.querySelector('.imagebox').getElementsByTagName('img')[0].style.width = '0px'
        document.querySelector(".line").style.width = "0vw";
})






const itgameover = () => {
    let boxtexts = document.getElementsByClassName('boxtext');
    let over = [
        [0, 1, 2, 3, 4, 5, 6, 7, 8],
    ]
    over.forEach(e => {
        if ((boxtexts[e[0]].innerText !== '') && (boxtexts[e[1]].innerText !== '') && (boxtexts[e[2]].innerText !== '')
            && (boxtexts[e[3]].innerText !== '') && (boxtexts[e[4]].innerText !== '') && (boxtexts[e[5]].innerText !== '')
            && (boxtexts[e[6]].innerText !== '') && (boxtexts[e[7]].innerText !== '') && (boxtexts[e[8]].innerText !== '')
        ) {
            audioturn.pause();
            document.querySelector('.info').innerText = "Game Over";
            gameover.play();
            isgameover = true;
        }
    })
}


