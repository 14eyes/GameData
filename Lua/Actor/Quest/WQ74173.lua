require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74173 = class("Quest74173", QuestActorProxy)
Quest74173.defaultAlias = "Quest74173"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74173:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74173:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417301"] = self.OnSubStart7417301, ["7417302"] = self.OnSubStart7417302}
end

function Quest74173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417301"] = self.OnSubFinish7417301, ["7417302"] = self.OnSubFinish7417302}
end

function Quest74173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74173:Start()
    print("Start")
end

function Quest74173:OnDestroy()
    print("OnDestroy")
end

function Quest74173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74173:OnSubStart7417301(arg1)
    print("OnSubStart7417301")
end

function Quest74173:OnSubFinish7417301(arg1)
    print("OnSubFinish7417301")
end

function Quest74173:OnSubStart7417302(arg1)
    print("OnSubStart7417302")
    self:EnterCombatSneakMode(25)
end

function Quest74173:OnSubFinish7417302(arg1)
    print("OnSubFinish7417302")
    self:ExitCombatSneakMode()
end

return Quest74173
