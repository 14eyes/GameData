require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75006 = class("Quest75006", QuestActorProxy)
Quest75006.defaultAlias = "Quest75006"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75006:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500601"] = self.OnSubStart7500601,
        ["7500602"] = self.OnSubStart7500602,
        ["7500624"] = self.OnSubStart7500624,
        ["7500616"] = self.OnSubStart7500616,
        ["7500615"] = self.OnSubStart7500615,
        ["7500617"] = self.OnSubStart7500617,
        ["7500604"] = self.OnSubStart7500604,
        ["7500626"] = self.OnSubStart7500626,
        ["7500605"] = self.OnSubStart7500605,
        ["7500606"] = self.OnSubStart7500606,
        ["7500627"] = self.OnSubStart7500627,
        ["7500623"] = self.OnSubStart7500623,
        ["7500607"] = self.OnSubStart7500607,
        ["7500618"] = self.OnSubStart7500618,
        ["7500608"] = self.OnSubStart7500608,
        ["7500630"] = self.OnSubStart7500630,
        ["7500631"] = self.OnSubStart7500631,
        ["7500609"] = self.OnSubStart7500609,
        ["7500628"] = self.OnSubStart7500628,
        ["7500629"] = self.OnSubStart7500629,
        ["7500603"] = self.OnSubStart7500603,
        ["7500620"] = self.OnSubStart7500620,
        ["7500611"] = self.OnSubStart7500611,
        ["7500612"] = self.OnSubStart7500612,
        ["7500613"] = self.OnSubStart7500613,
        ["7500614"] = self.OnSubStart7500614,
        ["7500625"] = self.OnSubStart7500625,
        ["7500619"] = self.OnSubStart7500619,
        ["7500621"] = self.OnSubStart7500621,
        ["7500622"] = self.OnSubStart7500622,
        ["7500610"] = self.OnSubStart7500610
    }
end

function Quest75006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500601"] = self.OnSubFinish7500601,
        ["7500602"] = self.OnSubFinish7500602,
        ["7500624"] = self.OnSubFinish7500624,
        ["7500616"] = self.OnSubFinish7500616,
        ["7500615"] = self.OnSubFinish7500615,
        ["7500617"] = self.OnSubFinish7500617,
        ["7500604"] = self.OnSubFinish7500604,
        ["7500626"] = self.OnSubFinish7500626,
        ["7500605"] = self.OnSubFinish7500605,
        ["7500606"] = self.OnSubFinish7500606,
        ["7500627"] = self.OnSubFinish7500627,
        ["7500623"] = self.OnSubFinish7500623,
        ["7500607"] = self.OnSubFinish7500607,
        ["7500618"] = self.OnSubFinish7500618,
        ["7500608"] = self.OnSubFinish7500608,
        ["7500630"] = self.OnSubFinish7500630,
        ["7500631"] = self.OnSubFinish7500631,
        ["7500609"] = self.OnSubFinish7500609,
        ["7500628"] = self.OnSubFinish7500628,
        ["7500629"] = self.OnSubFinish7500629,
        ["7500603"] = self.OnSubFinish7500603,
        ["7500620"] = self.OnSubFinish7500620,
        ["7500611"] = self.OnSubFinish7500611,
        ["7500612"] = self.OnSubFinish7500612,
        ["7500613"] = self.OnSubFinish7500613,
        ["7500614"] = self.OnSubFinish7500614,
        ["7500625"] = self.OnSubFinish7500625,
        ["7500619"] = self.OnSubFinish7500619,
        ["7500621"] = self.OnSubFinish7500621,
        ["7500622"] = self.OnSubFinish7500622,
        ["7500610"] = self.OnSubFinish7500610
    }
end

function Quest75006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75006:Start()
    print("Start")
end

function Quest75006:OnDestroy()
    print("OnDestroy")
end

function Quest75006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75006:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75006:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest75006:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest75006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75006:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest75006:OnSubStart7500601(arg1)
    print("OnSubStart7500601")
    this:CreateQuestNpc(arg1, npcs.Npc21474Data.id, 1)
    this:CallDelayByQuest("", 0.2, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21474Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    end)
end

function Quest75006:OnSubFinish7500601(arg1)
    print("OnSubFinish7500601")
end

function Quest75006:OnSubStart7500602(arg1)
    print("OnSubStart7500602")
end

function Quest75006:OnSubFinish7500602(arg1)
    print("OnSubFinish7500602")
    actorMgr:CreateActorWithPos("Q7500602_NTrigger", "Actor/Gadget/Q7500602_NTrigger", 70900002, 0, {x = -2771.784, y = 119.24, z = 8623.96}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
    this:SetNavigationByMainId(75006, true)
end

function Quest75006:OnSubStart7500624(arg1)
    print("OnSubStart7500624")
end

function Quest75006:OnSubFinish7500624(arg1)
    print("OnSubFinish7500624")
end

function Quest75006:OnSubStart7500616(arg1)
    print("OnSubStart7500616")
end

function Quest75006:OnSubFinish7500616(arg1)
    print("OnSubFinish7500616")
    actorUtils.FinishQuestID(false, 7500601)
    this:ActorDestroy("Q7500602_NTrigger")
end

function Quest75006:OnSubStart7500615(arg1)
    print("OnSubStart7500615")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500615, 1, 30, 1, false)
end

function Quest75006:OnSubFinish7500615(arg1)
    print("OnSubFinish7500615")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
    this:SetNavigationByMainId(75006, true)
end

function Quest75006:OnSubStart7500617(arg1)
    print("OnSubStart7500617")
    actorMgr:CreateActorWithPos("Q7500617_EnterTrigger", "Actor/Gadget/Q7500617_EnterTrigger", 70900002, 0, {x = -2798.258, y = 101.719, z = 8531.029}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75006:OnSubFinish7500617(arg1)
    print("OnSubFinish7500617")
end

function Quest75006:OnSubStart7500604(arg1)
    print("OnSubStart7500604")
    actorMgr:CreateActorWithPos("Q7500604_EnterTrigger", "Actor/Gadget/Q7500604_EnterTrigger", 70900002, 0, {x = -2692.258, y = 40.814, z = 8611.111}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q75006_N2", "Actor/Gadget/Q75006_N2", 70900002, 0, {x = -2801.803, y = 76.154, z = 8530.238}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q75006_N3", "Actor/Gadget/Q75006_N3", 70900002, 0, {x = -2727.11, y = 49.118, z = 8576.305}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75006:OnSubFinish7500604(arg1)
    print("OnSubFinish7500604")
    this:ActorDestroy("Q75006_N2")
    this:ActorDestroy("Q75006_N3")
end

function Quest75006:OnSubStart7500626(arg1)
    print("OnSubStart7500626")
end

function Quest75006:OnSubFinish7500626(arg1)
    print("OnSubFinish7500626")
end

function Quest75006:OnSubStart7500605(arg1)
    print("OnSubStart7500605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500605, 1, 40, 1, false)
end

function Quest75006:OnSubFinish7500605(arg1)
    print("OnSubFinish7500605")
end

function Quest75006:OnSubStart7500606(arg1)
    print("OnSubStart7500606")
    this:NpcCreate(arg1, npcs.Npc21474Data.id, 1)
end

function Quest75006:OnSubFinish7500606(arg1)
    print("OnSubFinish7500606")
    this:NpcDestroyWithDither(npcs.Npc21474Data.alias, 3)
end

function Quest75006:OnSubStart7500627(arg1)
    print("OnSubStart7500627")
    actorUtils.FinishQuestID(false, 7500627)
end

function Quest75006:OnSubFinish7500627(arg1)
    print("OnSubFinish7500627")
end

function Quest75006:OnSubStart7500623(arg1)
    print("OnSubStart7500623")
end

function Quest75006:OnSubFinish7500623(arg1)
    print("OnSubFinish7500623")
end

function Quest75006:OnSubStart7500607(arg1)
    print("OnSubStart7500607")
    actorMgr:CreateActorWithPos("Q7500607_EnterTrigger", "Actor/Gadget/Q7500607_EnterTrigger", 70900002, 0, {x = -2732.611, y = 40.561, z = 8668.633}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7500607_RMD", "Actor/Gadget/Q7500607_RMD", 70900002, 0, {x = -2703.166, y = 41.679, z = 8634.685}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75006:OnSubFinish7500607(arg1)
    print("OnSubFinish7500607")
    this:ActorDestroy("Q7500607_RMD")
end

function Quest75006:OnSubStart7500618(arg1)
    print("OnSubStart7500618")
    actorMgr:CreateActorWithPos("Q7500618_EnterTrigger", "Actor/Gadget/Q7500618_EnterTrigger", 70900002, 0, {x = -2785.021, y = 24.148, z = 8648.904}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q75006_N4", "Actor/Gadget/Q75006_N4", 70900002, 0, {x = -2748.607, y = 42.593, z = 8659.968}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75006:OnSubFinish7500618(arg1)
    print("OnSubFinish7500618")
    this:ActorDestroy("Q75006_N4")
end

function Quest75006:OnSubStart7500608(arg1)
    print("OnSubStart7500608")
    actorMgr:CreateActorWithPos("Q7500608_EnterTrigger", "Actor/Gadget/Q7500608_EnterTrigger", 70900002, 0, {x = -2810.227, y = 12.927, z = 8645.275}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75006:OnSubFinish7500608(arg1)
    print("OnSubFinish7500608")
end

function Quest75006:OnSubStart7500630(arg1)
    print("OnSubStart7500630")
end

function Quest75006:OnSubFinish7500630(arg1)
    print("OnSubFinish7500630")
end

function Quest75006:OnSubStart7500631(arg1)
    print("OnSubStart7500631")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500631, 1, 30, 1, false)
end

function Quest75006:OnSubFinish7500631(arg1)
    print("OnSubFinish7500631")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75006:OnSubStart7500609(arg1)
    print("OnSubStart7500609")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500609, 1, 30, 1, false)
end

function Quest75006:OnSubFinish7500609(arg1)
    print("OnSubFinish7500609")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.N5)
    end)
end

function Quest75006:OnSubStart7500628(arg1)
    print("OnSubStart7500628")
end

function Quest75006:OnSubFinish7500628(arg1)
    print("OnSubFinish7500628")
end

function Quest75006:OnSubStart7500629(arg1)
    print("OnSubStart7500629")
end

function Quest75006:OnSubFinish7500629(arg1)
    print("OnSubFinish7500629")
end

function Quest75006:OnSubStart7500603(arg1)
    print("OnSubStart7500603")
    this:NpcCreate(arg1, npcs.Npc21474Data.id, 1)
end

function Quest75006:OnSubFinish7500603(arg1)
    print("OnSubFinish7500603")
    this:NpcDestroy(npcs.Npc21474Data.alias, 3)
end

function Quest75006:OnSubStart7500620(arg1)
    print("OnSubStart7500620")
end

function Quest75006:OnSubFinish7500620(arg1)
    print("OnSubFinish7500620")
    this:NatsaurusVehicleOff()
    this:CallDelayByQuest("", 0.2, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
    end)
end

function Quest75006:OnSubStart7500611(arg1)
    print("OnSubStart7500611")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(133502002, function(arg1)
            actorUtils.FinishQuestID(false, 7500611)
        end, nil, nil, false)
    end)
end

function Quest75006:OnSubFinish7500611(arg1)
    print("OnSubFinish7500611")
end

function Quest75006:OnSubStart7500612(arg1)
    print("OnSubStart7500612")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500612, 1, 30, 1, false)
end

function Quest75006:OnSubFinish7500612(arg1)
    print("OnSubFinish7500612")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75006:OnSubStart7500613(arg1)
    print("OnSubStart7500613")
    actorMgr:CreateActorWithPos("Q7500613_EnterTrigger", "Actor/Gadget/Q7500613_EnterTrigger", 70900002, 0, {x = -2700.05, y = 215.3, z = 8576.885}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7500613_HGTransTrigger", "Actor/Gadget/Q7500613_HGTransTrigger", 70900002, 0, {x = -2801.875, y = 112.963, z = 8567.212}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q75006_N10", "Actor/Gadget/Q75006_N10", 70900002, 0, {x = -2795.033, y = 22.231, z = 8645.693}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75006:OnSubFinish7500613(arg1)
    print("OnSubFinish7500613")
end

function Quest75006:OnSubStart7500614(arg1)
    print("OnSubStart7500614")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7500614, 1, 30, 1, false)
    this:ActorDestroy("Q75006_N10")
    this:ActorDestroy("Q7500613_HGTransTrigger")
end

function Quest75006:OnSubFinish7500614(arg1)
    print("OnSubFinish7500614")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75006:OnSubStart7500625(arg1)
    print("OnSubStart7500625")
end

function Quest75006:OnSubFinish7500625(arg1)
    print("OnSubFinish7500625")
end

function Quest75006:OnSubStart7500619(arg1)
    print("OnSubStart7500619")
    this:QuestNarratorTask(datas.N_7500601)
end

function Quest75006:OnSubFinish7500619(arg1)
    print("OnSubFinish7500619")
end

function Quest75006:OnSubStart7500621(arg1)
    print("OnSubStart7500621")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7210508, function(arg1)
            actorUtils.FinishQuestID(false, 7500621)
        end, nil, nil, false)
    end)
end

function Quest75006:OnSubFinish7500621(arg1)
    print("OnSubFinish7500621")
end

function Quest75006:OnSubStart7500622(arg1)
    print("OnSubStart7500622")
    this:TransmitPlayerById(arg1, 1, function(arg1)
        actorUtils.FinishQuestID(false, 7500622)
    end)
end

function Quest75006:OnSubFinish7500622(arg1)
    print("OnSubFinish7500622")
end

function Quest75006:OnSubStart7500610(arg1)
    print("OnSubStart7500610")
end

function Quest75006:OnSubFinish7500610(arg1)
    print("OnSubFinish7500610")
end

return Quest75006
