require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76000 = class("Quest76000", QuestActorProxy)
Quest76000.defaultAlias = "Quest76000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600001"] = self.OnSubStart7600001,
        ["7600002"] = self.OnSubStart7600002,
        ["7600003"] = self.OnSubStart7600003,
        ["7600004"] = self.OnSubStart7600004,
        ["7600005"] = self.OnSubStart7600005,
        ["7600006"] = self.OnSubStart7600006,
        ["7600007"] = self.OnSubStart7600007,
        ["7600021"] = self.OnSubStart7600021,
        ["7600008"] = self.OnSubStart7600008,
        ["7600009"] = self.OnSubStart7600009,
        ["7600010"] = self.OnSubStart7600010,
        ["7600011"] = self.OnSubStart7600011,
        ["7600012"] = self.OnSubStart7600012,
        ["7600013"] = self.OnSubStart7600013,
        ["7600014"] = self.OnSubStart7600014,
        ["7600015"] = self.OnSubStart7600015,
        ["7600016"] = self.OnSubStart7600016,
        ["7600017"] = self.OnSubStart7600017
    }
end

function Quest76000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600001"] = self.OnSubFinish7600001,
        ["7600002"] = self.OnSubFinish7600002,
        ["7600003"] = self.OnSubFinish7600003,
        ["7600004"] = self.OnSubFinish7600004,
        ["7600005"] = self.OnSubFinish7600005,
        ["7600006"] = self.OnSubFinish7600006,
        ["7600007"] = self.OnSubFinish7600007,
        ["7600021"] = self.OnSubFinish7600021,
        ["7600008"] = self.OnSubFinish7600008,
        ["7600009"] = self.OnSubFinish7600009,
        ["7600010"] = self.OnSubFinish7600010,
        ["7600011"] = self.OnSubFinish7600011,
        ["7600012"] = self.OnSubFinish7600012,
        ["7600013"] = self.OnSubFinish7600013,
        ["7600014"] = self.OnSubFinish7600014,
        ["7600015"] = self.OnSubFinish7600015,
        ["7600016"] = self.OnSubFinish7600016,
        ["7600017"] = self.OnSubFinish7600017
    }
end

function Quest76000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76000:Start()
    print("Start")
end

function Quest76000:OnDestroy()
    print("OnDestroy")
end

function Quest76000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76000:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600003Trigger")
    this:ActorDestroy("Q7600004Trigger")
    this:ActorDestroy("Q7600005Trigger")
    this:ActorDestroy("Q7600012Trigger")
    this:ActorDestroy("Q7600001Trigger_RMD2")
    this:ActorDestroy("Q7600001Trigger_RMD1")
    this:ActorDestroy("Q7600001Trigger_RMD4")
    this:ActorDestroy("Q7600001Trigger_RMD3")
    this:ActorDestroy("Q7600005Trigger_RMD1")
end

function Quest76000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76000:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76000:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76000:OnSubStart7600001(arg1)
    print("OnSubStart7600001")
    actorMgr:CreateActorWithPos("Q7600001Trigger_RMD1", "Actor/Gadget/Q7600001Trigger_RMD1", 70900002, 0, points._Q7600001Trigger_RMD1Point_.pos, points._Q7600001Trigger_RMD1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600001Trigger_RMD2", "Actor/Gadget/Q7600001Trigger_RMD2", 70900002, 0, points._Q7600001Trigger_RMD2Point_.pos, points._Q7600001Trigger_RMD2Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600001Trigger_RMD3", "Actor/Gadget/Q7600001Trigger_RMD3", 70900002, 0, points._Q7600001Trigger_RMD3Point_.pos, points._Q7600001Trigger_RMD3Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600001Trigger_RMD4", "Actor/Gadget/Q7600001Trigger_RMD4", 70900002, 0, points._Q7600001Trigger_RMD4Point_.pos, points._Q7600001Trigger_RMD4Point_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600001(arg1)
    print("OnSubFinish7600001")
end

function Quest76000:OnSubStart7600002(arg1)
    print("OnSubStart7600002")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7600002, 0, 20, 0, npcs.Paimon.id)
end

function Quest76000:OnSubFinish7600002(arg1)
    print("OnSubFinish7600002")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest76000:OnSubStart7600003(arg1)
    print("OnSubStart7600003")
    actorMgr:CreateActorWithPos("Q7600003Trigger", "Actor/Gadget/Q7600003Trigger", 70900002, 0, points._Q7600003TriggerPoint_.pos, points._Q7600003TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600003(arg1)
    print("OnSubFinish7600003")
end

function Quest76000:OnSubStart7600004(arg1)
    print("OnSubStart7600004")
    actorMgr:CreateActorWithPos("Q7600004Trigger", "Actor/Gadget/Q7600004Trigger", 70900002, 0, points._Q7600004TriggerPoint_.pos, points._Q7600004TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600004(arg1)
    print("OnSubFinish7600004")
end

function Quest76000:OnSubStart7600005(arg1)
    print("OnSubStart7600005")
    actorMgr:CreateActorWithPos("Q7600005Trigger", "Actor/Gadget/Q7600005Trigger", 70900002, 0, points._Q7600005TriggerPoint_.pos, points._Q7600005TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600005Trigger_RMD1", "Actor/Gadget/Q7600005Trigger_RMD1", 70900002, 0, points._Q7600005Trigger_RMD1Point_.pos, points._Q7600005Trigger_RMD1Point_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600005(arg1)
    print("OnSubFinish7600005")
end

function Quest76000:OnSubStart7600006(arg1)
    print("OnSubStart7600006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600006, 0, 20, 0, npcs.Paimon.id)
    actorMgr:CreateActorWithPos("Q7600003Trigger", "Actor/Gadget/Q7600003Trigger", 70900002, 0, points._Q7600003TriggerPoint_.pos, points._Q7600003TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600006(arg1)
    print("OnSubFinish7600006")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest76000:OnSubStart7600007(arg1)
    print("OnSubStart7600007")
    this:CreateQuestNpc(arg1, npcs.Npc21821.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21820.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22102.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22174.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600004Trigger", "Actor/Gadget/Q7600004Trigger", 70900002, 0, points._Q7600004TriggerPoint_.pos, points._Q7600004TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600007(arg1)
    print("OnSubFinish7600007")
    this:SafeDestroyQuestNpc(npcs.Npc21821.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21820.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22174.alias, 3)
end

function Quest76000:OnSubStart7600021(arg1)
    print("OnSubStart7600021")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600021, 0, 20, 0, npcs.Paimon.id)
end

function Quest76000:OnSubFinish7600021(arg1)
    print("OnSubFinish7600021")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest76000:OnSubStart7600008(arg1)
    print("OnSubStart7600008")
    actorMgr:CreateActorWithPos("Q7600005Trigger", "Actor/Gadget/Q7600005Trigger", 70900002, 0, points._Q7600005TriggerPoint_.pos, points._Q7600005TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600008(arg1)
    print("OnSubFinish7600008")
end

function Quest76000:OnSubStart7600009(arg1)
    print("OnSubStart7600009")
end

function Quest76000:OnSubFinish7600009(arg1)
    print("OnSubFinish7600009")
end

function Quest76000:OnSubStart7600010(arg1)
    print("OnSubStart7600010")
end

function Quest76000:OnSubFinish7600010(arg1)
    print("OnSubFinish7600010")
end

function Quest76000:OnSubStart7600011(arg1)
    print("OnSubStart7600011")
end

function Quest76000:OnSubFinish7600011(arg1)
    print("OnSubFinish7600011")
    this:QuestNarratorTask(datas.NarratorWithId_760009909_Back, nil)
end

function Quest76000:OnSubStart7600012(arg1)
    print("OnSubStart7600012")
    actorMgr:CreateActorWithPos("Q7600012Trigger", "Actor/Gadget/Q7600012Trigger", 70900002, 0, points._Q7600012TriggerPoint_.pos, points._Q7600012TriggerPoint_.rot, true, false, 3)
end

function Quest76000:OnSubFinish7600012(arg1)
    print("OnSubFinish7600012")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_760009910_Submit, nil)
    end)
end

function Quest76000:OnSubStart7600013(arg1)
    print("OnSubStart7600013")
end

function Quest76000:OnSubFinish7600013(arg1)
    print("OnSubFinish7600013")
end

function Quest76000:OnSubStart7600014(arg1)
    print("OnSubStart7600014")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600014, 0, 30, 0, npcs.Npc21819.id)
end

function Quest76000:OnSubFinish7600014(arg1)
    print("OnSubFinish7600014")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21819.alias)
end

function Quest76000:OnSubStart7600015(arg1)
    print("OnSubStart7600015")
    actorMgr:CreateActorWithPos("", "", 70900002, 0, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest76000:OnSubFinish7600015(arg1)
    print("OnSubFinish7600015")
end

function Quest76000:OnSubStart7600016(arg1)
    print("OnSubStart7600016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600016, 0, 30, 0, npcs.Paimon.id)
end

function Quest76000:OnSubFinish7600016(arg1)
    print("OnSubFinish7600016")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
end

function Quest76000:OnSubStart7600017(arg1)
    print("OnSubStart7600017")
    this:CreateQuestNpc(arg1, npcs.Npc21820.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22101.id, 0, false, 0)
end

function Quest76000:OnSubFinish7600017(arg1)
    print("OnSubFinish7600017")
    this:SafeDestroyQuestNpc(npcs.Npc21820.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22101.alias)
end

return Quest76000
