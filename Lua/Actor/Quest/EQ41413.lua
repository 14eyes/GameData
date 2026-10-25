require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41413 = class("Quest41413", QuestActorProxy)
Quest41413.defaultAlias = "Quest41413"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41413:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41413:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4141301"] = self.OnSubStart4141301,
        ["4141302"] = self.OnSubStart4141302,
        ["4141303"] = self.OnSubStart4141303,
        ["4141304"] = self.OnSubStart4141304,
        ["4141305"] = self.OnSubStart4141305,
        ["4141306"] = self.OnSubStart4141306,
        ["4141307"] = self.OnSubStart4141307
    }
end

function Quest41413:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4141301"] = self.OnSubFinish4141301,
        ["4141302"] = self.OnSubFinish4141302,
        ["4141303"] = self.OnSubFinish4141303,
        ["4141304"] = self.OnSubFinish4141304,
        ["4141305"] = self.OnSubFinish4141305,
        ["4141306"] = self.OnSubFinish4141306,
        ["4141307"] = self.OnSubFinish4141307
    }
end

function Quest41413:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4141301"] = self.OnSubFailed4141301,
        ["4141302"] = self.OnSubFailed4141302,
        ["4141303"] = self.OnSubFailed4141303,
        ["4141304"] = self.OnSubFailed4141304,
        ["4141305"] = self.OnSubFailed4141305,
        ["4141306"] = self.OnSubFailed4141306,
        ["4141307"] = self.OnSubFailed4141307
    }
end

function Quest41413:Start()
    print("Start")
end

function Quest41413:OnDestroy()
    print("OnDestroy")
end

function Quest41413:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41413:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41413:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1453", 0, true)
    self:NotifyTo("Npc1451", 0, true)
    self:NotifyTo("Npc1642", 0, true)
    actorMgr:DestroyEntityActor(datas.Q4141301Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141305Trigger_.alias, 3, false)
end

function Quest41413:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.paimonData.alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest41413:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        self:SetQuestVarByMainId(0, 1)
    end

    if arg1 == 2 then
        print("param == 2")
        self:SetQuestVarByMainId(0, 2)
    end

    if arg1 == 3 then
        print("param == 3")
        self:SetQuestVarByMainId(0, 3)
    end

    if arg1 == 4 then
        print("param == 4")
        self:SetQuestVarByMainId(0, 4)
    end

    if arg1 == 5 then
        print("param == 5")
        self:SetQuestVarByMainId(0, 5)
    end

    if arg1 == 6 then
        print("param == 6")
        self:SetQuestVarByMainId(0, 6)
    end

    if arg1 == 7 then
        print("param == 7")
        self:PaimonDis()
        globalActor:ChangeDay24Time(22, true)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4141307)
        end
    end
end

function Quest41413:OnSubStart4141301(arg1)
    print("OnSubStart4141301")
    actorMgr:CreateActorWithPos(datas.Q4141301Trigger_.alias, datas.Q4141301Trigger_.script, datas.Q4141301Trigger_.id, 0, datas.Q4141301Trigger_.point.pos, datas.Q4141301Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.QinData.id, 1)
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
end

function Quest41413:OnSubFinish4141301(arg1)
    print("OnSubFinish4141301")
end

function Quest41413:OnSubFailed4141301(arg1)
    print("OnSubFailed4141301")
end

function Quest41413:OnSubStart4141302(arg1)
    print("OnSubStart4141302")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
end

function Quest41413:OnSubFinish4141302(arg1)
    print("OnSubFinish4141302")
    self:PaimonDis()
end

function Quest41413:OnSubFailed4141302(arg1)
    print("OnSubFailed4141302")
end

function Quest41413:OnSubStart4141303(arg1)
    print("OnSubStart4141303")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
end

function Quest41413:OnSubFinish4141303(arg1)
    print("OnSubFinish4141303")
end

function Quest41413:OnSubFailed4141303(arg1)
    print("OnSubFailed4141303")
end

function Quest41413:OnSubStart4141304(arg1)
    print("OnSubStart4141304")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
end

function Quest41413:OnSubFinish4141304(arg1)
    print("OnSubFinish4141304")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41413:OnSubFailed4141304(arg1)
    print("OnSubFailed4141304")
end

function Quest41413:OnSubStart4141305(arg1)
    print("OnSubStart4141305")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
    actorMgr:CreateActorWithPos(datas.Q4141305Trigger_.alias, datas.Q4141305Trigger_.script, datas.Q4141305Trigger_.id, 0, datas.Q4141305Trigger_.point.pos, datas.Q4141305Trigger_.point.rot, true, false, 3)
end

function Quest41413:OnSubFinish4141305(arg1)
    print("OnSubFinish4141305")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1453", 0, true)
    self:NotifyTo("Npc1451", 0, true)
    self:NotifyTo("Npc1642", 0, true)
end

function Quest41413:OnSubFailed4141305(arg1)
    print("OnSubFailed4141305")
end

function Quest41413:OnSubStart4141306(arg1)
    print("OnSubStart4141306")
end

function Quest41413:OnSubFinish4141306(arg1)
    print("OnSubFinish4141306")
end

function Quest41413:OnSubFailed4141306(arg1)
    print("OnSubFailed4141306")
end

function Quest41413:OnSubStart4141307(arg1)
    print("OnSubStart4141307")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
end

function Quest41413:OnSubFinish4141307(arg1)
    print("OnSubFinish4141307")
end

function Quest41413:OnSubFailed4141307(arg1)
    print("OnSubFailed4141307")
end

return Quest41413
