


import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    let names = [[ "Software Engineering", "Computer Application ", "Hadware System", " Language Programs"],["Digital functions","Aided Application","Machine learning"],
                 ["Digital maths","Artiifcial intelligence","Valued sccience","Digital electronics"]]
    
    let department = ["CSE","ECE","Mechanical"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 64))
//        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 64))
//        // headerView.backgroundColor = UIColor.brown
//        headerView.backgroundColor = .gray
//        footerView.backgroundColor = .white
//
//        let label = UILabel(frame: headerView.bounds)
//
//        label.textAlignment = .center
//        headerView.addSubview(label)
//
//        let label1 = UILabel(frame: footerView.bounds)
//       // label1.text = " Admission opens "
//        label1.textAlignment = .center
//        footerView.addSubview(label1)
//
//        tableView.tableHeaderView = headerView
//        tableView.tableFooterView = footerView
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        20.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return department[section]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        cell.backgroundColor = .gray
        return cell
    }
}
