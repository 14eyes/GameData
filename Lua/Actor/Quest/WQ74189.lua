require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74189 = class("Quest74189", QuestActorProxy)
Quest74189.defaultAlias = "Quest74189"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74189:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418901"] = self.OnSubStart7418901,
        ["7418905"] = self.OnSubStart7418905,
        ["7418902"] = self.OnSubStart7418902,
        ["7418903"] = self.OnSubStart7418903,
        ["7418904"] = self.OnSubStart7418904
    }
end

function Quest74189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418901"] = self.OnSubFinish7418901,
        ["7418905"] = self.OnSubFinish7418905,
        ["7418902"] = self.OnSubFinish7418902,
        ["7418903"] = self.OnSubFinish7418903,
        ["7418904"] = self.OnSubFinish7418904
    }
end

function Quest74189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74189:Start()
    print("Start")
end

function Quest74189:OnDestroy()
    print("OnDestroy")
end

function Quest74189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74189:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74189:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74189:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7418902)
    end
end

function Quest74189:OnSubStart7418901(arg1)
    print("OnSubStart7418901")
    this:CreateQuestNpc(arg1, npcs.Npc5285Data.id, 0)
end

function Quest74189:OnSubFinish7418901(arg1)
    print("OnSubFinish7418901")
    this:CallDelayByQuest("1", 4, function(arg1)
        this:RequestInteraction(npcs.Npc5285Data.alias, "", true)
    end)
end

function Quest74189:OnSubStart7418905(arg1)
    print("OnSubStart7418905")
    this:CreateQuestNpc(arg1, npcs.Npc5285Data.id, 0)
end

function Quest74189:OnSubFinish7418905(arg1)
    print("OnSubFinish7418905")
end

function Quest74189:OnSubStart7418902(arg1)
    print("OnSubStart7418902")
    this:CreateQuestNpc(arg1, npcs.Npc5285Data.id, 0)
end

function Quest74189:OnSubFinish7418902(arg1)
    print("OnSubFinish7418902")
end

function Quest74189:OnSubStart7418903(arg1)
    print("OnSubStart7418903")
end

function Quest74189:OnSubFinish7418903(arg1)
    print("OnSubFinish7418903")
end

function Quest74189:OnSubStart7418904(arg1)
    print("OnSubStart7418904")
end

function Quest74189:OnSubFinish7418904(arg1)
    print("OnSubFinish7418904")
    this:NPCDestroyImmediately(npcs.Npc5285Data.alias, 3)
end

return Quest74189
