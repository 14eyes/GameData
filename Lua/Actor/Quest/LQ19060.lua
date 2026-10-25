require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19060 = class("Quest19060", QuestActorProxy)
Quest19060.defaultAlias = "Quest19060"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19060:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906001"] = self.OnSubStart1906001,
        ["1906002"] = self.OnSubStart1906002,
        ["1906003"] = self.OnSubStart1906003,
        ["1906004"] = self.OnSubStart1906004,
        ["1906022"] = self.OnSubStart1906022,
        ["1906013"] = self.OnSubStart1906013,
        ["1906014"] = self.OnSubStart1906014,
        ["1906015"] = self.OnSubStart1906015,
        ["1906016"] = self.OnSubStart1906016,
        ["1906024"] = self.OnSubStart1906024,
        ["1906025"] = self.OnSubStart1906025,
        ["1906026"] = self.OnSubStart1906026,
        ["1906027"] = self.OnSubStart1906027,
        ["1906029"] = self.OnSubStart1906029,
        ["1906030"] = self.OnSubStart1906030,
        ["1906005"] = self.OnSubStart1906005,
        ["1906023"] = self.OnSubStart1906023,
        ["1906017"] = self.OnSubStart1906017,
        ["1906018"] = self.OnSubStart1906018,
        ["1906019"] = self.OnSubStart1906019,
        ["1906020"] = self.OnSubStart1906020,
        ["1906031"] = self.OnSubStart1906031,
        ["1906032"] = self.OnSubStart1906032,
        ["1906033"] = self.OnSubStart1906033,
        ["1906034"] = self.OnSubStart1906034,
        ["1906035"] = self.OnSubStart1906035,
        ["1906036"] = self.OnSubStart1906036,
        ["1906006"] = self.OnSubStart1906006,
        ["1906028"] = self.OnSubStart1906028,
        ["1906007"] = self.OnSubStart1906007,
        ["1906008"] = self.OnSubStart1906008,
        ["1906009"] = self.OnSubStart1906009,
        ["1906010"] = self.OnSubStart1906010,
        ["1906021"] = self.OnSubStart1906021,
        ["1906011"] = self.OnSubStart1906011,
        ["1906012"] = self.OnSubStart1906012
    }
end

function Quest19060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906001"] = self.OnSubFinish1906001,
        ["1906002"] = self.OnSubFinish1906002,
        ["1906003"] = self.OnSubFinish1906003,
        ["1906004"] = self.OnSubFinish1906004,
        ["1906022"] = self.OnSubFinish1906022,
        ["1906013"] = self.OnSubFinish1906013,
        ["1906014"] = self.OnSubFinish1906014,
        ["1906015"] = self.OnSubFinish1906015,
        ["1906016"] = self.OnSubFinish1906016,
        ["1906024"] = self.OnSubFinish1906024,
        ["1906025"] = self.OnSubFinish1906025,
        ["1906026"] = self.OnSubFinish1906026,
        ["1906027"] = self.OnSubFinish1906027,
        ["1906029"] = self.OnSubFinish1906029,
        ["1906030"] = self.OnSubFinish1906030,
        ["1906005"] = self.OnSubFinish1906005,
        ["1906023"] = self.OnSubFinish1906023,
        ["1906017"] = self.OnSubFinish1906017,
        ["1906018"] = self.OnSubFinish1906018,
        ["1906019"] = self.OnSubFinish1906019,
        ["1906020"] = self.OnSubFinish1906020,
        ["1906031"] = self.OnSubFinish1906031,
        ["1906032"] = self.OnSubFinish1906032,
        ["1906033"] = self.OnSubFinish1906033,
        ["1906034"] = self.OnSubFinish1906034,
        ["1906035"] = self.OnSubFinish1906035,
        ["1906036"] = self.OnSubFinish1906036,
        ["1906006"] = self.OnSubFinish1906006,
        ["1906028"] = self.OnSubFinish1906028,
        ["1906007"] = self.OnSubFinish1906007,
        ["1906008"] = self.OnSubFinish1906008,
        ["1906009"] = self.OnSubFinish1906009,
        ["1906010"] = self.OnSubFinish1906010,
        ["1906021"] = self.OnSubFinish1906021,
        ["1906011"] = self.OnSubFinish1906011,
        ["1906012"] = self.OnSubFinish1906012
    }
end

function Quest19060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19060:Start()
    print("Start")
end

function Quest19060:OnDestroy()
    print("OnDestroy")
end

function Quest19060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19060:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3020Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12550Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3020Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19060Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19060Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19060Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19060Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19060Trigger4", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19060:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Invoke 1")
        self:ActionSafeCall(function(arg1)
            arg1:RequestCoopInteractionFromSubStartPoint(105901, 1906004)
        end)
    elseif arg1 == 2 then
        print("Invoke 2")
        self:ActionSafeCall(function(arg1)
            arg1:RequestCoopInteractionFromSubStartPoint(105901, 1906005)
        end)
    elseif arg1 == 3 then
        print("Invoke 3")
        local questGlobalVar = self:GetQuestGlobalVar(1906008)
        local v = self:GetQuestGlobalVar(1906002)
        local questGlobalVar2 = self:GetQuestGlobalVar(1906004)
        local questGlobalVar3 = self:GetQuestGlobalVar(1906003)
        local questGlobalVar4 = self:GetQuestGlobalVar(1906007)
        local questGlobalVar5 = self:GetQuestGlobalVar(1906006)
        if questGlobalVar == 1 then
            self:FinishQuestID(false, 1906017)
        end

        if v == 1 and questGlobalVar2 == 1 then
            self:FinishQuestID(false, 1906018)
        end

        if questGlobalVar3 == 1 and questGlobalVar4 == 1 then
            self:FinishQuestID(false, 1906019)
        end

        if questGlobalVar2 == 1 and v == 1 and questGlobalVar5 == 1 then
            self:FinishQuestID(false, 1906020)
        end
    end
end

function Quest19060:OnSubStart1906001(arg1)
    print("OnSubStart1906001")
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
    actorMgr:GetActor("19060"):RequestCoopInteractionFromSubStartPoint(105901, 1906001)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3041Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc3042Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
end

function Quest19060:OnSubFinish1906001(arg1)
    print("OnSubFinish1906001")
end

function Quest19060:OnSubStart1906002(arg1)
    print("OnSubStart1906002")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q19060Trigger", "Actor/Gadget/Q19060Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1906002_guide").pos, sceneData:GetDummyPoint(3, "Q1906002_guide").rot, true, false, 3)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc3041Data.alias)
        questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = arg1:GetQuestNpcActor(npcs.Npc3042Data.alias)
        v:DoFreeStyle(1170, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
    end)
end

function Quest19060:OnSubFinish1906002(arg1)
    print("OnSubFinish1906002")
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
end

function Quest19060:OnSubStart1906003(arg1)
    print("OnSubStart1906003")
    self:CreateQuestNpc(arg1, npcs.Npc3019Data.id, 0)
    actorMgr:GetActor("19060"):RequestCoopInteractionFromSubStartPoint(105901, 1906003)
    self:NotifyTo(npcs.Npc3020Data.alias, 1, true)
end

function Quest19060:OnSubFinish1906003(arg1)
    print("OnSubFinish1906003")
end

function Quest19060:OnSubStart1906004(arg1)
    print("OnSubStart1906004")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        actorMgr:GetActor("19060"):RequestCoopInteractionFromSubStartPoint(105901, 1906004)
        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest19060:OnSubFinish1906004(arg1)
    print("OnSubFinish1906004")
end

function Quest19060:OnSubStart1906022(arg1)
    print("OnSubStart1906022")
end

function Quest19060:OnSubFinish1906022(arg1)
    print("OnSubFinish1906022")
end

function Quest19060:OnSubStart1906013(arg1)
    print("OnSubStart1906013")
end

function Quest19060:OnSubFinish1906013(arg1)
    print("OnSubFinish1906013")
end

function Quest19060:OnSubStart1906014(arg1)
    print("OnSubStart1906014")
end

function Quest19060:OnSubFinish1906014(arg1)
    print("OnSubFinish1906014")
end

function Quest19060:OnSubStart1906015(arg1)
    print("OnSubStart1906015")
end

function Quest19060:OnSubFinish1906015(arg1)
    print("OnSubFinish1906015")
end

function Quest19060:OnSubStart1906016(arg1)
    print("OnSubStart1906016")
end

function Quest19060:OnSubFinish1906016(arg1)
    print("OnSubFinish1906016")
end

function Quest19060:OnSubStart1906024(arg1)
    print("OnSubStart1906024")
end

function Quest19060:OnSubFinish1906024(arg1)
    print("OnSubFinish1906024")
end

function Quest19060:OnSubStart1906025(arg1)
    print("OnSubStart1906025")
end

function Quest19060:OnSubFinish1906025(arg1)
    print("OnSubFinish1906025")
end

function Quest19060:OnSubStart1906026(arg1)
    print("OnSubStart1906026")
end

function Quest19060:OnSubFinish1906026(arg1)
    print("OnSubFinish1906026")
end

function Quest19060:OnSubStart1906027(arg1)
    print("OnSubStart1906027")
end

function Quest19060:OnSubFinish1906027(arg1)
    print("OnSubFinish1906027")
end

function Quest19060:OnSubStart1906029(arg1)
    print("OnSubStart1906029")
end

function Quest19060:OnSubFinish1906029(arg1)
    print("OnSubFinish1906029")
end

function Quest19060:OnSubStart1906030(arg1)
    print("OnSubStart1906030")
end

function Quest19060:OnSubFinish1906030(arg1)
    print("OnSubFinish1906030")
end

function Quest19060:OnSubStart1906005(arg1)
    print("OnSubStart1906005")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q19060Trigger3", "Actor/Gadget/Q19060Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1906006_N511").pos, sceneData:GetDummyPoint(3, "Q1906006_N511").rot, true, false, 3)
    end)
end

function Quest19060:OnSubFinish1906005(arg1)
    print("OnSubFinish1906005")
end

function Quest19060:OnSubStart1906023(arg1)
    print("OnSubStart1906023")
end

function Quest19060:OnSubFinish1906023(arg1)
    print("OnSubFinish1906023")
end

function Quest19060:OnSubStart1906017(arg1)
    print("OnSubStart1906017")
    if self:GetQuestGlobalVar(1906008) == 1 then
        self:FinishQuestID(false, 1906017)
    end
end

function Quest19060:OnSubFinish1906017(arg1)
    print("OnSubFinish1906017")
end

function Quest19060:OnSubStart1906018(arg1)
    print("OnSubStart1906018")
    local questGlobalVar = self:GetQuestGlobalVar(1906002)
    local v = self:GetQuestGlobalVar(1906004)
    if questGlobalVar == 1 and v == 1 then
        self:FinishQuestID(false, 1906018)
    end
end

function Quest19060:OnSubFinish1906018(arg1)
    print("OnSubFinish1906018")
end

function Quest19060:OnSubStart1906019(arg1)
    print("OnSubStart1906019")
    local questGlobalVar = self:GetQuestGlobalVar(1906003)
    local v = self:GetQuestGlobalVar(1906007)
    if questGlobalVar == 1 and v == 1 then
        self:FinishQuestID(false, 1906019)
    end
end

function Quest19060:OnSubFinish1906019(arg1)
    print("OnSubFinish1906019")
end

function Quest19060:OnSubStart1906020(arg1)
    print("OnSubStart1906020")
    local questGlobalVar = self:GetQuestGlobalVar(1906004)
    local v = self:GetQuestGlobalVar(1906002)
    local questGlobalVar2 = self:GetQuestGlobalVar(1906006)
    if questGlobalVar == 1 and v == 1 and questGlobalVar2 == 1 then
        self:FinishQuestID(false, 1906020)
    end
end

function Quest19060:OnSubFinish1906020(arg1)
    print("OnSubFinish1906020")
end

function Quest19060:OnSubStart1906031(arg1)
    print("OnSubStart1906031")
end

function Quest19060:OnSubFinish1906031(arg1)
    print("OnSubFinish1906031")
end

function Quest19060:OnSubStart1906032(arg1)
    print("OnSubStart1906032")
end

function Quest19060:OnSubFinish1906032(arg1)
    print("OnSubFinish1906032")
end

function Quest19060:OnSubStart1906033(arg1)
    print("OnSubStart1906033")
end

function Quest19060:OnSubFinish1906033(arg1)
    print("OnSubFinish1906033")
end

function Quest19060:OnSubStart1906034(arg1)
    print("OnSubStart1906034")
end

function Quest19060:OnSubFinish1906034(arg1)
    print("OnSubFinish1906034")
end

function Quest19060:OnSubStart1906035(arg1)
    print("OnSubStart1906035")
end

function Quest19060:OnSubFinish1906035(arg1)
    print("OnSubFinish1906035")
end

function Quest19060:OnSubStart1906036(arg1)
    print("OnSubStart1906036")
end

function Quest19060:OnSubFinish1906036(arg1)
    print("OnSubFinish1906036")
end

function Quest19060:OnSubStart1906006(arg1)
    print("OnSubStart1906006")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q19060Trigger4", "Actor/Gadget/Q19060Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1906006_N511").pos, sceneData:GetDummyPoint(3, "Q1906006_N511").rot, true, false, 3)
    end)
end

function Quest19060:OnSubFinish1906006(arg1)
    print("OnSubFinish1906006")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
end

function Quest19060:OnSubStart1906028(arg1)
    print("OnSubStart1906028")
end

function Quest19060:OnSubFinish1906028(arg1)
    print("OnSubFinish1906028")
end

function Quest19060:OnSubStart1906007(arg1)
    print("OnSubStart1906007")
    actorMgr:CreateActorWithPos("Q19060Trigger1", "Actor/Gadget/Q19060Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1905802_N1005").pos, sceneData:GetDummyPoint(3, "Q1905802_N1005").rot, true, false, 3)
end

function Quest19060:OnSubFinish1906007(arg1)
    print("OnSubFinish1906007")
    self:DestroyQuestNpcActor(npcs.Npc3020Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3019Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
end

function Quest19060:OnSubStart1906008(arg1)
    print("OnSubStart1906008")
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
    self:RequestCoopInteractionFromSubStartPoint(105901, 1906008)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3041Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc3042Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
end

function Quest19060:OnSubFinish1906008(arg1)
    print("OnSubFinish1906008")
end

function Quest19060:OnSubStart1906009(arg1)
    print("OnSubStart1906009")
end

function Quest19060:OnSubFinish1906009(arg1)
    print("OnSubFinish1906009")
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
end

function Quest19060:OnSubStart1906010(arg1)
    print("OnSubStart1906010")
end

function Quest19060:OnSubFinish1906010(arg1)
    print("OnSubFinish1906010")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3041Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc3042Data.alias):DisableInteeHeadCtrl(false)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)
end

function Quest19060:OnSubStart1906021(arg1)
    print("OnSubStart1906021")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest19060:OnSubFinish1906021(arg1)
    print("OnSubFinish1906021")
end

function Quest19060:OnSubStart1906011(arg1)
    print("OnSubStart1906011")
    self:RequestCoopInteractionFromSubStartPoint(105901, 1906011)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest19060:OnSubFinish1906011(arg1)
    print("OnSubFinish1906011")
end

function Quest19060:OnSubStart1906012(arg1)
    print("OnSubStart1906012")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
    self:RequestCoopInteractionFromSubStartPoint(105901, 1906012)
    self:CreateQuestNpc(arg1, npcs.Npc12550Data.id, 0)
    actorMgr:CreateActorWithPos("Q19060Trigger2", "Actor/Gadget/Q19060Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1907203_N3042").pos, sceneData:GetDummyPoint(3, "Q1907203_N3042").rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3042Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12550Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest19060:OnSubFinish1906012(arg1)
    print("OnSubFinish1906012")
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12550Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12550Data.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

return Quest19060
