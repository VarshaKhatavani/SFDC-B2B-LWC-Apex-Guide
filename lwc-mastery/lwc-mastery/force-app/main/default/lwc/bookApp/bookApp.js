import { LightningElement } from 'lwc';
const BOOK_URL = 'https://www.googleapis.com/books/v1/volumes?q='; 

export default class BookApp extends LightningElement {

    query = 'salesforce';
    books ;
    timer ; 

    connectedCallback(){
        this.fetchBookData();
    }

    fetchBookData(){
        fetch(BOOK_URL+this.query)
        .then(response => response.json())
        .then(data => {
            //  this.books = data;
            this.books = {
                ...data, 
                items : data.items.map(book => {
                    const thumbnail = book.volumeInfo?.imageLinks?.thumbnail || '' ; 
                    const secureThumbnail = thumbnail.startsWith('http://')
                    ? thumbnail.replace('http://', 'https://')
                    : thumbnail; 

                    return {
                        ...book, 
                        secureThumbnail
                    }
                })
            }
            console.log('[BOOKAPP]', JSON.stringify(this.books));
        }).catch(error => console.error(error))
    }

    fetchBooksHandler(event){
        this.query = event.target.value;
        window.clearTimeout(this.timer);
        this.timer= setTimeout(()=>{
            this.fetchBookData()
        }, 1000)
    }

}