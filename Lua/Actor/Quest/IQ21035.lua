require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21035 = class("Quest21035", QuestActorProxy)
Quest21035.defaultAlias = "Quest21035"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21035:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103501"] = self.OnSubStart2103501,
        ["2103502"] = self.OnSubStart2103502,
        ["2103503"] = self.OnSubStart2103503
    }
end

function Quest21035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103501"] = self.OnSubFinish2103501,
        ["2103502"] = self.OnSubFinish2103502,
        ["2103503"] = self.OnSubFinish2103503
    }
end

function Quest21035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21035:Start()
    print("Start")
end

function Quest21035:OnDestroy()
    print("OnDestroy")
end

function Quest21035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
    actorMgr:DestroyEntityActor("Q21035Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q21035Trigger1", 0, false)
    this:UnCallFunc(self.SafeCreateNpc)
end

function Quest21035:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21035:SafeCreateNpc()
    print("SafeCreateNpc")
    actorMgr:GetActor("21035"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function()
        actorMgr:GetActor("21035"):CreateQuestNpcById(2103502, npcs.Npc2400Data.id, 0)
        actorMgr:CreateActorWithPos("Q21035Trigger1", "Actor/Gadget/Q21035Trigger1", 70900002, 0, {x = -187.4131, y = 300.3309, z = 1698.014}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end, nil, nil, 0, false, true)
end

function Quest21035:OnSubStart2103501(arg1)
    print("OnSubStart2103501")
    this:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
end

function Quest21035:OnSubFinish2103501(arg1)
    print("OnSubFinish2103501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

function Quest21035:OnSubStart2103502(arg1)
    print("OnSubStart2103502")
    actorMgr:CreateActorWithPos("Q21035Trigger", "Actor/Gadget/Q21035Trigger", 70900002, 0, {x = -189.191, y = 302.589, z = 1698.849}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest21035:OnSubFinish2103502(arg1)
    print("OnSubFinish2103502")
    this:ActorDestroy("Q21035Trigger")
    this:CallDelay(2, self.SafeCreateNpc)
end

function Quest21035:OnSubStart2103503(arg1)
    print("OnSubStart2103503")
end

function Quest21035:OnSubFinish2103503(arg1)
    print("OnSubFinish2103503")
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
end

return Quest21035
