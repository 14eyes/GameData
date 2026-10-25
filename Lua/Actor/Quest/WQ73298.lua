require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73298 = class("Quest73298", QuestActorProxy)
Quest73298.defaultAlias = "Quest73298"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73298:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73298:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329801"] = self.OnSubStart7329801,
        ["7329802"] = self.OnSubStart7329802,
        ["7329804"] = self.OnSubStart7329804,
        ["7329803"] = self.OnSubStart7329803
    }
end

function Quest73298:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329801"] = self.OnSubFinish7329801,
        ["7329802"] = self.OnSubFinish7329802,
        ["7329804"] = self.OnSubFinish7329804,
        ["7329803"] = self.OnSubFinish7329803
    }
end

function Quest73298:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73298:Start()
    print("Start")
end

function Quest73298:OnDestroy()
    print("OnDestroy")
end

function Quest73298:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73298:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73298:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73298:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73298:OnSubStart7329801(arg1)
    print("OnSubStart7329801")
end

function Quest73298:OnSubFinish7329801(arg1)
    print("OnSubFinish7329801")
end

function Quest73298:OnSubStart7329802(arg1)
    print("OnSubStart7329802")
end

function Quest73298:OnSubFinish7329802(arg1)
    print("OnSubFinish7329802")
end

function Quest73298:OnSubStart7329803(arg1)
    print("OnSubStart7329803")
    actorMgr:CreateActorWithPos("Q73298Trigger", "Actor/Gadget/Q73298Trigger", 70900002, 0, {x = -1105.0, y = -31.0, z = 5482.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73298:OnSubFinish7329803(arg1)
    print("OnSubFinish7329803")
    this:ActorDestroy("Q73298Trigger")
end

return Quest73298
