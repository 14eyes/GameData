require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75248 = class("Quest75248", QuestActorProxy)
Quest75248.defaultAlias = "Quest75248"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75248:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75248:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7524801"] = self.OnSubStart7524801, ["7524802"] = self.OnSubStart7524802}
end

function Quest75248:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7524801"] = self.OnSubFinish7524801, ["7524802"] = self.OnSubFinish7524802}
end

function Quest75248:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75248:Start()
    print("Start")
end

function Quest75248:OnDestroy()
    print("OnDestroy")
end

function Quest75248:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75248:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75248:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75248:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75248:OnSubStart7524801(arg1)
    print("OnSubStart7524801")
    this:CreateQuestNpc(arg1, npcs.Npc6526.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6526.alias, 75248):DoFreeStyle(1200, true, nil, true, true, false, false)
end

function Quest75248:OnSubFinish7524801(arg1)
    print("OnSubFinish7524801")
end

function Quest75248:OnSubStart7524802(arg1)
    print("OnSubStart7524802")
    this:GetQuestNpcActor(npcs.Npc6526.alias, 75248):DoFreeStyle(1260, true, nil, true, true, false, false)
end

function Quest75248:OnSubFinish7524802(arg1)
    print("OnSubFinish7524802")
    this:SafeDestroyQuestNpc(npcs.Npc6526.alias, 3)
end

return Quest75248
