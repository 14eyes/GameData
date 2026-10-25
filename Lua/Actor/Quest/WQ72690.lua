require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72690 = class("Quest72690", QuestActorProxy)
Quest72690.defaultAlias = "Quest72690"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72690:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72690:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269001"] = self.OnSubStart7269001,
        ["7269002"] = self.OnSubStart7269002,
        ["7269003"] = self.OnSubStart7269003,
        ["7269004"] = self.OnSubStart7269004
    }
end

function Quest72690:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269001"] = self.OnSubFinish7269001,
        ["7269002"] = self.OnSubFinish7269002,
        ["7269003"] = self.OnSubFinish7269003,
        ["7269004"] = self.OnSubFinish7269004
    }
end

function Quest72690:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72690:Start()
    print("Start")
end

function Quest72690:OnDestroy()
    print("OnDestroy")
end

function Quest72690:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72690:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72690:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30171Data.alias, 3)
end

function Quest72690:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7269002")
        actorUtils.FinishQuestID(false, 7269002)
    end
end

function Quest72690:OnSubStart7269001(arg1)
    print("OnSubStart7269001")
end

function Quest72690:OnSubFinish7269001(arg1)
    print("OnSubFinish7269001")
end

function Quest72690:OnSubStart7269002(arg1)
    print("OnSubStart7269002")
end

function Quest72690:OnSubFinish7269002(arg1)
    print("OnSubFinish7269002")
end

function Quest72690:OnSubStart7269003(arg1)
    print("OnSubStart7269003")
end

function Quest72690:OnSubFinish7269003(arg1)
    print("OnSubFinish7269003")
end

function Quest72690:OnSubStart7269004(arg1)
    print("OnSubStart7269004")
end

function Quest72690:OnSubFinish7269004(arg1)
    print("OnSubFinish7269004")
end

return Quest72690
