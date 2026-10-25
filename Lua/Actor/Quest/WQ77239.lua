require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77239 = class("Quest77239", QuestActorProxy)
Quest77239.defaultAlias = "Quest77239"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77239:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77239:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7723901"] = self.OnSubStart7723901, ["7723902"] = self.OnSubStart7723902}
end

function Quest77239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7723901"] = self.OnSubFinish7723901, ["7723902"] = self.OnSubFinish7723902}
end

function Quest77239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77239:Start()
    print("Start")
end

function Quest77239:OnDestroy()
    print("OnDestroy")
end

function Quest77239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77239:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77239:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77239:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77239:OnSubStart7723901(arg1)
    print("OnSubStart7723901")
    this:NpcCreateWithNpcTrigger(npcs.Npc22769.id, 0, 8, 7723901)
    this:GetQuestNpcActor(npcs.Npc22769.alias, 77239):DoFreeStyle(1200, true, nil, true, true, false, false)
end

function Quest77239:OnSubFinish7723901(arg1)
    print("OnSubFinish7723901")
end

function Quest77239:OnSubStart7723902(arg1)
    print("OnSubStart7723902")
    this:CreateQuestNpc(arg1, npcs.Npc22769.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7846.alias, 1, true)
    this:NotifyTo(npcs.Npc3462.alias, 1, true)
end

function Quest77239:OnSubFinish7723902(arg1)
    print("OnSubFinish7723902")
    this:LightNotifyTo(npcs.Npc7846.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3462.alias, 0, true)
end

return Quest77239
