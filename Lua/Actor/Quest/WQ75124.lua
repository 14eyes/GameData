require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75124 = class("Quest75124", QuestActorProxy)
Quest75124.defaultAlias = "Quest75124"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75124:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7512401"] = self.OnSubStart7512401,
        ["7512402"] = self.OnSubStart7512402,
        ["7512403"] = self.OnSubStart7512403
    }
end

function Quest75124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7512401"] = self.OnSubFinish7512401,
        ["7512402"] = self.OnSubFinish7512402,
        ["7512403"] = self.OnSubFinish7512403
    }
end

function Quest75124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75124:Start()
    print("Start")
end

function Quest75124:OnDestroy()
    print("OnDestroy")
end

function Quest75124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75124:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75124:OnSubStart7512401(arg1)
    print("OnSubStart7512401")
    this:CreateQuestNpc(arg1, npcs.Npc21732Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7512401Trigger", "Actor/Gadget/Q7512401Trigger", 70900002, 0, {x = -1641.415, y = 200.211, z = 10049.56}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75124:OnSubFinish7512401(arg1)
    print("OnSubFinish7512401")
    this:ActorDestroy("Q7512401Trigger")
end

function Quest75124:OnSubStart7512402(arg1)
    print("OnSubStart7512402")
    this:CreateQuestNpc(arg1, npcs.Npc21732Data.id, 0, false, 0)
end

function Quest75124:OnSubFinish7512402(arg1)
    print("OnSubFinish7512402")
end

function Quest75124:OnSubStart7512403(arg1)
    print("OnSubStart7512403")
    this:CreateQuestNpc(arg1, npcs.Npc21732Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7512403Trigger", "Actor/Gadget/Q7512403Trigger", 70900002, 0, {x = -1658.509, y = 192.841, z = 10071.46}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75124:OnSubFinish7512403(arg1)
    print("OnSubFinish7512403")
    this:SafeDestroyQuestNpc(npcs.Npc21732Data.alias, 3)
end

return Quest75124
