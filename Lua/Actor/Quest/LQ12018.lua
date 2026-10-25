require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12018 = class("Quest12018", QuestActorProxy)
Quest12018.defaultAlias = "Quest12018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201801"] = self.OnSubStart1201801,
        ["1201802"] = self.OnSubStart1201802,
        ["1201803"] = self.OnSubStart1201803,
        ["1201804"] = self.OnSubStart1201804,
        ["1201805"] = self.OnSubStart1201805,
        ["1201806"] = self.OnSubStart1201806,
        ["1201807"] = self.OnSubStart1201807,
        ["1201808"] = self.OnSubStart1201808,
        ["1201809"] = self.OnSubStart1201809,
        ["1201810"] = self.OnSubStart1201810,
        ["1201811"] = self.OnSubStart1201811,
        ["1201812"] = self.OnSubStart1201812
    }
end

function Quest12018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201801"] = self.OnSubFinish1201801,
        ["1201802"] = self.OnSubFinish1201802,
        ["1201803"] = self.OnSubFinish1201803,
        ["1201804"] = self.OnSubFinish1201804,
        ["1201805"] = self.OnSubFinish1201805,
        ["1201806"] = self.OnSubFinish1201806,
        ["1201807"] = self.OnSubFinish1201807,
        ["1201808"] = self.OnSubFinish1201808,
        ["1201809"] = self.OnSubFinish1201809,
        ["1201810"] = self.OnSubFinish1201810,
        ["1201811"] = self.OnSubFinish1201811,
        ["1201812"] = self.OnSubFinish1201812
    }
end

function Quest12018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201801"] = self.OnSubFailed1201801,
        ["1201802"] = self.OnSubFailed1201802,
        ["1201803"] = self.OnSubFailed1201803,
        ["1201804"] = self.OnSubFailed1201804,
        ["1201805"] = self.OnSubFailed1201805,
        ["1201806"] = self.OnSubFailed1201806,
        ["1201807"] = self.OnSubFailed1201807,
        ["1201808"] = self.OnSubFailed1201808,
        ["1201809"] = self.OnSubFailed1201809,
        ["1201810"] = self.OnSubFailed1201810,
        ["1201811"] = self.OnSubFailed1201811,
        ["1201812"] = self.OnSubFailed1201812
    }
end

function Quest12018:Start()
    print("Start")
end

function Quest12018:OnDestroy()
    print("OnDestroy")
end

function Quest12018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12018:OnSubStart1201801(arg1)
    print("OnSubStart1201801")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3032Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3033Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201801Trigger", "Actor/Gadget/Q1201801Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12018Dicheng1").pos, sceneData:GetDummyPoint(3, "Q12018Dicheng1").rot, true, false, 3)
end

function Quest12018:OnSubFinish1201801(arg1)
    print("OnSubFinish1201801")
end

function Quest12018:OnSubFailed1201801(arg1)
    print("OnSubFailed1201801")
end

function Quest12018:OnSubStart1201802(arg1)
    print("OnSubStart1201802")
    self:CreateQuestNpc(arg1, npcs.Npc12076Data.id, 1)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc3032Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3033Data.alias, 0, true)
end

function Quest12018:OnSubFinish1201802(arg1)
    print("OnSubFinish1201802")
end

function Quest12018:OnSubFailed1201802(arg1)
    print("OnSubFailed1201802")
end

function Quest12018:OnSubStart1201803(arg1)
    print("OnSubStart1201803")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc12076Data.alias)
end

function Quest12018:OnSubFinish1201803(arg1)
    print("OnSubFinish1201803")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
end

function Quest12018:OnSubFailed1201803(arg1)
    print("OnSubFailed1201803")
end

function Quest12018:OnSubStart1201804(arg1)
    print("OnSubStart1201804")
    self:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12078Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12079Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12080Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12081Data.id, 6)
    actorMgr:CreateActorWithPos("Q1201804Trigger", "Actor/Gadget/Q1201804Trigger", 70900002, 0, sceneData:GetDummyPoint(1062, "Q12018Watch01").pos, sceneData:GetDummyPoint(1062, "Q12018Watch01").rot, true, false, 1062)
    actorMgr:CreateActorWithPos("Q120180401Trigger", "Actor/Gadget/Q120180401Trigger", 70900002, 0, sceneData:GetDummyPoint(1062, "Q12018Watch02").pos, sceneData:GetDummyPoint(1062, "Q12018Watch02").rot, true, false, 1062)
end

function Quest12018:OnSubFinish1201804(arg1)
    print("OnSubFinish1201804")
end

function Quest12018:OnSubFailed1201804(arg1)
    print("OnSubFailed1201804")
end

function Quest12018:OnSubStart1201805(arg1)
    print("OnSubStart1201805")
    actorMgr:CreateActorWithPos("Q1201805Trigger", "Actor/Gadget/Q1201805Trigger", 70900002, 0, sceneData:GetDummyPoint(1062, "Q12018Takatsukasa_susumu1").pos, sceneData:GetDummyPoint(1062, "Q12018Takatsukasa_susumu1").rot, true, false, 1062)
end

function Quest12018:OnSubFinish1201805(arg1)
    print("OnSubFinish1201805")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12018:OnSubFailed1201805(arg1)
    print("OnSubFailed1201805")
end

function Quest12018:OnSubStart1201806(arg1)
    print("OnSubStart1201806")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("1201806", function(arg1)
            arg1:FinishQuestID(false, 1201806)
        end, nil, nil, false)
    end)
end

function Quest12018:OnSubFinish1201806(arg1)
    print("OnSubFinish1201806")
end

function Quest12018:OnSubFailed1201806(arg1)
    print("OnSubFailed1201806")
end

function Quest12018:OnSubStart1201807(arg1)
    print("OnSubStart1201807")
    self:RequestInteraction(npcs.Npc12076Data.alias)
    self:GetQuestNpcActor(npcs.Npc3054Data.alias):HideSelf()
end

function Quest12018:OnSubFinish1201807(arg1)
    print("OnSubFinish1201807")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12078Data.alias, 1062)
    self:SafeDestroyQuestNpc(npcs.Npc12079Data.alias, 1062)
    self:SafeDestroyQuestNpc(npcs.Npc12080Data.alias, 1062)
    self:SafeDestroyQuestNpc(npcs.Npc12081Data.alias, 1062)
end

function Quest12018:OnSubFailed1201807(arg1)
    print("OnSubFailed1201807")
end

function Quest12018:OnSubStart1201808(arg1)
    print("OnSubStart1201808")
end

function Quest12018:OnSubFinish1201808(arg1)
    print("OnSubFinish1201808")
end

function Quest12018:OnSubFailed1201808(arg1)
    print("OnSubFailed1201808")
end

function Quest12018:OnSubStart1201809(arg1)
    print("OnSubStart1201809")
    self:CreateQuestNpc(arg1, npcs.Npc12076Data.id, 1)
    actorMgr:CreateActorWithPos("Q1201809Trigger", "Actor/Gadget/Q1201809Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12018ShougunYing10").pos, sceneData:GetDummyPoint(3, "Q12018ShougunYing10").rot, true, false, 3)
end

function Quest12018:OnSubFinish1201809(arg1)
    print("OnSubFinish1201809")
end

function Quest12018:OnSubFailed1201809(arg1)
    print("OnSubFailed1201809")
end

function Quest12018:OnSubStart1201810(arg1)
    print("OnSubStart1201810")
    self:RequestInteraction(npcs.Npc12076Data.alias)
end

function Quest12018:OnSubFinish1201810(arg1)
    print("OnSubFinish1201810")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
end

function Quest12018:OnSubFailed1201810(arg1)
    print("OnSubFailed1201810")
end

function Quest12018:OnSubStart1201811(arg1)
    print("OnSubStart1201811")
    actorMgr:CreateActorWithPos("Q1201811Trigger", "Actor/Gadget/Q1201811Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015Shenshe1").pos, sceneData:GetDummyPoint(3, "Q12015Shenshe1").rot, true, false, 3)
end

function Quest12018:OnSubFinish1201811(arg1)
    print("OnSubFinish1201811")
end

function Quest12018:OnSubFailed1201811(arg1)
    print("OnSubFailed1201811")
end

function Quest12018:OnSubStart1201812(arg1)
    print("OnSubStart1201812")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
end

function Quest12018:OnSubFinish1201812(arg1)
    print("OnSubFinish1201812")
end

function Quest12018:OnSubFailed1201812(arg1)
    print("OnSubFailed1201812")
end

return Quest12018
