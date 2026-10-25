require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11120 = class("Quest11120", QuestActorProxy)
Quest11120.defaultAlias = "Quest11120"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11120:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1112001"] = self.OnSubStart1112001,
        ["1112005"] = self.OnSubStart1112005,
        ["1112002"] = self.OnSubStart1112002,
        ["1112003"] = self.OnSubStart1112003,
        ["1112004"] = self.OnSubStart1112004
    }
end

function Quest11120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1112001"] = self.OnSubFinish1112001,
        ["1112005"] = self.OnSubFinish1112005,
        ["1112002"] = self.OnSubFinish1112002,
        ["1112003"] = self.OnSubFinish1112003,
        ["1112004"] = self.OnSubFinish1112004
    }
end

function Quest11120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1112001"] = self.OnSubFailed1112001,
        ["1112005"] = self.OnSubFailed1112005,
        ["1112002"] = self.OnSubFailed1112002,
        ["1112003"] = self.OnSubFailed1112003,
        ["1112004"] = self.OnSubFailed1112004
    }
end

function Quest11120:Start()
    print("Start")
end

function Quest11120:OnDestroy()
    print("OnDestroy")
end

function Quest11120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11120:OnMainFailed(arg1)
    print("OnMainFailed")
    self:Cleardata()
end

function Quest11120:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:Cleardata()
end

function Quest11120:Cleardata()
    print("Cleardata")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10377Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
end

function Quest11120:NarratorWithId_1112002()
    print("NarratorWithId_1112002")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112002)
end

function Quest11120:OnSubStart1112001(arg1)
    print("OnSubStart1112001")
end

function Quest11120:OnSubFinish1112001(arg1)
    print("OnSubFinish1112001")
end

function Quest11120:OnSubFailed1112001(arg1)
    print("OnSubFailed1112001")
end

function Quest11120:OnSubStart1112005(arg1)
    print("OnSubStart1112005")
    self:CreateQuestNpc(arg1, npcs.Npc10377Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q11120Trigger_Boss_.alias, datas.Q11120Trigger_Boss_.script, datas.Q11120Trigger_Boss_.id, 0, datas.Q11120Trigger_Boss_.point.pos, datas.Q11120Trigger_Boss_.point.rot, true, false, 3)
end

function Quest11120:OnSubFinish1112005(arg1)
    print("OnSubFinish1112005")
end

function Quest11120:OnSubFailed1112005(arg1)
    print("OnSubFailed1112005")
end

function Quest11120:OnSubStart1112002(arg1)
    print("OnSubStart1112002")
end

function Quest11120:OnSubFinish1112002(arg1)
    print("OnSubFinish1112002")
    self:ActionSafeCall(self.NarratorWithId_1112002)
end

function Quest11120:OnSubFailed1112002(arg1)
    print("OnSubFailed1112002")
end

function Quest11120:OnSubStart1112003(arg1)
    print("OnSubStart1112003")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc214801Data.id, 2)
    self:NotifyTo(npcs.Npc2148Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(8064)
    actorMgr:CreateActorWithPos(datas.Q11120Trigger_Zhongli_.alias, datas.Q11120Trigger_Zhongli_.script, datas.Q11120Trigger_Zhongli_.id, 0, datas.Q11120Trigger_Zhongli_.point.pos, datas.Q11120Trigger_Zhongli_.point.rot, true, false, 3)
end

function Quest11120:OnSubFinish1112003(arg1)
    print("OnSubFinish1112003")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc214801Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2148Data.alias, 0, true)
end

function Quest11120:OnSubFailed1112003(arg1)
    print("OnSubFailed1112003")
end

function Quest11120:OnSubStart1112004(arg1)
    print("OnSubStart1112004")
    self:CreateQuestNpc(arg1, npcs.Npc10377Data.id, 2)
end

function Quest11120:OnSubFinish1112004(arg1)
    print("OnSubFinish1112004")
end

function Quest11120:OnSubFailed1112004(arg1)
    print("OnSubFailed1112004")
end

return Quest11120
