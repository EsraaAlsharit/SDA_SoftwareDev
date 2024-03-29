# Rendering All Books

### Objectives:

Practice retrieving records from the database
Become more familiar with the data format of JPA queries (Lists and objects)
Be able to pass lists of objects to the view model and render a list of objects from a JSP page to display in the browser.
Practice using JSTL forEach loops to render data dynamically in html format.

### All Books

Let's add a new route to our BookController, "/books". When a user visits "/books", we want to show them all the books that we have in our database.

**src/main/java/com/codingdojo/mvc/controllers/BooksController.java**

```md
// ... imports removed for brevity
@Controller
public class BooksController {
private final BookService bookService;

    public BooksController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "/books/index.jsp";
    }

}
```

### Putting Everything on the Table

Next let's show each book as a row in a table on the page that includes the ID, title, language and number of pages. Here's an example of what your page should look like, rendering book data, dynamically from your database.

![](1632179284__reading%20practice.png)

For a review of how to write JSTL for loops make sure to revisit the JSTL Loops And You lesson and review your Fruity Loops assignment.

**src/main/webapp/WEB-INF/books/index.jsp**

```md
<%@taglib prefix="c" uri="<a href="http://java.sun.com/jsp/jstl/core">http://java.sun.com/jsp/jstl/core</a>"%>

<h1>All Books</h1>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
         <!-- loop over all the books to show the details as in the wireframe! -->
    </tbody>
</table>
```

### Ninja Bonus:

As an extra challenge, make the title for each book be an anchor tag that navigates to the details for the book using your "/books/2" route!

![](1632331768__Reading%20Books.png)

- [x] Add a route /books that calls on the service to retrieve all the books.

- [x] Use the view model to make all the books available to render in your index.jsp

- [x] Build a JSTL forEach loop to render each row of the table with the information about a book.

- [x] Ninja Bonus: Make each title a link that navigates to the details page for that particular book.
