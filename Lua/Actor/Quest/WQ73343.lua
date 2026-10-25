require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73343 = class("Quest73343", QuestActorProxy)
Quest73343.defaultAlias = "Quest73343"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73343:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73343:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7334301"] = self.OnSubStart7334301,
        ["7334302"] = self.OnSubStart7334302,
        ["7334303"] = self.OnSubStart7334303,
        ["7334304"] = self.OnSubStart7334304,
        ["7334305"] = self.OnSubStart7334305,
        ["7334306"] = self.OnSubStart7334306,
        ["7334307"] = self.OnSubStart7334307
    }
end

function Quest73343:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7334301"] = self.OnSubFinish7334301,
        ["7334302"] = self.OnSubFinish7334302,
        ["7334303"] = self.OnSubFinish7334303,
        ["7334304"] = self.OnSubFinish7334304,
        ["7334305"] = self.OnSubFinish7334305,
        ["7334306"] = self.OnSubFinish7334306,
        ["7334307"] = self.OnSubFinish7334307
    }
end

function Quest73343:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73343:Start()
    print("Start")
end

function Quest73343:OnDestroy()
    print("OnDestroy")
end

function Quest73343:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73343:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73343:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73343:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73343:OnSubStart7334301(arg1)
    print("OnSubStart7334301")
end

function Quest73343:OnSubFinish7334301(arg1)
    print("OnSubFinish7334301")
end

function Quest73343:OnSubStart7334302(arg1)
    print("OnSubStart7334302")
end

function Quest73343:OnSubFinish7334302(arg1)
    print("OnSubFinish7334302")
end

function Quest73343:OnSubStart7334303(arg1)
    print("OnSubStart7334303")
end

function Quest73343:OnSubFinish7334303(arg1)
    print("OnSubFinish7334303")
end

function Quest73343:OnSubStart7334304(arg1)
    print("OnSubStart7334304")
end

function Quest73343:OnSubFinish7334304(arg1)
    print("OnSubFinish7334304")
end

function Quest73343:OnSubStart7334305(arg1)
    print("OnSubStart7334305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20987Data.id, 7334305, 1, 80, 1)
end

function Quest73343:OnSubFinish7334305(arg1)
    print("OnSubFinish7334305")
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
end

function Quest73343:OnSubStart7334306(arg1)
    print("OnSubStart7334306")
    actorUtils.FinishQuestID(false, 7334306)
end

function Quest73343:OnSubFinish7334306(arg1)
    print("OnSubFinish7334306")
end

function Quest73343:OnSubStart7334307(arg1)
    print("OnSubStart7334307")
end

function Quest73343:OnSubFinish7334307(arg1)
    print("OnSubFinish7334307")
end

return Quest73343
