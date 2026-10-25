require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74073 = class("Quest74073", QuestActorProxy)
Quest74073.defaultAlias = "Quest74073"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74073:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407301"] = self.OnSubStart7407301,
        ["7407302"] = self.OnSubStart7407302,
        ["7407307"] = self.OnSubStart7407307,
        ["7407303"] = self.OnSubStart7407303,
        ["7407304"] = self.OnSubStart7407304,
        ["7407306"] = self.OnSubStart7407306,
        ["7407308"] = self.OnSubStart7407308,
        ["7407305"] = self.OnSubStart7407305,
        ["7407309"] = self.OnSubStart7407309
    }
end

function Quest74073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407301"] = self.OnSubFinish7407301,
        ["7407302"] = self.OnSubFinish7407302,
        ["7407307"] = self.OnSubFinish7407307,
        ["7407303"] = self.OnSubFinish7407303,
        ["7407304"] = self.OnSubFinish7407304,
        ["7407306"] = self.OnSubFinish7407306,
        ["7407308"] = self.OnSubFinish7407308,
        ["7407305"] = self.OnSubFinish7407305,
        ["7407309"] = self.OnSubFinish7407309
    }
end

function Quest74073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74073:Start()
    print("Start")
end

function Quest74073:OnDestroy()
    print("OnDestroy")
end

function Quest74073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74073:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74073:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74073:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74073:OnSubStart7407301(arg1)
    print("OnSubStart7407301")
    actorMgr:CreateActorWithPos("Q74073Trigger_Entertalk", "Actor/Gadget/Q74073Trigger_Entertalk", 70900002, 0, {x = 3060.052, y = 319.338, z = 3660.27}, {x = 0.0, y = 328.625, z = 0.0}, true, false)
end

function Quest74073:OnSubFinish7407301(arg1)
    print("OnSubFinish7407301")
end

function Quest74073:OnSubStart7407302(arg1)
    print("OnSubStart7407302")
    actorMgr:CreateActorWithPos("Q74073Trigger_Entertalk", "Actor/Gadget/Q74073Trigger_Entertalk", 70900002, 0, {x = 3060.052, y = 319.338, z = 3660.27}, {x = 0.0, y = 328.625, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q74073Trigger_Reminder", "Actor/Gadget/Q74073Trigger_Reminder", 70900002, 0, {x = 3018.31, y = 327.21, z = 3661.042}, {x = 0.0, y = 54.332, z = 0.0}, true, false)
end

function Quest74073:OnSubFinish7407302(arg1)
    print("OnSubFinish7407302")
end

function Quest74073:OnSubStart7407307(arg1)
    print("OnSubStart7407307")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21125Data.id, 7407307, 0, 20, 1)
end

function Quest74073:OnSubFinish7407307(arg1)
    print("OnSubFinish7407307")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21125Data.alias)
end

function Quest74073:OnSubStart7407303(arg1)
    print("OnSubStart7407303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21125Data.id, 7407303, 0, 20, 1)
    this:ClearNarratorTask()
end

function Quest74073:OnSubFinish7407303(arg1)
    print("OnSubFinish7407303")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21125Data.alias)
end

function Quest74073:OnSubStart7407304(arg1)
    print("OnSubStart7407304")
end

function Quest74073:OnSubFinish7407304(arg1)
    print("OnSubFinish7407304")
end

function Quest74073:OnSubStart7407306(arg1)
    print("OnSubStart7407306")
end

function Quest74073:OnSubFinish7407306(arg1)
    print("OnSubFinish7407306")
end

function Quest74073:OnSubStart7407308(arg1)
    print("OnSubStart7407308")
    this:CreateQuestNpc(arg1, npcs.Npc21314Data.id, 0)
end

function Quest74073:OnSubFinish7407308(arg1)
    print("OnSubFinish7407308")
    this:SafeDestroyQuestNpc(npcs.Npc21314Data.alias, 3)
end

function Quest74073:OnSubStart7407305(arg1)
    print("OnSubStart7407305")
    this:CreateQuestNpc(arg1, npcs.Npc21314Data.id, 0)
end

function Quest74073:OnSubFinish7407305(arg1)
    print("OnSubFinish7407305")
    this:SafeDestroyQuestNpc(npcs.Npc21314Data.alias, 3)
end

function Quest74073:OnSubStart7407309(arg1)
    print("OnSubStart7407309")
end

function Quest74073:OnSubFinish7407309(arg1)
    print("OnSubFinish7407309")
end

return Quest74073
