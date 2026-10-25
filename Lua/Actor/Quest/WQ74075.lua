require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74075 = class("Quest74075", QuestActorProxy)
Quest74075.defaultAlias = "Quest74075"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74075:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74075:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407501"] = self.OnSubStart7407501,
        ["7407506"] = self.OnSubStart7407506,
        ["7407502"] = self.OnSubStart7407502,
        ["7407509"] = self.OnSubStart7407509,
        ["7407503"] = self.OnSubStart7407503,
        ["7407504"] = self.OnSubStart7407504,
        ["7407507"] = self.OnSubStart7407507,
        ["7407508"] = self.OnSubStart7407508,
        ["7407510"] = self.OnSubStart7407510,
        ["7407505"] = self.OnSubStart7407505,
        ["7407511"] = self.OnSubStart7407511
    }
end

function Quest74075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407501"] = self.OnSubFinish7407501,
        ["7407506"] = self.OnSubFinish7407506,
        ["7407502"] = self.OnSubFinish7407502,
        ["7407509"] = self.OnSubFinish7407509,
        ["7407503"] = self.OnSubFinish7407503,
        ["7407504"] = self.OnSubFinish7407504,
        ["7407507"] = self.OnSubFinish7407507,
        ["7407508"] = self.OnSubFinish7407508,
        ["7407510"] = self.OnSubFinish7407510,
        ["7407505"] = self.OnSubFinish7407505,
        ["7407511"] = self.OnSubFinish7407511
    }
end

function Quest74075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74075:Start()
    print("Start")
end

function Quest74075:OnDestroy()
    print("OnDestroy")
end

function Quest74075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74075:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74075:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74075:OnSubStart7407501(arg1)
    print("OnSubStart7407501")
    actorMgr:CreateActorWithPos("Q74075Trigger_Entertalk", "Actor/Gadget/Q74075Trigger_Entertalk", 70900002, 0, {x = 2427.585, y = 443.516, z = 3917.33}, {x = 0.0, y = 41.483, z = 0.0}, true, false)
end

function Quest74075:OnSubFinish7407501(arg1)
    print("OnSubFinish7407501")
end

function Quest74075:OnSubStart7407506(arg1)
    print("OnSubStart7407506")
    actorMgr:CreateActorWithPos("Q74075Trigger_Guide", "Actor/Gadget/Q74075Trigger_Guide", 70900002, 0, {x = 2422.357, y = 440.0, z = 3825.2}, {x = 0.0, y = 305.527, z = 0.0}, true, false, 3)
end

function Quest74075:OnSubFinish7407506(arg1)
    print("OnSubFinish7407506")
    this:SetNavigationByMainId(74075, true)
end

function Quest74075:OnSubStart7407502(arg1)
    print("OnSubStart7407502")
    actorMgr:CreateActorWithPos("Q74075Trigger_Entertalk", "Actor/Gadget/Q74075Trigger_Entertalk", 70900002, 0, {x = 2427.585, y = 443.516, z = 3917.33}, {x = 0.0, y = 41.483, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q74075Trigger_Reminder", "Actor/Gadget/Q74075Trigger_Reminder", 70900002, 0, {x = 2444.72, y = 440.0, z = 3899.728}, {x = 0.0, y = 350.508, z = 0.0}, true, false)
end

function Quest74075:OnSubFinish7407502(arg1)
    print("OnSubFinish7407502")
end

function Quest74075:OnSubStart7407509(arg1)
    print("OnSubStart7407509")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21127Data.id, 7407509, 0, 20, 1)
end

function Quest74075:OnSubFinish7407509(arg1)
    print("OnSubFinish7407509")
    this:SafeDestroyQuestNpc(npcs.Npc21127Data.alias, 3)
end

function Quest74075:OnSubStart7407503(arg1)
    print("OnSubStart7407503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21127Data.id, 7407503, 0, 20, 1)
    this:ClearNarratorTask()
end

function Quest74075:OnSubFinish7407503(arg1)
    print("OnSubFinish7407503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21127Data.alias)
end

function Quest74075:OnSubStart7407504(arg1)
    print("OnSubStart7407504")
end

function Quest74075:OnSubFinish7407504(arg1)
    print("OnSubFinish7407504")
end

function Quest74075:OnSubStart7407507(arg1)
    print("OnSubStart7407507")
    actorMgr:CreateActorWithPos("Q74075Trigger_Dive", "Actor/Gadget/Q74075Trigger_Dive", 70900002, 0, {x = 2389.367, y = 423.857, z = 3951.343}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74075:OnSubFinish7407507(arg1)
    print("OnSubFinish7407507")
end

function Quest74075:OnSubStart7407508(arg1)
    print("OnSubStart7407508")
end

function Quest74075:OnSubFinish7407508(arg1)
    print("OnSubFinish7407508")
end

function Quest74075:OnSubStart7407510(arg1)
    print("OnSubStart7407510")
    this:CreateQuestNpc(arg1, npcs.Npc21316Data.id, 0)
end

function Quest74075:OnSubFinish7407510(arg1)
    print("OnSubFinish7407510")
    this:SafeDestroyQuestNpc(npcs.Npc21316Data.alias, 3)
end

function Quest74075:OnSubStart7407505(arg1)
    print("OnSubStart7407505")
    this:CreateQuestNpc(arg1, npcs.Npc21316Data.id, 0)
end

function Quest74075:OnSubFinish7407505(arg1)
    print("OnSubFinish7407505")
    this:SafeDestroyQuestNpc(npcs.Npc21316Data.alias, 3)
end

function Quest74075:OnSubStart7407511(arg1)
    print("OnSubStart7407511")
end

function Quest74075:OnSubFinish7407511(arg1)
    print("OnSubFinish7407511")
end

return Quest74075
