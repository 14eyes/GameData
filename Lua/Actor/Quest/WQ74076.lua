require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74076 = class("Quest74076", QuestActorProxy)
Quest74076.defaultAlias = "Quest74076"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74076:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407607"] = self.OnSubStart7407607,
        ["7407601"] = self.OnSubStart7407601,
        ["7407602"] = self.OnSubStart7407602,
        ["7407603"] = self.OnSubStart7407603,
        ["7407604"] = self.OnSubStart7407604,
        ["7407605"] = self.OnSubStart7407605,
        ["7407606"] = self.OnSubStart7407606
    }
end

function Quest74076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407607"] = self.OnSubFinish7407607,
        ["7407601"] = self.OnSubFinish7407601,
        ["7407602"] = self.OnSubFinish7407602,
        ["7407603"] = self.OnSubFinish7407603,
        ["7407604"] = self.OnSubFinish7407604,
        ["7407605"] = self.OnSubFinish7407605,
        ["7407606"] = self.OnSubFinish7407606
    }
end

function Quest74076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74076:Start()
    print("Start")
end

function Quest74076:OnDestroy()
    print("OnDestroy")
end

function Quest74076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74076:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74076:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74076:OnSubStart7407607(arg1)
    print("OnSubStart7407607")
    actorMgr:CreateActorWithPos("Q74076Trigger_7407607", "Actor/Gadget/Q74076Trigger_7407607", 70900002, 0, {x = 2428.165, y = 346.399, z = 3597.569}, {x = 0.0, y = 348.932, z = 0.0}, true, false)
end

function Quest74076:OnSubFinish7407607(arg1)
    print("OnSubFinish7407607")
end

function Quest74076:OnSubStart7407601(arg1)
    print("OnSubStart7407601")
    actorMgr:CreateActorWithPos("Q74076Trigger_7407601", "Actor/Gadget/Q74076Trigger_7407601", 70900002, 0, {x = 2401.182, y = 327.707, z = 3524.225}, {x = 0.0, y = 9.488, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q74076Trigger_RMD", "Actor/Gadget/Q74076Trigger_RMD", 70900002, 0, {x = 2423.012, y = 345.103, z = 3596.84}, {x = 0.0, y = 349.335, z = 0.0}, true, false)
end

function Quest74076:OnSubFinish7407601(arg1)
    print("OnSubFinish7407601")
end

function Quest74076:OnSubStart7407602(arg1)
    print("OnSubStart7407602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407602, 0, 40, 1)
end

function Quest74076:OnSubFinish7407602(arg1)
    print("OnSubFinish7407602")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74076:OnSubStart7407603(arg1)
    print("OnSubStart7407603")
end

function Quest74076:OnSubFinish7407603(arg1)
    print("OnSubFinish7407603")
end

function Quest74076:OnSubStart7407604(arg1)
    print("OnSubStart7407604")
    actorMgr:CreateActorWithPos("Q74076Trigger_7407604", "Actor/Gadget/Q74076Trigger_7407604", 70900002, 0, {x = 2374.577, y = 323.476, z = 3383.046}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74076:OnSubFinish7407604(arg1)
    print("OnSubFinish7407604")
end

function Quest74076:OnSubStart7407605(arg1)
    print("OnSubStart7407605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407605, 0, 18, 1)
end

function Quest74076:OnSubFinish7407605(arg1)
    print("OnSubFinish7407605")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74076:OnSubStart7407606(arg1)
    print("OnSubStart7407606")
end

function Quest74076:OnSubFinish7407606(arg1)
    print("OnSubFinish7407606")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdTransport)
    globalActor:ChangeDay24Time(17.5, false)
end

return Quest74076
