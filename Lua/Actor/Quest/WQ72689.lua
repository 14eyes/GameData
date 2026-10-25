require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72689 = class("Quest72689", QuestActorProxy)
Quest72689.defaultAlias = "Quest72689"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72689:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72689:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7268901"] = self.OnSubStart7268901,
        ["7268902"] = self.OnSubStart7268902,
        ["7268903"] = self.OnSubStart7268903,
        ["7268904"] = self.OnSubStart7268904
    }
end

function Quest72689:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7268901"] = self.OnSubFinish7268901,
        ["7268902"] = self.OnSubFinish7268902,
        ["7268903"] = self.OnSubFinish7268903,
        ["7268904"] = self.OnSubFinish7268904
    }
end

function Quest72689:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72689:Start()
    print("Start")
end

function Quest72689:OnDestroy()
    print("OnDestroy")
end

function Quest72689:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72689:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72689:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30171Data.alias, 3)
end

function Quest72689:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7268902")
        actorUtils.FinishQuestID(false, 7268902)
    end
end

function Quest72689:OnSubStart7268901(arg1)
    print("OnSubStart7268901")
end

function Quest72689:OnSubFinish7268901(arg1)
    print("OnSubFinish7268901")
end

function Quest72689:OnSubStart7268902(arg1)
    print("OnSubStart7268902")
end

function Quest72689:OnSubFinish7268902(arg1)
    print("OnSubFinish7268902")
end

function Quest72689:OnSubStart7268903(arg1)
    print("OnSubStart7268903")
end

function Quest72689:OnSubFinish7268903(arg1)
    print("OnSubFinish7268903")
end

function Quest72689:OnSubStart7268904(arg1)
    print("OnSubStart7268904")
end

function Quest72689:OnSubFinish7268904(arg1)
    print("OnSubFinish7268904")
end

return Quest72689
