require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72688 = class("Quest72688", QuestActorProxy)
Quest72688.defaultAlias = "Quest72688"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72688:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72688:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7268801"] = self.OnSubStart7268801,
        ["7268802"] = self.OnSubStart7268802,
        ["7268803"] = self.OnSubStart7268803,
        ["7268804"] = self.OnSubStart7268804
    }
end

function Quest72688:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7268801"] = self.OnSubFinish7268801,
        ["7268802"] = self.OnSubFinish7268802,
        ["7268803"] = self.OnSubFinish7268803,
        ["7268804"] = self.OnSubFinish7268804
    }
end

function Quest72688:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72688:Start()
    print("Start")
end

function Quest72688:OnDestroy()
    print("OnDestroy")
end

function Quest72688:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72688:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72688:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30171Data.alias, 3)
end

function Quest72688:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7268802")
        actorUtils.FinishQuestID(false, 7268802)
    end
end

function Quest72688:OnSubStart7268801(arg1)
    print("OnSubStart7268801")
end

function Quest72688:OnSubFinish7268801(arg1)
    print("OnSubFinish7268801")
end

function Quest72688:OnSubStart7268802(arg1)
    print("OnSubStart7268802")
end

function Quest72688:OnSubFinish7268802(arg1)
    print("OnSubFinish7268802")
end

function Quest72688:OnSubStart7268803(arg1)
    print("OnSubStart7268803")
end

function Quest72688:OnSubFinish7268803(arg1)
    print("OnSubFinish7268803")
end

function Quest72688:OnSubStart7268804(arg1)
    print("OnSubStart7268804")
end

function Quest72688:OnSubFinish7268804(arg1)
    print("OnSubFinish7268804")
end

return Quest72688
