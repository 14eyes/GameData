require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79053 = class("Quest79053", QuestActorProxy)
Quest79053.defaultAlias = "Quest79053"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79053:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905301"] = self.OnSubStart7905301,
        ["7905302"] = self.OnSubStart7905302,
        ["7905303"] = self.OnSubStart7905303,
        ["7905304"] = self.OnSubStart7905304
    }
end

function Quest79053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905301"] = self.OnSubFinish7905301,
        ["7905302"] = self.OnSubFinish7905302,
        ["7905303"] = self.OnSubFinish7905303,
        ["7905304"] = self.OnSubFinish7905304
    }
end

function Quest79053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79053:Start()
    print("Start")
end

function Quest79053:OnDestroy()
    print("OnDestroy")
end

function Quest79053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79053:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79053:OnSubStart7905301(arg1)
    print("OnSubStart7905301")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13247Data.id, 1)
end

function Quest79053:OnSubFinish7905301(arg1)
    print("OnSubFinish7905301")
end

function Quest79053:OnSubStart7905302(arg1)
    print("OnSubStart7905302")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13247Data.id, 1)
end

function Quest79053:OnSubFinish7905302(arg1)
    print("OnSubFinish7905302")
end

function Quest79053:OnSubStart7905303(arg1)
    print("OnSubStart7905303")
end

function Quest79053:OnSubFinish7905303(arg1)
    print("OnSubFinish7905303")
end

function Quest79053:OnSubStart7905304(arg1)
    print("OnSubStart7905304")
end

function Quest79053:OnSubFinish7905304(arg1)
    print("OnSubFinish7905304")
end

return Quest79053
