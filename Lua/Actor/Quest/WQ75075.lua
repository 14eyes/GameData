require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75075 = class("Quest75075", QuestActorProxy)
Quest75075.defaultAlias = "Quest75075"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75075:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75075:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7507501"] = self.OnSubStart7507501, ["7507502"] = self.OnSubStart7507502}
end

function Quest75075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7507501"] = self.OnSubFinish7507501, ["7507502"] = self.OnSubFinish7507502}
end

function Quest75075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75075:Start()
    print("Start")
end

function Quest75075:OnDestroy()
    print("OnDestroy")
end

function Quest75075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75075:OnSubStart7507501(arg1)
    print("OnSubStart7507501")
    this:CreateQuestNpc(arg1, npcs.Npc6170Data.id, 0, false, 0)
end

function Quest75075:OnSubFinish7507501(arg1)
    print("OnSubFinish7507501")
end

function Quest75075:OnSubStart7507502(arg1)
    print("OnSubStart7507502")
end

function Quest75075:OnSubFinish7507502(arg1)
    print("OnSubFinish7507502")
    this:CreateQuestNpcWithTrigger("Q7507502Trigger", 7507502, 6170, 0, 0, 2)
end

return Quest75075
