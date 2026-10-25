require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74152 = class("Quest74152", QuestActorProxy)
Quest74152.defaultAlias = "Quest74152"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74152:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74152:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7415201"] = self.OnSubStart7415201, ["7415202"] = self.OnSubStart7415202}
end

function Quest74152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7415201"] = self.OnSubFinish7415201, ["7415202"] = self.OnSubFinish7415202}
end

function Quest74152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74152:Start()
    print("Start")
end

function Quest74152:OnDestroy()
    print("OnDestroy")
end

function Quest74152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74152:OnSubStart7415201(arg1)
    print("OnSubStart7415201")
    actorMgr:CreateActorWithPos("Q74152Trigger", "Actor/Gadget/Q74152Trigger", 70900002, 0, {x = 3590.138, y = 435.073, z = 4520.723}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74152:OnSubFinish7415201(arg1)
    print("OnSubFinish7415201")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest74152:OnSubStart7415202(arg1)
    print("OnSubStart7415202")
end

function Quest74152:OnSubFinish7415202(arg1)
    print("OnSubFinish7415202")
end

return Quest74152
