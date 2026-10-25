require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12038 = class("Quest12038", QuestActorProxy)
Quest12038.defaultAlias = "Quest12038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203801"] = self.OnSubStart1203801,
        ["1203802"] = self.OnSubStart1203802,
        ["1203803"] = self.OnSubStart1203803,
        ["1203804"] = self.OnSubStart1203804,
        ["1203805"] = self.OnSubStart1203805,
        ["1203806"] = self.OnSubStart1203806,
        ["1203807"] = self.OnSubStart1203807,
        ["1203815"] = self.OnSubStart1203815,
        ["1203818"] = self.OnSubStart1203818,
        ["1203817"] = self.OnSubStart1203817,
        ["1203808"] = self.OnSubStart1203808,
        ["1203816"] = self.OnSubStart1203816,
        ["1203809"] = self.OnSubStart1203809,
        ["1203819"] = self.OnSubStart1203819,
        ["1203810"] = self.OnSubStart1203810,
        ["1203820"] = self.OnSubStart1203820,
        ["1203822"] = self.OnSubStart1203822,
        ["1203821"] = self.OnSubStart1203821,
        ["1203811"] = self.OnSubStart1203811,
        ["1203812"] = self.OnSubStart1203812,
        ["1203813"] = self.OnSubStart1203813,
        ["1203823"] = self.OnSubStart1203823,
        ["1203814"] = self.OnSubStart1203814
    }
end

function Quest12038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203801"] = self.OnSubFinish1203801,
        ["1203802"] = self.OnSubFinish1203802,
        ["1203803"] = self.OnSubFinish1203803,
        ["1203804"] = self.OnSubFinish1203804,
        ["1203805"] = self.OnSubFinish1203805,
        ["1203806"] = self.OnSubFinish1203806,
        ["1203807"] = self.OnSubFinish1203807,
        ["1203815"] = self.OnSubFinish1203815,
        ["1203818"] = self.OnSubFinish1203818,
        ["1203817"] = self.OnSubFinish1203817,
        ["1203808"] = self.OnSubFinish1203808,
        ["1203816"] = self.OnSubFinish1203816,
        ["1203809"] = self.OnSubFinish1203809,
        ["1203819"] = self.OnSubFinish1203819,
        ["1203810"] = self.OnSubFinish1203810,
        ["1203820"] = self.OnSubFinish1203820,
        ["1203822"] = self.OnSubFinish1203822,
        ["1203821"] = self.OnSubFinish1203821,
        ["1203811"] = self.OnSubFinish1203811,
        ["1203812"] = self.OnSubFinish1203812,
        ["1203813"] = self.OnSubFinish1203813,
        ["1203823"] = self.OnSubFinish1203823,
        ["1203814"] = self.OnSubFinish1203814
    }
end

function Quest12038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12038:Start()
    print("Start")
end

function Quest12038:OnDestroy()
    print("OnDestroy")
end

function Quest12038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 1064)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12593Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12589Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q12038Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger7", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger8", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger9", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger10", 3, false)
    actorMgr:DestroyEntityActor("Q12038Trigger11", 3, false)
end

function Quest12038:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12038:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest12038:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest12038:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest12038:OnSubStart1203801(arg1)
    print("OnSubStart1203801")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3054Data.id, 1)
        arg1_2:NpcCreate(arg1, npcs.Npc3042Data.id, 3)
        arg1_2:GetQuestNpcActor(npcs.Npc3042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        arg1_2:NotifyTo(npcs.Npc3057Data.alias, 1, true)
    end)
end

function Quest12038:OnSubFinish1203801(arg1)
    print("OnSubFinish1203801")
    self:NpcDestroy(npcs.Npc3054Data.alias, 1064)
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc3042Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3057Data.alias, 0, true)
end

function Quest12038:OnSubStart1203802(arg1)
    print("OnSubStart1203802")
    self:NpcCreate(arg1, npcs.Npc3027Data.id, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)
end

function Quest12038:OnSubFinish1203802(arg1)
    print("OnSubFinish1203802")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
end

function Quest12038:OnSubStart1203803(arg1)
    print("OnSubStart1203803")
    self:NpcCreate(arg1, npcs.Npc12593Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12593Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3022Data.alias, 1, true)
    end)
end

function Quest12038:OnSubFinish1203803(arg1)
    print("OnSubFinish1203803")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc3027Data.alias, 3)
    self:TransmitPlayerById(arg1, 1)
end

function Quest12038:OnSubStart1203804(arg1)
    print("OnSubStart1203804")
    actorMgr:CreateActorWithPos("Q12038Trigger", "Actor/Gadget/Q12038Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203804").pos, sceneData:GetDummyPoint(3, "guide_Q1203804").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3022Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203804(arg1)
    print("OnSubFinish1203804")
    self:ActorDestroy("Q12038Trigger")
end

function Quest12038:OnSubStart1203805(arg1)
    print("OnSubStart1203805")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12038:OnSubFinish1203805(arg1)
    print("OnSubFinish1203805")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3022Data.alias, 0, true)
end

function Quest12038:OnSubStart1203806(arg1)
    print("OnSubStart1203806")
    actorMgr:CreateActorWithPos("Q12038Trigger1", "Actor/Gadget/Q12038Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "N10000005_Q1203899").pos, sceneData:GetDummyPoint(3, "N10000005_Q1203899").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203806(arg1)
    print("OnSubFinish1203806")
    self:NpcDestroy(npcs.Npc12593Data.alias, 3)
    self:ActorDestroy("Q12038Trigger1")
end

function Quest12038:OnSubStart1203807(arg1)
    print("OnSubStart1203807")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12038:OnSubFinish1203807(arg1)
    print("OnSubFinish1203807")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
end

function Quest12038:OnSubStart1203815(arg1)
    print("OnSubStart1203815")
    actorMgr:CreateActorWithPos("Q12038Trigger5", "Actor/Gadget/Q12038Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203851").pos, sceneData:GetDummyPoint(3, "Q1203851").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203815(arg1)
    print("OnSubFinish1203815")
    self:ActorDestroy("Q12038Trigger5")
end

function Quest12038:OnSubStart1203818(arg1)
    print("OnSubStart1203818")
    actorMgr:CreateActorWithPos("Q12038Trigger6", "Actor/Gadget/Q12038Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203852").pos, sceneData:GetDummyPoint(3, "Q1203852").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203818(arg1)
    print("OnSubFinish1203818")
    self:ActorDestroy("Q12038Trigger6")
end

function Quest12038:OnSubStart1203817(arg1)
    print("OnSubStart1203817")
    actorMgr:CreateActorWithPos("Q12038Trigger4", "Actor/Gadget/Q12038Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203808_N1005").pos, sceneData:GetDummyPoint(3, "Q1203808_N1005").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203817(arg1)
    print("OnSubFinish1203817")
    self:ActorDestroy("Q12038Trigger4")
end

function Quest12038:OnSubStart1203808(arg1)
    print("OnSubStart1203808")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12038:OnSubFinish1203808(arg1)
    print("OnSubFinish1203808")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
end

function Quest12038:OnSubStart1203816(arg1)
    print("OnSubStart1203816")
    actorMgr:CreateActorWithPos("Q12038Trigger2", "Actor/Gadget/Q12038Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203808").pos, sceneData:GetDummyPoint(3, "guide_Q1203808").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203816(arg1)
    print("OnSubFinish1203816")
    self:ActorDestroy("Q12038Trigger2")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest12038:OnSubStart1203809(arg1)
    print("OnSubStart1203809")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203809(arg1)
    print("OnSubFinish1203809")
end

function Quest12038:OnSubStart1203819(arg1)
    print("OnSubStart1203819")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:CallDelay(1, function(arg1)
        actorMgr:CreateActorWithPos("Q12038Trigger7", "Actor/Gadget/Q12038Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203808").pos, sceneData:GetDummyPoint(3, "guide_Q1203808").rot, true, false, 3)
    end)
end

function Quest12038:OnSubFinish1203819(arg1)
    print("OnSubFinish1203819")
    self:ActorDestroy("Q12038Trigger7")
end

function Quest12038:OnSubStart1203810(arg1)
    print("OnSubStart1203810")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12038:OnSubFinish1203810(arg1)
    print("OnSubFinish1203810")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
end

function Quest12038:OnSubStart1203820(arg1)
    print("OnSubStart1203820")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12038Trigger8", "Actor/Gadget/Q12038Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203853").pos, sceneData:GetDummyPoint(3, "Q1203853").rot, true, false, 3)
end

function Quest12038:OnSubFinish1203820(arg1)
    print("OnSubFinish1203820")
    self:ActorDestroy("Q12038Trigger8")
end

function Quest12038:OnSubStart1203822(arg1)
    print("OnSubStart1203822")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12038Trigger9", "Actor/Gadget/Q12038Trigger9", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203854").pos, sceneData:GetDummyPoint(3, "Q1203854").rot, true, false, 3)
end

function Quest12038:OnSubFinish1203822(arg1)
    print("OnSubFinish1203822")
    self:ActorDestroy("Q12038Trigger9")
end

function Quest12038:OnSubStart1203821(arg1)
    print("OnSubStart1203821")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12038Trigger10", "Actor/Gadget/Q12038Trigger10", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203855").pos, sceneData:GetDummyPoint(3, "Q1203855").rot, true, false, 3)
end

function Quest12038:OnSubFinish1203821(arg1)
    print("OnSubFinish1203821")
    self:ActorDestroy("Q12038Trigger10")
end

function Quest12038:OnSubStart1203811(arg1)
    print("OnSubStart1203811")
    actorMgr:CreateActorWithPos("Q12038Trigger3", "Actor/Gadget/Q12038Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203811").pos, sceneData:GetDummyPoint(3, "guide_Q1203811").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203811(arg1)
    print("OnSubFinish1203811")
    self:ActorDestroy("Q12038Trigger3")
end

function Quest12038:OnSubStart1203812(arg1)
    print("OnSubStart1203812")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
    self:NpcCreate(arg1, npcs.Npc12589Data.id, 3)
end

function Quest12038:OnSubFinish1203812(arg1)
    print("OnSubFinish1203812")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc12589Data.alias, 3)
end

function Quest12038:OnSubStart1203813(arg1)
    print("OnSubStart1203813")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12038:OnSubFinish1203813(arg1)
    print("OnSubFinish1203813")
end

function Quest12038:OnSubStart1203823(arg1)
    print("OnSubStart1203823")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12038Trigger11", "Actor/Gadget/Q12038Trigger11", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203813").pos, sceneData:GetDummyPoint(3, "guide_Q1203813").rot, true, false, 3)
end

function Quest12038:OnSubFinish1203823(arg1)
    print("OnSubFinish1203823")
    self:ActorDestroy("Q12038Trigger11")
end

function Quest12038:OnSubStart1203814(arg1)
    print("OnSubStart1203814")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12038:OnSubFinish1203814(arg1)
    print("OnSubFinish1203814")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc12589Data.alias, 3)
end

return Quest12038
