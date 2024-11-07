import UIKit

class SavedViewController: UIViewController {
    
    //더미 데이터 받아오기
    let data = dummySavedModel.savedDatas

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = savedView
    }
    private lazy var savedView: SavedView = {
        let view = SavedView()
        view.tableView.dataSource = self
        return view
    }()
}


extension SavedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: SavedCell.identifier, for: indexPath) as? SavedCell else {
                return UITableViewCell()
        }

        cell.configure(model: data[indexPath.row])
        return cell
    }
    
}
