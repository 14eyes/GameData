require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75260 = class("Quest75260", QuestActorProxy)
Quest75260.defaultAlias = "Quest75260"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75260:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75260:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526001"] = self.OnSubStart7526001,
        ["7526002"] = self.OnSubStart7526002,
        ["7526003"] = self.OnSubStart7526003,
        ["7526004"] = self.OnSubStart7526004,
        ["7526005"] = self.OnSubStart7526005
    }
end

function Quest75260:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526001"] = self.OnSubFinish7526001,
        ["7526002"] = self.OnSubFinish7526002,
        ["7526003"] = self.OnSubFinish7526003,
        ["7526004"] = self.OnSubFinish7526004,
        ["7526005"] = self.OnSubFinish7526005
    }
end

function Quest75260:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7526003"] = self.OnSubFailed7526003}
end

function Quest75260:Start()
    print("Start")
end

function Quest75260:OnDestroy()
    print("OnDestroy")
end

function Quest75260:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75260:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75260:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75260:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7526001Trigger")
    this:ActorDestroy("Q7526003Trigger")
    this:ActorDestroy("Q7526005Trigger")
end

function Quest75260:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75260:OnSubStart7526001(arg1)
    print("OnSubStart7526001")
    this:CreateQuestNpc(arg1, npcs.Npc6557.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7526001Trigger", "Actor/Gadget/Q7526001Trigger", 70900002, 0, points._Q7526001TriggerPoint_.pos, points._Q7526001TriggerPoint_.rot, true, false, 3)
end

function Quest75260:OnSubFinish7526001(arg1)
    print("OnSubFinish7526001")
end

function Quest75260:OnSubStart7526002(arg1)
    print("OnSubStart7526002")
    this:CreateQuestNpc(arg1, npcs.Npc6557.id, 0, false, 0)
end

function Quest75260:OnSubFinish7526002(arg1)
    print("OnSubFinish7526002")
end

function Quest75260:OnSubStart7526003(arg1)
    print("OnSubStart7526003")
    this:CreateQuestNpc(arg1, npcs.Npc6557.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7526003Trigger", "Actor/Gadget/Q7526003Trigger", 70900002, 0, points.Q7526003Trigger.pos, points.Q7526003Trigger.rot, true, false, 3)
end

function Quest75260:OnSubFinish7526003(arg1)
    print("OnSubFinish7526003")
    this:ActorDestroy("Q7526003Trigger")
end

function Quest75260:OnSubFailed7526003(arg1)
    print("OnSubFailed7526003")
    this:ActorDestroy("Q7526003Trigger")
end

function Quest75260:OnSubStart7526004(arg1)
    print("OnSubStart7526004")
    this:CreateQuestNpc(arg1, npcs.Npc6557.id, 0, false, 0)
end

function Quest75260:OnSubFinish7526004(arg1)
    print("OnSubFinish7526004")
end

function Quest75260:OnSubStart7526005(arg1)
    print("OnSubStart7526005")
    this:CreateQuestNpc(arg1, npcs.Npc6557.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7526005Trigger", "Actor/Gadget/Q7526005Trigger", 70900002, 0, points.Q7526005Trigger.pos, points.Q7526005Trigger.rot, true, false, 3)
end

function Quest75260:OnSubFinish7526005(arg1)
    print("OnSubFinish7526005")
    this:SafeDestroyQuestNpc(npcs.Npc6557.alias, 3)
end

return Quest75260
