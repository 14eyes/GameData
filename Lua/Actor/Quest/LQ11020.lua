require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11020 = class("Quest11020", QuestActorProxy)
Quest11020.defaultAlias = "Quest11020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102001"] = self.OnSubStart1102001,
        ["1102002"] = self.OnSubStart1102002,
        ["1102003"] = self.OnSubStart1102003
    }
end

function Quest11020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102001"] = self.OnSubFinish1102001,
        ["1102002"] = self.OnSubFinish1102002,
        ["1102003"] = self.OnSubFinish1102003
    }
end

function Quest11020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1102001"] = self.OnSubFailed1102001,
        ["1102002"] = self.OnSubFailed1102002,
        ["1102003"] = self.OnSubFailed1102003
    }
end

function Quest11020:Start()
    print("Start")
end

function Quest11020:OnDestroy()
    print("OnDestroy")
end

function Quest11020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11020:NPCSitDown()
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair()
        arg1:GetQuestNpcActor(npcs.Npc10303Data.alias):SitOnChair()
        arg1:GetQuestNpcActor(npcs.Npc10308Data.alias):SitOnChair()
        arg1:GetQuestNpcActor(npcs.Npc10309Data.alias):SitOnChair()
    end)
end

function Quest11020:NPCStandUp()
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):StandFromChair()
    self:GetQuestNpcActor(npcs.Npc10303Data.alias):StandFromChair()
end

function Quest11020:OnSubStart1102001(arg1)
    print("OnSubStart1102001")
    actorMgr:CreateActorWithPos("Q1102001Trigger", "Actor/Gadget/Q1102001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11020ZL1").pos, sceneData:GetDummyPoint(3, "Q11020ZL1").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10308Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10309Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q11020SitTrigger_.alias, datas.Q11020SitTrigger_.script, datas.Q11020SitTrigger_.id, 0, datas.Q11020SitTrigger_.point.pos, datas.Q11020SitTrigger_.point.rot, true, false, 3)
end

function Quest11020:OnSubFinish1102001(arg1)
    print("OnSubFinish1102001")
end

function Quest11020:OnSubFailed1102001(arg1)
    print("OnSubFailed1102001")
end

function Quest11020:OnSubStart1102002(arg1)
    print("OnSubStart1102002")
    self:NPCSitDown()
end

function Quest11020:OnSubFinish1102002(arg1)
    print("OnSubFinish1102002")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    end)
end

function Quest11020:OnSubFailed1102002(arg1)
    print("OnSubFailed1102002")
end

function Quest11020:OnSubStart1102003(arg1)
    print("OnSubStart1102003")
    self:NPCStandUp()
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
end

function Quest11020:OnSubFinish1102003(arg1)
    print("OnSubFinish1102003")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    end)
end

function Quest11020:OnSubFailed1102003(arg1)
    print("OnSubFailed1102003")
end

return Quest11020
