<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Author;
use App\Models\Invoice;
use App\Models\InvoiceItem;
use Illuminate\Http\Request;

class DataController extends Controller
{
    function getData(){
        // $invoices = Invoice::all();
        // $invoices = Invoice::find(1);
        // $invoices = Invoice::all()->take(3);
        // $invoices = Invoice::limit(5)->get();

        //paid invoice
        // $invoices = Invoice::where('paid',1)->get();
        // $invoices = Invoice::where('paid',0)->get();
        // $invoices = Invoice::wherePaid(1)->get();
        // $invoices = Invoice::whereTotalPrice(536.31)->get();


        //paid invoices and price > 1000
        // $invoices = Invoice::where('paid',1)->where('total_price','>',1000)->get();
        // $invoices = Invoice::where('paid',1)->where('total_price','<',1000)->get();

        //total price of paid invoice
        // $invoices = Invoice::where('paid',1)->sum('total_price');

        //edit
        /*
        $invoices = Invoice::find(1);
        $invoices->client = "Miss Danyka Will II";
        $invoices->save();

        */

        //delete
        /*
        $invoices = Invoice::find(1);
        $invoices->delete();
        */

        //new invoice

        /*
        $invoices = Invoice::find(1);

        $newInvoice = new Invoice();
        $newInvoice->client = "kyra Robel II";
        $newInvoice->paid = 1;
        $newInvoice->total_price = 792.67;
        $newInvoice->save();

        */

        // return $invoices;

        //one-to-many

        /*
        $invoice = Invoice::find(1);
        // $invoiceItems = $invoice->items;
        $items = $invoice->items()->get();

        */

        /*

        $invoice = Invoice::find(1);
        return $invoice;

        */

        //first item
/*
        $invoice = Invoice::find(1);
        $invoiceItems = $invoice->items->first();


        return $invoiceItems;

        */

       // many-to-one

       /*

    //    $invoiceItem = InvoiceItem::find(1)->invoice;
       $invoiceItem = InvoiceItem::find(1)->invoice()->get();

       return $invoiceItem;

       */

       // invoice with invoiceItems 

       /*
       $invoice = Invoice::with('items')->find(10);
       

       return $invoice;

       */

       //invoiceItem with invoice

     /*
       $invoiceItem = InvoiceItem::with('invoice')->find(1);
       

       return $invoiceItem;

       */

       // insert invoiceItem with invoice id wise without relationship

       /*

       $invoice = Invoice::with('items')->find(1);

       $newInvoiceItem = new InvoiceItem();
       $newInvoiceItem->invoice_id = 1;
       $newInvoiceItem->title = "Item Y";
       $newInvoiceItem->total_price = 200;
       $newInvoiceItem->save();


       return $invoice;

       */

        // insert invoiceItem with invoice id wise  

       $invoice = Invoice::with('items')->find(1);
       $newInvoiceItem = new InvoiceItem();
       $newInvoiceItem->title = "Item X";
       $newInvoiceItem->total_price = 100;
       $invoice->items()->save($newInvoiceItem);
       return $invoice;

    }

    function getInvoices(Request $request) {
        
    }

    function getBooks(){

        //create a new book and attach to an author

        /*
        $books = Book::all();
        return $books;

        */

        /*

        $books = Author::all();
        return $books;

        */

        // 1 no author all book details
       /*
        $books = Author::find(1)->books;
        return $books;
        */
        

        //1 no author details with book details

       /*
        $author = Author::with('books')->find(1);
        return $author;
       */

        //onek book multiple author

        /*
        $book = Book::with('authors')->find(2);
        return $book;

        */
        

        // add author into book

        /*
        $book = Book::with('authors')->find(2);
        $author = Author::find(5);
        $book->authors()->attach($author);
        return $book;

        */

    }


    //add book

    /*
    function createBook(){
        $book = new book();
        $book->title = "Book X";
        $book->save();
        return $book;
    }

    */


    function createBook(){
        $book = Book::create([
            'title' => 'Book Y'
        ]);
        
        return $book;
    }




/*
    function getInvoice($id){
        // $invoices = Invoice::all();
        // $invoice = Invoice::find($id);
        $invoice = Invoice::findOrFail($id);
        return $invoice;

    }


    */

    /*
    function getInvoice($id){
        $invoice = Invoice::findOrFail($id);
        return $invoice->client;

    }

   */

   /*
  
   function getInvoice($id){
    $invoice = Invoice::findOrFail($id);
    return $invoice->total_price;

    }

*/



}
