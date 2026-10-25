require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79060 = class("Quest79060", QuestActorProxy)
Quest79060.defaultAlias = "Quest79060"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79060:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906018"] = self.OnSubStart7906018,
        ["7906024"] = self.OnSubStart7906024,
        ["7906001"] = self.OnSubStart7906001,
        ["7906002"] = self.OnSubStart7906002,
        ["7906028"] = self.OnSubStart7906028,
        ["7906025"] = self.OnSubStart7906025,
        ["7906026"] = self.OnSubStart7906026,
        ["7906027"] = self.OnSubStart7906027,
        ["7906003"] = self.OnSubStart7906003,
        ["7906004"] = self.OnSubStart7906004,
        ["7906005"] = self.OnSubStart7906005,
        ["7906006"] = self.OnSubStart7906006,
        ["7906007"] = self.OnSubStart7906007,
        ["7906008"] = self.OnSubStart7906008,
        ["7906009"] = self.OnSubStart7906009,
        ["7906010"] = self.OnSubStart7906010,
        ["7906022"] = self.OnSubStart7906022,
        ["7906012"] = self.OnSubStart7906012,
        ["7906013"] = self.OnSubStart7906013,
        ["7906029"] = self.OnSubStart7906029,
        ["7906021"] = self.OnSubStart7906021,
        ["7906011"] = self.OnSubStart7906011,
        ["7906023"] = self.OnSubStart7906023,
        ["7906020"] = self.OnSubStart7906020,
        ["7906015"] = self.OnSubStart7906015,
        ["7906014"] = self.OnSubStart7906014,
        ["7906019"] = self.OnSubStart7906019,
        ["7906030"] = self.OnSubStart7906030,
        ["7906016"] = self.OnSubStart7906016,
        ["7906017"] = self.OnSubStart7906017
    }
end

function Quest79060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906018"] = self.OnSubFinish7906018,
        ["7906024"] = self.OnSubFinish7906024,
        ["7906001"] = self.OnSubFinish7906001,
        ["7906002"] = self.OnSubFinish7906002,
        ["7906028"] = self.OnSubFinish7906028,
        ["7906025"] = self.OnSubFinish7906025,
        ["7906026"] = self.OnSubFinish7906026,
        ["7906027"] = self.OnSubFinish7906027,
        ["7906003"] = self.OnSubFinish7906003,
        ["7906004"] = self.OnSubFinish7906004,
        ["7906005"] = self.OnSubFinish7906005,
        ["7906006"] = self.OnSubFinish7906006,
        ["7906007"] = self.OnSubFinish7906007,
        ["7906008"] = self.OnSubFinish7906008,
        ["7906009"] = self.OnSubFinish7906009,
        ["7906010"] = self.OnSubFinish7906010,
        ["7906022"] = self.OnSubFinish7906022,
        ["7906012"] = self.OnSubFinish7906012,
        ["7906013"] = self.OnSubFinish7906013,
        ["7906029"] = self.OnSubFinish7906029,
        ["7906021"] = self.OnSubFinish7906021,
        ["7906011"] = self.OnSubFinish7906011,
        ["7906023"] = self.OnSubFinish7906023,
        ["7906020"] = self.OnSubFinish7906020,
        ["7906015"] = self.OnSubFinish7906015,
        ["7906014"] = self.OnSubFinish7906014,
        ["7906019"] = self.OnSubFinish7906019,
        ["7906030"] = self.OnSubFinish7906030,
        ["7906016"] = self.OnSubFinish7906016,
        ["7906017"] = self.OnSubFinish7906017
    }
end

function Quest79060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79060:Start()
    print("Start")
end

function Quest79060:OnDestroy()
    print("OnDestroy")
end

function Quest79060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79060:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79060:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest79060:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79060:OnSubStart7906018(arg1)
    print("OnSubStart7906018")
end

function Quest79060:OnSubFinish7906018(arg1)
    print("OnSubFinish7906018")
end

function Quest79060:OnSubStart7906024(arg1)
    print("OnSubStart7906024")
    this:PlayCutsceneIndex(7906024, function(arg1)
        actorUtils.FinishQuestID(false, 7906024)
    end, nil, nil, false)
end

function Quest79060:OnSubFinish7906024(arg1)
    print("OnSubFinish7906024")
    this:QuestNarratorTask(datas.NarratorWithIdFindSwordNoQuest)
end

function Quest79060:OnSubStart7906001(arg1)
    print("OnSubStart7906001")
    this:CreateQuestNpc(arg1, npcs.Npc21448Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21451Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21456Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21457Data.id, 0, false, 0)
end

function Quest79060:OnSubFinish7906001(arg1)
    print("OnSubFinish7906001")
end

function Quest79060:OnSubStart7906002(arg1)
    print("OnSubStart7906002")
end

function Quest79060:OnSubFinish7906002(arg1)
    print("OnSubFinish7906002")
    this:QuestNarratorTask(datas.NarratorWithIdLighthouse)
    this:SetNavigationByMainId(79060, true)
end

function Quest79060:OnSubStart7906028(arg1)
    print("OnSubStart7906028")
end

function Quest79060:OnSubFinish7906028(arg1)
    print("OnSubFinish7906028")
end

function Quest79060:OnSubStart7906025(arg1)
    print("OnSubStart7906025")
end

function Quest79060:OnSubFinish7906025(arg1)
    print("OnSubFinish7906025")
end

function Quest79060:OnSubStart7906026(arg1)
    print("OnSubStart7906026")
end

function Quest79060:OnSubFinish7906026(arg1)
    print("OnSubFinish7906026")
end

function Quest79060:OnSubStart7906027(arg1)
    print("OnSubStart7906027")
end

function Quest79060:OnSubFinish7906027(arg1)
    print("OnSubFinish7906027")
end

function Quest79060:OnSubStart7906003(arg1)
    print("OnSubStart7906003")
    this:CreateQuestNpc(arg1, npcs.Npc21452Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21453Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21454Data.id, 0, false, 0)
end

function Quest79060:OnSubFinish7906003(arg1)
    print("OnSubFinish7906003")
    this:SafeDestroyQuestNpc(npcs.Npc21452Data.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc21453Data.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc21454Data.alias, 100)
end

function Quest79060:OnSubStart7906004(arg1)
    print("OnSubStart7906004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21448Data.id, 7906004, 0, 20, 1)
end

function Quest79060:OnSubFinish7906004(arg1)
    print("OnSubFinish7906004")
    this:SetNavigationByMainId(79060, true)
end

function Quest79060:OnSubStart7906005(arg1)
    print("OnSubStart7906005")
    this:CreateQuestNpc(arg1, npcs.Npc21448Data.id, 0, false, 0)
end

function Quest79060:OnSubFinish7906005(arg1)
    print("OnSubFinish7906005")
end

function Quest79060:OnSubStart7906006(arg1)
    print("OnSubStart7906006")
    this:CreateQuestNpc(arg1, npcs.Npc21449Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7906006Trigger", "Actor/Gadget/Q7906006Trigger", 70900002, 0, {x = 1183.04, y = 295.44, z = 910.578}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
    actorMgr:CreateActorWithPos("Q7906006TriggerRMD", "Actor/Gadget/Q7906006TriggerRMD", 70900002, 0, {x = 1181.141, y = 301.7, z = 918.311}, {x = 0.0, y = 315.599, z = 0.0}, true, false, 100)
end

function Quest79060:OnSubFinish7906006(arg1)
    print("OnSubFinish7906006")
end

function Quest79060:OnSubStart7906007(arg1)
    print("OnSubStart7906007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21449Data.id, 7906007, 0, 10, 1)
    this:ClearNarratorTask()
end

function Quest79060:OnSubFinish7906007(arg1)
    print("OnSubFinish7906007")
end

function Quest79060:OnSubStart7906008(arg1)
    print("OnSubStart7906008")
end

function Quest79060:OnSubFinish7906008(arg1)
    print("OnSubFinish7906008")
end

function Quest79060:OnSubStart7906009(arg1)
    print("OnSubStart7906009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21449Data.id, 7906009, 0, 25, 1)
end

function Quest79060:OnSubFinish7906009(arg1)
    print("OnSubFinish7906009")
    this:QuestNarratorTask(datas.NarratorWithIdFlower)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21449Data.alias)
end

function Quest79060:OnSubStart7906010(arg1)
    print("OnSubStart7906010")
    actorMgr:CreateActorWithPos("Q7906010TriggerRMD", "Actor/Gadget/Q7906010TriggerRMD", 70900002, 0, {x = 1389.492, y = 218.965, z = 792.539}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
end

function Quest79060:OnSubFinish7906010(arg1)
    print("OnSubFinish7906010")
end

function Quest79060:OnSubStart7906022(arg1)
    print("OnSubStart7906022")
end

function Quest79060:OnSubFinish7906022(arg1)
    print("OnSubFinish7906022")
end

function Quest79060:OnSubStart7906012(arg1)
    print("OnSubStart7906012")
end

function Quest79060:OnSubFinish7906012(arg1)
    print("OnSubFinish7906012")
end

function Quest79060:OnSubStart7906013(arg1)
    print("OnSubStart7906013")
end

function Quest79060:OnSubFinish7906013(arg1)
    print("OnSubFinish7906013")
end

function Quest79060:OnSubStart7906029(arg1)
    print("OnSubStart7906029")
end

function Quest79060:OnSubFinish7906029(arg1)
    print("OnSubFinish7906029")
end

function Quest79060:OnSubStart7906021(arg1)
    print("OnSubStart7906021")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 7906021, 0, 40, 1)
end

function Quest79060:OnSubFinish7906021(arg1)
    print("OnSubFinish7906021")
    this:NpcDestroyWithBlackscreen(100, npcs.PaimonData.alias)
end

function Quest79060:OnSubStart7906011(arg1)
    print("OnSubStart7906011")
    actorMgr:CreateActorWithPos("Q7906011TriggerRMD1", "Actor/Gadget/Q7906011TriggerRMD1", 70900002, 0, {x = 1169.765, y = 206.597, z = 745.787}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
    actorMgr:CreateActorWithPos("Q7906011TriggerRMD2", "Actor/Gadget/Q7906011TriggerRMD2", 70900002, 0, {x = 1161.442, y = 224.33, z = 775.897}, {x = 0.0, y = 79.402, z = 0.0}, true, false, 100)
end

function Quest79060:OnSubFinish7906011(arg1)
    print("OnSubFinish7906011")
end

function Quest79060:OnSubStart7906023(arg1)
    print("OnSubStart7906023")
    this:PlayCutsceneIndex(7906024, function(arg1)
        actorUtils.FinishQuestID(false, 7906023)
    end, nil, nil, false)
end

function Quest79060:OnSubFinish7906023(arg1)
    print("OnSubFinish7906023")
end

function Quest79060:OnSubStart7906020(arg1)
    print("OnSubStart7906020")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 7906020, 0, 40, 1)
end

function Quest79060:OnSubFinish7906020(arg1)
    print("OnSubFinish7906020")
    this:NpcDestroyWithBlackscreen(100, npcs.PaimonData.alias)
end

function Quest79060:OnSubStart7906015(arg1)
    print("OnSubStart7906015")
end

function Quest79060:OnSubFinish7906015(arg1)
    print("OnSubFinish7906015")
end

function Quest79060:OnSubStart7906014(arg1)
    print("OnSubStart7906014")
end

function Quest79060:OnSubFinish7906014(arg1)
    print("OnSubFinish7906014")
end

function Quest79060:OnSubStart7906019(arg1)
    print("OnSubStart7906019")
end

function Quest79060:OnSubFinish7906019(arg1)
    print("OnSubFinish7906019")
end

function Quest79060:OnSubStart7906030(arg1)
    print("OnSubStart7906030")
end

function Quest79060:OnSubFinish7906030(arg1)
    print("OnSubFinish7906030")
end

function Quest79060:OnSubStart7906016(arg1)
    print("OnSubStart7906016")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7906016, function(arg1)
            actorUtils.FinishQuestID(false, 7906016)
        end, nil, nil, false)
    end)
end

function Quest79060:OnSubFinish7906016(arg1)
    print("OnSubFinish7906016")
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 0, false, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TextmapId, 1, nil, nil)
end

function Quest79060:OnSubStart7906017(arg1)
    print("OnSubStart7906017")
    this:CreateQuestNpc(arg1, npcs.Npc21448Data.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21450Data.id, 7906017, 0, 20, 1)
end

function Quest79060:OnSubFinish7906017(arg1)
    print("OnSubFinish7906017")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21448Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21450Data.alias)
end

return Quest79060
