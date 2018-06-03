@isTest
public class UpdateOpportunityNameWithStageTest {
    static testMethod void updateOpportunityNameAppendedWithStageName() {       
        // Perform test
        Test.startTest();
        Account act = new Account(Name='TestAccount');
       
        Opportunity oppty = new Opportunity(Name='Bigopportunity'); 
        oppty.StageName = 'Prospecting';
        oppty.AccountId = act.id;
		oppty.CloseDate = Date.today();
        
        Database.SaveResult result = Database.insert(oppty);
        Test.stopTest();
        // Verify
        Opportunity savedOpportunity = [SELECT Name FROM Opportunity WHERE Id = :result.getId()];
        System.assertEquals('Bigopportunity-Prospecting' , savedOpportunity.Name, 'Opportunity name is incorrectly set');
    }

}