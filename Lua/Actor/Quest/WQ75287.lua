require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75287 = class("Quest75287", QuestActorProxy)
Quest75287.defaultAlias = "Quest75287"
local clientData
local this
local mainID
local actorAlias

function Quest75287:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75287:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7528701"] = self.OnSubStart7528701}
end

function Quest75287:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7528701"] = self.OnSubFinish7528701}
end

function Quest75287:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75287:Start()
    print("Start")
end

function Quest75287:OnDestroy()
    print("OnDestroy")
end

function Quest75287:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75287:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75287:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75287:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75287:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 0 then
        actorMgr:GetActor("Npc22181"):SetPlayerNpcEnergy()
    else
        if arg1.valueInt == 1 then
            actorMgr:GetActor("Npc22182"):SetPlayerNpcEnergy()
        end
    end
end

function Quest75287:OnSubStart7528701(arg1)
    print("OnSubStart7528701")
end

function Quest75287:OnSubFinish7528701(arg1)
    print("OnSubFinish7528701")
end

return Quest75287
