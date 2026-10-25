require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71129 = class("Quest71129", QuestActorProxy)
Quest71129.defaultAlias = "Quest71129"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71129:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7112901"] = self.OnSubStart7112901,
        ["7112902"] = self.OnSubStart7112902,
        ["7112903"] = self.OnSubStart7112903,
        ["7112904"] = self.OnSubStart7112904
    }
end

function Quest71129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7112901"] = self.OnSubFinish7112901,
        ["7112902"] = self.OnSubFinish7112902,
        ["7112903"] = self.OnSubFinish7112903,
        ["7112904"] = self.OnSubFinish7112904
    }
end

function Quest71129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71129:Start()
    print("Start")
end

function Quest71129:OnDestroy()
    print("OnDestroy")
end

function Quest71129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71129:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7112902 then
        actorUtils.FinishQuestID(false, 7112901)
    elseif arg1 == 7112903 then
        actorUtils.FinishQuestID(true, 7112901)
    end
end

function Quest71129:OnSubStart7112901(arg1)
    print("OnSubStart7112901")
    this:CreateQuestNpc(arg1, npcs.Npc2235Data.id, 0)
end

function Quest71129:OnSubFinish7112901(arg1)
    print("OnSubFinish7112901")
end

function Quest71129:OnSubStart7112902(arg1)
    print("OnSubStart7112902")
end

function Quest71129:OnSubFinish7112902(arg1)
    print("OnSubFinish7112902")
end

function Quest71129:OnSubStart7112903(arg1)
    print("OnSubStart7112903")
end

function Quest71129:OnSubFinish7112903(arg1)
    print("OnSubFinish7112903")
end

return Quest71129
