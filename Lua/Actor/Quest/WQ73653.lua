require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73653 = class("Quest73653", QuestActorProxy)
Quest73653.defaultAlias = "Quest73653"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73653:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73653:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365301"] = self.OnSubStart7365301, ["7365302"] = self.OnSubStart7365302}
end

function Quest73653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365301"] = self.OnSubFinish7365301, ["7365302"] = self.OnSubFinish7365302}
end

function Quest73653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73653:Start()
    print("Start")
end

function Quest73653:OnDestroy()
    print("OnDestroy")
end

function Quest73653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73653:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4301Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4301Data.alias, 0, true)
end

function Quest73653:OnSubStart7365301(arg1)
    print("OnSubStart7365301")
    self:NotifyTo(npcs.Npc4301Data.alias, 2, true)
end

function Quest73653:OnSubFinish7365301(arg1)
    print("OnSubFinish7365301")
end

function Quest73653:OnSubStart7365302(arg1)
    print("OnSubStart7365302")
end

function Quest73653:OnSubFinish7365302(arg1)
    print("OnSubFinish7365302")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4301Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73653
