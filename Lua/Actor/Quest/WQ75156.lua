require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75156 = class("Quest75156", QuestActorProxy)
Quest75156.defaultAlias = "Quest75156"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75156:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75156:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7515601"] = self.OnSubStart7515601, ["7515602"] = self.OnSubStart7515602}
end

function Quest75156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7515601"] = self.OnSubFinish7515601, ["7515602"] = self.OnSubFinish7515602}
end

function Quest75156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75156:Start()
    print("Start")
end

function Quest75156:OnDestroy()
    print("OnDestroy")
end

function Quest75156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75156:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75156:OnSubStart7515601(arg1)
    print("OnSubStart7515601")
end

function Quest75156:OnSubFinish7515601(arg1)
    print("OnSubFinish7515601")
end

function Quest75156:OnSubStart7515602(arg1)
    print("OnSubStart7515602")
    this:CreateQuestNpc(arg1, npcs.Npc21778Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21786Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7515602Trigger01", "Actor/Gadget/Q7515602Trigger01", 70900002, 0, {x = -1265.356, y = 207.713, z = 9957.011}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75156:OnSubFinish7515602(arg1)
    print("OnSubFinish7515602")
    this:ActorDestroy("Q7515602Trigger01")
    this:SafeDestroyQuestNpc(npcs.Npc21778Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21786Data.alias, 3)
end

return Quest75156
