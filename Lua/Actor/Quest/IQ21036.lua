require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21036 = class("Quest21036", QuestActorProxy)
Quest21036.defaultAlias = "Quest21036"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21036:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103601"] = self.OnSubStart2103601,
        ["2103607"] = self.OnSubStart2103607,
        ["2103606"] = self.OnSubStart2103606,
        ["2103602"] = self.OnSubStart2103602,
        ["2103608"] = self.OnSubStart2103608,
        ["2103603"] = self.OnSubStart2103603,
        ["2103604"] = self.OnSubStart2103604,
        ["2103605"] = self.OnSubStart2103605
    }
end

function Quest21036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103601"] = self.OnSubFinish2103601,
        ["2103607"] = self.OnSubFinish2103607,
        ["2103606"] = self.OnSubFinish2103606,
        ["2103602"] = self.OnSubFinish2103602,
        ["2103608"] = self.OnSubFinish2103608,
        ["2103603"] = self.OnSubFinish2103603,
        ["2103604"] = self.OnSubFinish2103604,
        ["2103605"] = self.OnSubFinish2103605
    }
end

function Quest21036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21036:Start()
    print("Start")
end

function Quest21036:OnDestroy()
    print("OnDestroy")
end

function Quest21036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
    actorMgr:DestroyEntityActor("Q21036Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q21036ZDTalkTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q21036PKTalkTrigger", 0, false)
    this:UnCallFunc(self.SafeCreateNPC02)
    this:UnCallFunc(self.SafeCreateNPC03)
end

function Quest21036:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21036:SafeCreateNPC03()
    print("SafeCreateNPC03")
    actorMgr:GetActor("21036"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function()
        actorMgr:GetActor("21036"):CreateQuestNpcById(2103603, npcs.Npc2400Data.id, 0)
        actorMgr:CreateActorWithPos("Q21036PKTalkTrigger", "Actor/Gadget/Q21036PKTalkTrigger", 70900002, 0, {x = -872.249, y = 185.339, z = 1736.188}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end, nil, nil, 0, false, true)
end

function Quest21036:PKTalkTrigger()
    print("PKTalkTrigger")
    actorMgr:CreateActorWithPos("Q21036PKTalkTrigger", "Actor/Gadget/Q21036PKTalkTrigger", 70900002, 0, {x = -872.249, y = 185.339, z = 1736.188}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest21036:SafeCreateNPC02()
    print("SafeCreateNPC02")
    actorMgr:GetActor("21036"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function()
        actorMgr:GetActor("21036"):CreateQuestNpcById(2103602, npcs.Npc2400Data.id, 0)
        actorMgr:CreateActorWithPos("Q21036ZDTalkTrigger", "Actor/Gadget/Q21036ZDTalkTrigger", 70900002, 0, {x = -743.502, y = 253.082, z = 2060.642}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end, nil, nil, 0, false, true)
end

function Quest21036:ZDTalkTrigger()
    print("ZDTalkTrigger")
    actorMgr:CreateActorWithPos("Q21036ZDTalkTrigger", "Actor/Gadget/Q21036ZDTalkTrigger", 70900002, 0, {x = -743.502, y = 253.082, z = 2060.642}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest21036:OnSubStart2103601(arg1)
    print("OnSubStart2103601")
    this:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
end

function Quest21036:OnSubFinish2103601(arg1)
    print("OnSubFinish2103601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

function Quest21036:OnSubStart2103607(arg1)
    print("OnSubStart2103607")
end

function Quest21036:OnSubFinish2103607(arg1)
    print("OnSubFinish2103607")
end

function Quest21036:OnSubStart2103606(arg1)
    print("OnSubStart2103606")
end

function Quest21036:OnSubFinish2103606(arg1)
    print("OnSubFinish2103606")
end

function Quest21036:OnSubStart2103602(arg1)
    print("OnSubStart2103602")
    actorMgr:CreateActorWithPos("Q21036Trigger", "Actor/Gadget/Q21036Trigger", 70900002, 0, {x = -740.537, y = 255.507, z = 2058.159}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest21036:OnSubFinish2103602(arg1)
    print("OnSubFinish2103602")
    this:ActorDestroy("Q21036Trigger")
    this:CallDelay(1, self.SafeCreateNPC02)
end

function Quest21036:OnSubStart2103608(arg1)
    print("OnSubStart2103608")
end

function Quest21036:OnSubFinish2103608(arg1)
    print("OnSubFinish2103608")
end

function Quest21036:OnSubStart2103603(arg1)
    print("OnSubStart2103603")
end

function Quest21036:OnSubFinish2103603(arg1)
    print("OnSubFinish2103603")
    this:CallDelay(1, self.SafeCreateNPC03)
end

function Quest21036:OnSubStart2103604(arg1)
    print("OnSubStart2103604")
end

function Quest21036:OnSubFinish2103604(arg1)
    print("OnSubFinish2103604")
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
end

function Quest21036:OnSubStart2103605(arg1)
    print("OnSubStart2103605")
end

function Quest21036:OnSubFinish2103605(arg1)
    print("OnSubFinish2103605")
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
end

return Quest21036
