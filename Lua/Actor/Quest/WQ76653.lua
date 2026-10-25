require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76653 = class("Quest76653", QuestActorProxy)
Quest76653.defaultAlias = "Quest76653"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76653:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76653:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7665302"] = self.OnSubStart7665302,
        ["7665301"] = self.OnSubStart7665301,
        ["7665303"] = self.OnSubStart7665303,
        ["7665304"] = self.OnSubStart7665304,
        ["7665305"] = self.OnSubStart7665305,
        ["7665306"] = self.OnSubStart7665306
    }
end

function Quest76653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7665302"] = self.OnSubFinish7665302,
        ["7665301"] = self.OnSubFinish7665301,
        ["7665303"] = self.OnSubFinish7665303,
        ["7665304"] = self.OnSubFinish7665304,
        ["7665305"] = self.OnSubFinish7665305,
        ["7665306"] = self.OnSubFinish7665306
    }
end

function Quest76653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76653:Start()
    print("Start")
end

function Quest76653:OnDestroy()
    print("OnDestroy")
end

function Quest76653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76653:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
end

function Quest76653:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76653:OnSubStart7665302(arg1)
    print("OnSubStart7665302")
    this:CreateQuestNpc(arg1, npcs.Npc7048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7048.alias, 76653):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76653:OnSubFinish7665302(arg1)
    print("OnSubFinish7665302")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(2348, nil)
    end)
end

function Quest76653:OnSubStart7665301(arg1)
    print("OnSubStart7665301")
    actorUtils.FinishQuestID(false, 7665301)
end

function Quest76653:OnSubFinish7665301(arg1)
    print("OnSubFinish7665301")
end

function Quest76653:OnSubStart7665303(arg1)
    print("OnSubStart7665303")
end

function Quest76653:OnSubFinish7665303(arg1)
    print("OnSubFinish7665303")
end

function Quest76653:OnSubStart7665304(arg1)
    print("OnSubStart7665304")
end

function Quest76653:OnSubFinish7665304(arg1)
    print("OnSubFinish7665304")
end

function Quest76653:OnSubStart7665305(arg1)
    print("OnSubStart7665305")
end

function Quest76653:OnSubFinish7665305(arg1)
    print("OnSubFinish7665305")
end

function Quest76653:OnSubStart7665306(arg1)
    print("OnSubStart7665306")
    actorUtils.FinishQuestID(false, 7665306)
end

function Quest76653:OnSubFinish7665306(arg1)
    print("OnSubFinish7665306")
end

return Quest76653
