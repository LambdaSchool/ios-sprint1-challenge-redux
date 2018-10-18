

class Movie {
    var name: String
    var seen: Bool

    init(name:String, seen:Bool)
    {
        self.name = name
        self.seen = seen
    }

}



protocol TableUpdater: class {
    func updateTable()
}

class DB {
    var movies:[Movie] = []
    weak var updater: TableUpdater?
    
    static var shared = DB()
    
    func createMovie(name: String) {
        movies.append(Movie(name: name, seen: false))
        movies.sort(by: {$0.name < $1.name})
        updater?.updateTable()
        
    }
}
