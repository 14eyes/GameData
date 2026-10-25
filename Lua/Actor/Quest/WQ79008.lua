require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79008 = class("Quest79008", QuestActorProxy)
Quest79008.defaultAlias = "Quest79008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900801"] = self.OnSubStart7900801,
        ["7900805"] = self.OnSubStart7900805,
        ["7900802"] = self.OnSubStart7900802,
        ["7900803"] = self.OnSubStart7900803,
        ["7900804"] = self.OnSubStart7900804
    }
end

function Quest79008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900801"] = self.OnSubFinish7900801,
        ["7900805"] = self.OnSubFinish7900805,
        ["7900802"] = self.OnSubFinish7900802,
        ["7900803"] = self.OnSubFinish7900803,
        ["7900804"] = self.OnSubFinish7900804
    }
end

function Quest79008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900801"] = self.OnSubFailed7900801,
        ["7900805"] = self.OnSubFailed7900805,
        ["7900802"] = self.OnSubFailed7900802,
        ["7900803"] = self.OnSubFailed7900803,
        ["7900804"] = self.OnSubFailed7900804
    }
end

function Quest79008:Start()
    print("Start")
end

function Quest79008:OnDestroy()
    print("OnDestroy")
end

function Quest79008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Talk 7900801 Invoke")
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            self:ShowReadingDialog(100906)
        end
    end
end

function Quest79008:ShoWLudiTutorial()
    print("ShoWLudiTutorial")
    self:ShowTutorialDialog(822)
end

function Quest79008:OnSubStart7900801(arg1)
    print("OnSubStart7900801")
    self:FinishQuestID(false, 7900801)
end

function Quest79008:OnSubFinish7900801(arg1)
    print("OnSubFinish7900801")
end

function Quest79008:OnSubFailed7900801(arg1)
    print("OnSubFailed7900801")
end

function Quest79008:OnSubStart7900805(arg1)
    print("OnSubStart7900805")
    self:FinishQuestID(false, 7900805)
end

function Quest79008:OnSubFinish7900805(arg1)
    print("OnSubFinish7900805")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest79008:OnSubFailed7900805(arg1)
    print("OnSubFailed7900805")
end

function Quest79008:OnSubStart7900802(arg1)
    print("OnSubStart7900802")
    self:CreateQuestNpc(arg1, npcs.Npc2003059Data.id, 1)
end

function Quest79008:OnSubFinish7900802(arg1)
    print("OnSubFinish7900802")
    self:SafeDestroyQuestNpc(npcs.Npc2003059Data.alias, 4)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, self.ShoWLudiTutorial, nil, "")
end

function Quest79008:OnSubFailed7900802(arg1)
    print("OnSubFailed7900802")
end

function Quest79008:OnSubStart7900803(arg1)
    print("OnSubStart7900803")
end

function Quest79008:OnSubFinish7900803(arg1)
    print("OnSubFinish7900803")
end

function Quest79008:OnSubFailed7900803(arg1)
    print("OnSubFailed7900803")
end

function Quest79008:OnSubStart7900804(arg1)
    print("OnSubStart7900804")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79008:OnSubFinish7900804(arg1)
    print("OnSubFinish7900804")
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 4)
end

function Quest79008:OnSubFailed7900804(arg1)
    print("OnSubFailed7900804")
end

return Quest79008
