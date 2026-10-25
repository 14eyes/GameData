require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23007 = class("Quest23007", QuestActorProxy)
Quest23007.defaultAlias = "Quest23007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300701"] = self.OnSubStart2300701,
        ["2300702"] = self.OnSubStart2300702,
        ["2300703"] = self.OnSubStart2300703,
        ["2300704"] = self.OnSubStart2300704,
        ["2300705"] = self.OnSubStart2300705,
        ["2300706"] = self.OnSubStart2300706,
        ["2300707"] = self.OnSubStart2300707,
        ["2300708"] = self.OnSubStart2300708,
        ["2300709"] = self.OnSubStart2300709
    }
end

function Quest23007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300701"] = self.OnSubFinish2300701,
        ["2300702"] = self.OnSubFinish2300702,
        ["2300703"] = self.OnSubFinish2300703,
        ["2300704"] = self.OnSubFinish2300704,
        ["2300705"] = self.OnSubFinish2300705,
        ["2300706"] = self.OnSubFinish2300706,
        ["2300707"] = self.OnSubFinish2300707,
        ["2300708"] = self.OnSubFinish2300708,
        ["2300709"] = self.OnSubFinish2300709
    }
end

function Quest23007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23007:Start()
    print("Start")
end

function Quest23007:OnDestroy()
    print("OnDestroy")
end

function Quest23007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4016Data.alias, 3)
    actorMgr:DestroyEntityActor("Q23007Trigger2300703", 3, false)
    actorMgr:DestroyEntityActor("Q23007Trigger2300705", 3, false)
    actorMgr:DestroyEntityActor("Q23007Trigger2300707", 3, false)
end

function Quest23007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23007:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23007:OnSubStart2300701(arg1)
    print("OnSubStart2300701")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
end

function Quest23007:OnSubFinish2300701(arg1)
    print("OnSubFinish2300701")
end

function Quest23007:OnSubStart2300702(arg1)
    print("OnSubStart2300702")
end

function Quest23007:OnSubFinish2300702(arg1)
    print("OnSubFinish2300702")
end

function Quest23007:OnSubStart2300703(arg1)
    print("OnSubStart2300703")
    actorMgr:CreateActorWithPos("Q23007Trigger2300703", "Actor/Gadget/Q23007Trigger2300703", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300702_Trigger").pos, sceneData:GetDummyPoint(3, "Q2300702_Trigger").rot, true, false, 3)
end

function Quest23007:OnSubFinish2300703(arg1)
    print("OnSubFinish2300703")
    self:NarratorOnlyTask(datas.NarratorTableQ2300703finish, nil, "")
end

function Quest23007:OnSubStart2300704(arg1)
    print("OnSubStart2300704")
end

function Quest23007:OnSubFinish2300704(arg1)
    print("OnSubFinish2300704")
end

function Quest23007:OnSubStart2300705(arg1)
    print("OnSubStart2300705")
    actorMgr:CreateActorWithPos("Q23007Trigger2300705", "Actor/Gadget/Q23007Trigger2300705", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300704_Trigger").pos, sceneData:GetDummyPoint(3, "Q2300704_Trigger").rot, true, false, 3)
end

function Quest23007:OnSubFinish2300705(arg1)
    print("OnSubFinish2300705")
    self:NarratorOnlyTask(datas.NarratorTableQ2300705finish, nil, "")
    if actorMgr:GetActor("Q23007Trigger2300705") ~= nil then
        self:ActorDestroy("Q23007Trigger2300705")
    end
end

function Quest23007:OnSubStart2300706(arg1)
    print("OnSubStart2300706")
end

function Quest23007:OnSubFinish2300706(arg1)
    print("OnSubFinish2300706")
end

function Quest23007:OnSubStart2300707(arg1)
    print("OnSubStart2300707")
    actorMgr:CreateActorWithPos("Q23007Trigger2300707", "Actor/Gadget/Q23007Trigger2300707", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300706").pos, sceneData:GetDummyPoint(3, "Q2300706").rot, true, false, 3)
end

function Quest23007:OnSubFinish2300707(arg1)
    print("OnSubFinish2300707")
    self:NarratorOnlyTask(datas.NarratorTableQ2300707finish, nil, "")
end

function Quest23007:OnSubStart2300708(arg1)
    print("OnSubStart2300708")
end

function Quest23007:OnSubFinish2300708(arg1)
    print("OnSubFinish2300708")
end

function Quest23007:OnSubStart2300709(arg1)
    print("OnSubStart2300709")
end

function Quest23007:OnSubFinish2300709(arg1)
    print("OnSubFinish2300709")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4016Data.alias)
end

return Quest23007
