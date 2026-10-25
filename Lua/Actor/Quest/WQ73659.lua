require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73659 = class("Quest73659", QuestActorProxy)
Quest73659.defaultAlias = "Quest73659"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73659:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73659:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365901"] = self.OnSubStart7365901, ["7365902"] = self.OnSubStart7365902}
end

function Quest73659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365901"] = self.OnSubFinish7365901, ["7365902"] = self.OnSubFinish7365902}
end

function Quest73659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73659:Start()
    print("Start")
end

function Quest73659:OnDestroy()
    print("OnDestroy")
end

function Quest73659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73659:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4082Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
end

function Quest73659:OnSubStart7365901(arg1)
    print("OnSubStart7365901")
    self:NotifyTo(npcs.Npc4082Data.alias, 2, true)
end

function Quest73659:OnSubFinish7365901(arg1)
    print("OnSubFinish7365901")
end

function Quest73659:OnSubStart7365902(arg1)
    print("OnSubStart7365902")
    self:NotifyTo(npcs.Npc4082Data.alias, 2, true)
end

function Quest73659:OnSubFinish7365902(arg1)
    print("OnSubFinish7365902")
    self:ShowBlackScreen(0.3, 4, 0.1, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73659
