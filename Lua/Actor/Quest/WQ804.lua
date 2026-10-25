require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest804 = class("Quest804", QuestActorProxy)
Quest804.defaultAlias = "Quest804"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest804:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest804:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["80401"] = self.OnSubStart80401,
        ["80402"] = self.OnSubStart80402,
        ["80403"] = self.OnSubStart80403,
        ["80404"] = self.OnSubStart80404,
        ["80405"] = self.OnSubStart80405,
        ["80406"] = self.OnSubStart80406,
        ["80407"] = self.OnSubStart80407,
        ["80408"] = self.OnSubStart80408,
        ["80409"] = self.OnSubStart80409
    }
end

function Quest804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["80401"] = self.OnSubFinish80401,
        ["80402"] = self.OnSubFinish80402,
        ["80403"] = self.OnSubFinish80403,
        ["80404"] = self.OnSubFinish80404,
        ["80405"] = self.OnSubFinish80405,
        ["80406"] = self.OnSubFinish80406,
        ["80407"] = self.OnSubFinish80407,
        ["80408"] = self.OnSubFinish80408,
        ["80409"] = self.OnSubFinish80409
    }
end

function Quest804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest804:Start()
    print("Start")
end

function Quest804:OnDestroy()
    print("OnDestroy")
end

function Quest804:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest804:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest804:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest804:OnSubStart80401(arg1)
    print("OnSubStart80401")
    this:CreateQuestNpc(arg1, npcs.Npc13623Data.id, 0, false, 0)
end

function Quest804:OnSubFinish80401(arg1)
    print("OnSubFinish80401")
    this:SafeDestroyQuestNpc(npcs.Npc13623Data.alias, 3)
end

function Quest804:OnSubStart80402(arg1)
    print("OnSubStart80402")
end

function Quest804:OnSubFinish80402(arg1)
    print("OnSubFinish80402")
end

function Quest804:OnSubStart80403(arg1)
    print("OnSubStart80403")
end

function Quest804:OnSubFinish80403(arg1)
    print("OnSubFinish80403")
end

function Quest804:OnSubStart80404(arg1)
    print("OnSubStart80404")
end

function Quest804:OnSubFinish80404(arg1)
    print("OnSubFinish80404")
end

function Quest804:OnSubStart80405(arg1)
    print("OnSubStart80405")
end

function Quest804:OnSubFinish80405(arg1)
    print("OnSubFinish80405")
end

function Quest804:OnSubStart80406(arg1)
    print("OnSubStart80406")
end

function Quest804:OnSubFinish80406(arg1)
    print("OnSubFinish80406")
end

function Quest804:OnSubStart80407(arg1)
    print("OnSubStart80407")
end

function Quest804:OnSubFinish80407(arg1)
    print("OnSubFinish80407")
end

function Quest804:OnSubStart80408(arg1)
    print("OnSubStart80408")
end

function Quest804:OnSubFinish80408(arg1)
    print("OnSubFinish80408")
end

function Quest804:OnSubStart80409(arg1)
    print("OnSubStart80409")
end

function Quest804:OnSubFinish80409(arg1)
    print("OnSubFinish80409")
end

return Quest804
