require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79075 = class("Quest79075", QuestActorProxy)
Quest79075.defaultAlias = "Quest79075"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79075:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79075:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7907501"] = self.OnSubStart7907501,
        ["7907502"] = self.OnSubStart7907502,
        ["7907503"] = self.OnSubStart7907503,
        ["7907504"] = self.OnSubStart7907504,
        ["7907505"] = self.OnSubStart7907505
    }
end

function Quest79075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7907501"] = self.OnSubFinish7907501,
        ["7907502"] = self.OnSubFinish7907502,
        ["7907503"] = self.OnSubFinish7907503,
        ["7907504"] = self.OnSubFinish7907504,
        ["7907505"] = self.OnSubFinish7907505
    }
end

function Quest79075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79075:Start()
    print("Start")
end

function Quest79075:OnDestroy()
    print("OnDestroy")
end

function Quest79075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79075:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest79075:OnSubStart7907501(arg1)
    print("OnSubStart7907501")
    this:CreateQuestNpc(arg1, npcs.Npc21449Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21449Data.alias, 79075)
    this:NpcWalkToTaskEasy(questNpcActor, {x = 1186.174, y = 295.406, z = 907.975}, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21449Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    end)
end

function Quest79075:OnSubFinish7907501(arg1)
    print("OnSubFinish7907501")
end

function Quest79075:OnSubStart7907502(arg1)
    print("OnSubStart7907502")
    actorMgr:CreateActorWithPos("Q79075Trigger_RMD", "Actor/Gadget/Q79075Trigger_RMD", 70900002, 0, {x = 1169.578, y = 283.523, z = 926.602}, {x = 0.0, y = 43.647, z = 0.0}, true, false, 100)
end

function Quest79075:OnSubFinish7907502(arg1)
    print("OnSubFinish7907502")
end

function Quest79075:OnSubStart7907503(arg1)
    print("OnSubStart7907503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21585Data.id, 7907503, 0, 4, 1)
end

function Quest79075:OnSubFinish7907503(arg1)
    print("OnSubFinish7907503")
    this:SafeDestroyQuestNpc(npcs.Npc21585Data.alias, 100)
end

function Quest79075:OnSubStart7907504(arg1)
    print("OnSubStart7907504")
    this:CreateQuestNpc(arg1, npcs.Npc21449Data.id, 0, false, 0)
    this:ClearNarratorTask()
end

function Quest79075:OnSubFinish7907504(arg1)
    print("OnSubFinish7907504")
end

function Quest79075:OnSubStart7907505(arg1)
    print("OnSubStart7907505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21449Data.id, 7907505, 0, 25, 1)
end

function Quest79075:OnSubFinish7907505(arg1)
    print("OnSubFinish7907505")
    this:SafeDestroyQuestNpc(npcs.Npc21449Data.alias, 100)
end

return Quest79075
