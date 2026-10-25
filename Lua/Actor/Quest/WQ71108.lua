require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71108 = class("Quest71108", QuestActorProxy)
Quest71108.defaultAlias = "Quest71108"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71108:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110801"] = self.OnSubStart7110801,
        ["7110802"] = self.OnSubStart7110802,
        ["7110803"] = self.OnSubStart7110803,
        ["7110804"] = self.OnSubStart7110804
    }
end

function Quest71108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110801"] = self.OnSubFinish7110801,
        ["7110802"] = self.OnSubFinish7110802,
        ["7110803"] = self.OnSubFinish7110803,
        ["7110804"] = self.OnSubFinish7110804
    }
end

function Quest71108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71108:Start()
    print("Start")
end

function Quest71108:OnDestroy()
    print("OnDestroy")
end

function Quest71108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71108:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71108:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 711080201 then
        actorUtils.FinishQuestID(false, 7110802)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7110802)
    end
end

function Quest71108:OnSubStart7110801(arg1)
    print("OnSubStart7110801")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2230Data.id, 0)
    this:CallDelayByQuest("", 1, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    end)
end

function Quest71108:OnSubFinish7110801(arg1)
    print("OnSubFinish7110801")
    this:NarratorOnlyTaskByData(datas.NarratorWithId711080102)
end

function Quest71108:OnSubStart7110802(arg1)
    print("OnSubStart7110802")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
end

function Quest71108:OnSubFinish7110802(arg1)
    print("OnSubFinish7110802")
end

function Quest71108:OnSubStart7110803(arg1)
    print("OnSubStart7110803")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
end

function Quest71108:OnSubFinish7110803(arg1)
    print("OnSubFinish7110803")
    this:PlayCutsceneIndex(711080301, function(arg1)
        actorUtils.FinishQuestID(false, 7110804)
    end, nil, nil, false)
end

function Quest71108:OnSubStart7110804(arg1)
    print("OnSubStart7110804")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
end

function Quest71108:OnSubFinish7110804(arg1)
    print("OnSubFinish7110804")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7110803)
    end, nil, 0, false, true)

    this:SafeDestroyQuestNpc(npcs.Npc2230Data.alias, 3)
end

return Quest71108
