require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6008 = class("Quest6008", QuestActorProxy)
Quest6008.defaultAlias = "Quest6008"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest6008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest6008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600801"] = self.OnSubStart600801,
        ["600802"] = self.OnSubStart600802,
        ["600803"] = self.OnSubStart600803
    }
end

function Quest6008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600801"] = self.OnSubFinish600801,
        ["600802"] = self.OnSubFinish600802,
        ["600803"] = self.OnSubFinish600803
    }
end

function Quest6008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6008:Start()
    print("Start")
end

function Quest6008:OnDestroy()
    print("OnDestroy")
end

function Quest6008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6008:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 600803 then
        actorUtils.FinishQuestID(false, 600803)
    end
end

function Quest6008:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6008:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6008:OnSubStart600801(arg1)
    print("OnSubStart600801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 15, 600801)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6008):DoFreeStyle(1340, true, nil, true, true, false, false)
end

function Quest6008:OnSubFinish600801(arg1)
    print("OnSubFinish600801")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest6008:OnSubStart600802(arg1)
    print("OnSubStart600802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 20, 600802)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 6008):DoFreeStyle(5000, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110600802)
end

function Quest6008:OnSubFinish600802(arg1)
    print("OnSubFinish600802")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:CancelStoryByQuest(110600802)
end

function Quest6008:OnSubStart600803(arg1)
    print("OnSubStart600803")
end

function Quest6008:OnSubFinish600803(arg1)
    print("OnSubFinish600803")
end

return Quest6008
