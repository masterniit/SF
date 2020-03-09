trigger AccountDeletion on Account (before delete) {

    for(Account a : [Select Id from Account
                    where Id in (Select AccountId from Opportunity)
                     AND Id IN:Trigger.Old])
        Trigger.OldMap.get(a.Id).addError('Cannot delete account with related opportunities.');
}