require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74074 = class("Quest74074", QuestActorProxy)
Quest74074.defaultAlias = "Quest74074"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74074:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407401"] = self.OnSubStart7407401,
        ["7407406"] = self.OnSubStart7407406,
        ["7407402"] = self.OnSubStart7407402,
        ["7407409"] = self.OnSubStart7407409,
        ["7407403"] = self.OnSubStart7407403,
        ["7407404"] = self.OnSubStart7407404,
        ["7407407"] = self.OnSubStart7407407,
        ["7407408"] = self.OnSubStart7407408,
        ["7407410"] = self.OnSubStart7407410,
        ["7407405"] = self.OnSubStart7407405,
        ["7407411"] = self.OnSubStart7407411
    }
end

function Quest74074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407401"] = self.OnSubFinish7407401,
        ["7407406"] = self.OnSubFinish7407406,
        ["7407402"] = self.OnSubFinish7407402,
        ["7407409"] = self.OnSubFinish7407409,
        ["7407403"] = self.OnSubFinish7407403,
        ["7407404"] = self.OnSubFinish7407404,
        ["7407407"] = self.OnSubFinish7407407,
        ["7407408"] = self.OnSubFinish7407408,
        ["7407410"] = self.OnSubFinish7407410,
        ["7407405"] = self.OnSubFinish7407405,
        ["7407411"] = self.OnSubFinish7407411
    }
end

function Quest74074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74074:Start()
    print("Start")
end

function Quest74074:OnDestroy()
    print("OnDestroy")
end

function Quest74074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74074:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74074:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74074:OnSubStart7407401(arg1)
    print("OnSubStart7407401")
    this:CreateQuestNpc(arg1, npcs.Npc21337Data.id, 0)
    actorMgr:CreateActorWithPos("Q74074Trigger_Entertalk", "Actor/Gadget/Q74074Trigger_Entertalk", 70900002, 0, {x = 2817.186, y = 455.421, z = 3342.692}, {x = 0.0, y = 347.739, z = 0.0}, true, false)
end

function Quest74074:OnSubFinish7407401(arg1)
    print("OnSubFinish7407401")
end

function Quest74074:OnSubStart7407406(arg1)
    print("OnSubStart7407406")
    actorMgr:CreateActorWithPos("Q74074Trigger_Guide", "Actor/Gadget/Q74074Trigger_Guide", 70900002, 0, {x = 2729.599, y = 443.998, z = 3350.552}, {x = 0.0, y = 16.922, z = 0.0}, true, false, 3)
end

function Quest74074:OnSubFinish7407406(arg1)
    print("OnSubFinish7407406")
    this:SetNavigationByMainId(74074, true)
end

function Quest74074:OnSubStart7407402(arg1)
    print("OnSubStart7407402")
    actorMgr:CreateActorWithPos("Q74074Trigger_Entertalk", "Actor/Gadget/Q74074Trigger_Entertalk", 70900002, 0, {x = 2817.186, y = 455.421, z = 3342.692}, {x = 0.0, y = 347.739, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q74074Trigger_Reminder", "Actor/Gadget/Q74074Trigger_Reminder", 70900002, 0, {x = 2803.717, y = 455.046, z = 3339.988}, {x = 0.0, y = 346.261, z = 0.0}, true, false)
end

function Quest74074:OnSubFinish7407402(arg1)
    print("OnSubFinish7407402")
end

function Quest74074:OnSubStart7407409(arg1)
    print("OnSubStart7407409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21126Data.id, 7407409, 0, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21337Data.id, 0)
end

function Quest74074:OnSubFinish7407409(arg1)
    print("OnSubFinish7407409")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21126Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21337Data.alias)
end

function Quest74074:OnSubStart7407403(arg1)
    print("OnSubStart7407403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21126Data.id, 7407403, 0, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21337Data.id, 0)
    this:ClearNarratorTask()
end

function Quest74074:OnSubFinish7407403(arg1)
    print("OnSubFinish7407403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21126Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21337Data.alias)
end

function Quest74074:OnSubStart7407404(arg1)
    print("OnSubStart7407404")
end

function Quest74074:OnSubFinish7407404(arg1)
    print("OnSubFinish7407404")
end

function Quest74074:OnSubStart7407407(arg1)
    print("OnSubStart7407407")
    actorMgr:CreateActorWithPos("Q74074Trigger_Godown", "Actor/Gadget/Q74074Trigger_Godown", 70900002, 0, {x = 2881.907, y = 404.044, z = 3362.044}, {x = 0.0, y = 346.436, z = 0.0}, true, false)
end

function Quest74074:OnSubFinish7407407(arg1)
    print("OnSubFinish7407407")
end

function Quest74074:OnSubStart7407408(arg1)
    print("OnSubStart7407408")
end

function Quest74074:OnSubFinish7407408(arg1)
    print("OnSubFinish7407408")
end

function Quest74074:OnSubStart7407410(arg1)
    print("OnSubStart7407410")
    this:CreateQuestNpc(arg1, npcs.Npc21315Data.id, 0)
end

function Quest74074:OnSubFinish7407410(arg1)
    print("OnSubFinish7407410")
    this:SafeDestroyQuestNpc(npcs.Npc21315Data.alias, 3)
end

function Quest74074:OnSubStart7407405(arg1)
    print("OnSubStart7407405")
    this:CreateQuestNpc(arg1, npcs.Npc21315Data.id, 0)
end

function Quest74074:OnSubFinish7407405(arg1)
    print("OnSubFinish7407405")
    this:SafeDestroyQuestNpc(npcs.Npc21315Data.alias, 3)
end

function Quest74074:OnSubStart7407411(arg1)
    print("OnSubStart7407411")
end

function Quest74074:OnSubFinish7407411(arg1)
    print("OnSubFinish7407411")
end

return Quest74074
