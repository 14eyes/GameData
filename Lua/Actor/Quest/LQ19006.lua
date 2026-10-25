require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19006 = class("Quest19006", QuestActorProxy)
Quest19006.defaultAlias = "Quest19006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900601"] = self.OnSubStart1900601,
        ["1900602"] = self.OnSubStart1900602,
        ["1900603"] = self.OnSubStart1900603
    }
end

function Quest19006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900601"] = self.OnSubFinish1900601,
        ["1900602"] = self.OnSubFinish1900602,
        ["1900603"] = self.OnSubFinish1900603
    }
end

function Quest19006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900601"] = self.OnSubFailed1900601,
        ["1900602"] = self.OnSubFailed1900602,
        ["1900603"] = self.OnSubFailed1900603
    }
end

function Quest19006:Start()
    print("Start")
end

function Quest19006:OnDestroy()
    print("OnDestroy")
end

function Quest19006:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19006Trigger190060101_.alias, 3, false)
end

function Quest19006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19006Trigger190060101_.alias, 3, false)
end

function Quest19006:q1900603BlackKeep()
    print("q1900603BlackKeep")
    self:CreateQuestNpcById(1900603, npcs.Coop_BarbaraData.id, 0)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900601)
end

function Quest19006:NarratorWithId1900600102()
    print("NarratorWithId1900600102")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId1900600102)
end

function Quest19006:NarratorCallDelay1900601()
    print("NarratorCallDelay1900601")
    self:CallDelay(2, self.NarratorWithId1900600102)
end

function Quest19006:OnSubStart1900601(arg1)
    print("OnSubStart1900601")
    actorMgr:CreateActorWithPos(datas.Q19006Trigger190060101_.alias, datas.Q19006Trigger190060101_.script, datas.Q19006Trigger190060101_.id, 0, datas.Q19006Trigger190060101_.point.pos, datas.Q19006Trigger190060101_.point.rot, true, false, 3)
end

function Quest19006:OnSubFinish1900601(arg1)
    print("OnSubFinish1900601")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId1900600101, self.NarratorCallDelay1900601)
    self:EnterSceneLookCamera({x = 2359.155, y = 207.3447, z = -1122.118}, 0, 3, true, true)
end

function Quest19006:OnSubFailed1900601(arg1)
    print("OnSubFailed1900601")
end

function Quest19006:OnSubStart1900602(arg1)
    print("OnSubStart1900602")
end

function Quest19006:OnSubFinish1900602(arg1)
    print("OnSubFinish1900602")
end

function Quest19006:OnSubFailed1900602(arg1)
    print("OnSubFailed1900602")
end

function Quest19006:OnSubStart1900603(arg1)
    print("OnSubStart1900603")
    self:ShowBlackScreen(0.2, 1, 0, self.q1900603BlackKeep, nil, nil, "")
end

function Quest19006:OnSubFinish1900603(arg1)
    print("OnSubFinish1900603")
    self:TryPauseCurAutoNarrator()
end

function Quest19006:OnSubFailed1900603(arg1)
    print("OnSubFailed1900603")
end

return Quest19006
