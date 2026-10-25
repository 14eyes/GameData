require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73662 = class("Quest73662", QuestActorProxy)
Quest73662.defaultAlias = "Quest73662"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73662:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73662:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366201"] = self.OnSubStart7366201, ["7366202"] = self.OnSubStart7366202}
end

function Quest73662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366201"] = self.OnSubFinish7366201, ["7366202"] = self.OnSubFinish7366202}
end

function Quest73662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73662:Start()
    print("Start")
end

function Quest73662:OnDestroy()
    print("OnDestroy")
end

function Quest73662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73662:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4140Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
end

function Quest73662:OnSubStart7366201(arg1)
    print("OnSubStart7366201")
    self:NotifyTo(npcs.Npc4140Data.alias, 2, true)
end

function Quest73662:OnSubFinish7366201(arg1)
    print("OnSubFinish7366201")
end

function Quest73662:OnSubStart7366202(arg1)
    print("OnSubStart7366202")
end

function Quest73662:OnSubFinish7366202(arg1)
    print("OnSubFinish7366202")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73662
