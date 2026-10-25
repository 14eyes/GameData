require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71668 = class("Quest71668", QuestActorProxy)
Quest71668.defaultAlias = "Quest71668"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71668:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71668:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7166801"] = self.OnSubStart7166801,
        ["7166802"] = self.OnSubStart7166802,
        ["7166803"] = self.OnSubStart7166803,
        ["7166804"] = self.OnSubStart7166804
    }
end

function Quest71668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7166801"] = self.OnSubFinish7166801,
        ["7166802"] = self.OnSubFinish7166802,
        ["7166803"] = self.OnSubFinish7166803,
        ["7166804"] = self.OnSubFinish7166804
    }
end

function Quest71668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71668:Start()
    print("Start")
end

function Quest71668:OnDestroy()
    print("OnDestroy")
end

function Quest71668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71668:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30672.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30673.alias, 3)
end

function Quest71668:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest71668:OnSubStart7166801(arg1)
    print("OnSubStart7166801")
    this:CreateQuestNpc(arg1, npcs.Npc30672.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30673.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30673.alias, 71668):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30673.alias, 71668):DisableInteeHeadCtrl(true)
end

function Quest71668:OnSubFinish7166801(arg1)
    print("OnSubFinish7166801")
end

function Quest71668:OnSubStart7166802(arg1)
    print("OnSubStart7166802")
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30673.alias, 71668):DisableInteeHeadCtrl(true)
end

function Quest71668:OnSubFinish7166802(arg1)
    print("OnSubFinish7166802")
end

function Quest71668:OnSubStart7166803(arg1)
    print("OnSubStart7166803")
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30673.alias, 71668):DisableInteeHeadCtrl(true)
end

function Quest71668:OnSubFinish7166803(arg1)
    print("OnSubFinish7166803")
end

function Quest71668:OnSubStart7166804(arg1)
    print("OnSubStart7166804")
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30672.alias, 71668):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30673.alias, 71668):DisableInteeHeadCtrl(true)
end

function Quest71668:OnSubFinish7166804(arg1)
    print("OnSubFinish7166804")
    this:SafeDestroyQuestNpc(npcs.Npc30672.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30673.alias)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 2, function(arg1)
            actorUtils.ShowContext("AnimalViewStagePageContext", 0)
        end)
    end)
end

return Quest71668
