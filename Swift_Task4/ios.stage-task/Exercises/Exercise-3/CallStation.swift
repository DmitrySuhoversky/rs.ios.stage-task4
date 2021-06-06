import Foundation

final class CallStation
{
    var setUsers = Set<User>()
    var callUsers = [CallID: Call]()
    var currentCallUsers = [UUID: Call]()
}

extension CallStation: Station
{
    func users() -> [User]
    {
        let arrayUsers = Array (setUsers)
        return arrayUsers
    }
    
    func add(user: User)
    {
        if !setUsers.contains(user)
        {
            setUsers.update(with: user)
        }
    }
    
    func remove(user: User)
    {
        setUsers.remove(user)
    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        let arrayCalls = Array (callUsers.values)
        return arrayCalls
    }
    
    func calls(user: User) -> [Call]{
        []
    }
    
    func call(id: CallID) -> Call?
    {
        return callUsers[id]
    }
    
    func currentCall(user: User) -> Call?
    {
        return currentCallUsers [user.id]
    }
}
