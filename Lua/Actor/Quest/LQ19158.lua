require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19158 = class("Quest19158", QuestActorProxy)
Quest19158.defaultAlias = "Quest19158"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19158:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915801"] = self.OnSubStart1915801,
        ["1915802"] = self.OnSubStart1915802,
        ["1915803"] = self.OnSubStart1915803
    }
end

function Quest19158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915801"] = self.OnSubFinish1915801,
        ["1915802"] = self.OnSubFinish1915802,
        ["1915803"] = self.OnSubFinish1915803
    }
end

function Quest19158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19158:Start()
    print("Start")
end

function Quest19158:OnDestroy()
    print("OnDestroy")
end

function Quest19158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19158:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12910Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest19158:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19158:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest1915803")
        actorUtils.FinishQuestID(false, 1915803)
    end
end

function Quest19158:OnSubStart1915801(arg1)
    print("OnSubStart1915801")
    this:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 2)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915801)
end

function Quest19158:OnSubFinish1915801(arg1)
    print("OnSubFinish1915801")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:NpcDestroy(npcs.Npc4019Data.alias, 3)
end

function Quest19158:OnSubStart1915802(arg1)
    print("OnSubStart1915802")
    this:CreateQuestNpc(arg1, npcs.Npc12910Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc12910Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915802)
end

function Quest19158:OnSubFinish1915802(arg1)
    print("OnSubFinish1915802")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
end

function Quest19158:OnSubStart1915803(arg1)
    print("OnSubStart1915803")
end

function Quest19158:OnSubFinish1915803(arg1)
    print("OnSubFinish1915803")
end

return Quest19158
