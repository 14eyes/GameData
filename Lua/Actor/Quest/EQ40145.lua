require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40145 = class("Quest40145", QuestActorProxy)
Quest40145.defaultAlias = "Quest40145"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40145:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014504"] = self.OnSubStart4014504,
        ["4014501"] = self.OnSubStart4014501,
        ["4014502"] = self.OnSubStart4014502,
        ["4014503"] = self.OnSubStart4014503
    }
end

function Quest40145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014504"] = self.OnSubFinish4014504,
        ["4014501"] = self.OnSubFinish4014501,
        ["4014502"] = self.OnSubFinish4014502,
        ["4014503"] = self.OnSubFinish4014503
    }
end

function Quest40145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40145:Start()
    print("Start")
end

function Quest40145:OnDestroy()
    print("OnDestroy")
end

function Quest40145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40145:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30535Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30536Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30538Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40145Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q40145Trigger1", 0, false)
end

function Quest40145:OnSubStart4014504(arg1)
    print("OnSubStart4014504")
end

function Quest40145:OnSubFinish4014504(arg1)
    print("OnSubFinish4014504")
end

function Quest40145:OnSubStart4014501(arg1)
    print("OnSubStart4014501")
    actorMgr:CreateActorWithPos("Q40145Trigger", "Actor/Gadget/Q40145Trigger", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40145:OnSubFinish4014501(arg1)
    print("OnSubFinish4014501")
end

function Quest40145:OnSubStart4014502(arg1)
    print("OnSubStart4014502")
    actorMgr:CreateActorWithPos("Q40145Trigger1", "Actor/Gadget/Q40145Trigger1", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40145:OnSubFinish4014502(arg1)
    print("OnSubFinish4014502")
    this:DestroyQuestNpcActor(npcs.LisaData.alias, 3)
end

function Quest40145:OnSubStart4014503(arg1)
    print("OnSubStart4014503")
    this:GetQuestNpcActor(npcs.Npc30535Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30536Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30538Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40145:OnSubFinish4014503(arg1)
    print("OnSubFinish4014503")
    this:DestroyQuestNpcActor(npcs.Npc30519Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30535Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30536Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30538Data.alias, 3)
end

return Quest40145
