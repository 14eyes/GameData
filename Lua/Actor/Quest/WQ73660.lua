require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73660 = class("Quest73660", QuestActorProxy)
Quest73660.defaultAlias = "Quest73660"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73660:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73660:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366001"] = self.OnSubStart7366001, ["7366002"] = self.OnSubStart7366002}
end

function Quest73660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366001"] = self.OnSubFinish7366001, ["7366002"] = self.OnSubFinish7366002}
end

function Quest73660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73660:Start()
    print("Start")
end

function Quest73660:OnDestroy()
    print("OnDestroy")
end

function Quest73660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73660:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4094Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4094Data.alias, 0, true)
end

function Quest73660:OnSubStart7366001(arg1)
    print("OnSubStart7366001")
    self:NotifyTo(npcs.Npc4094Data.alias, 2, true)
end

function Quest73660:OnSubFinish7366001(arg1)
    print("OnSubFinish7366001")
end

function Quest73660:OnSubStart7366002(arg1)
    print("OnSubStart7366002")
end

function Quest73660:OnSubFinish7366002(arg1)
    print("OnSubFinish7366002")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc4094Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

return Quest73660
