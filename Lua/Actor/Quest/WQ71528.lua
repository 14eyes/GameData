require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71528 = class("Quest71528", QuestActorProxy)
Quest71528.defaultAlias = "Quest71528"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71528:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71528:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7152801"] = self.OnSubStart7152801,
        ["7152802"] = self.OnSubStart7152802,
        ["7152803"] = self.OnSubStart7152803
    }
end

function Quest71528:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7152801"] = self.OnSubFinish7152801,
        ["7152802"] = self.OnSubFinish7152802,
        ["7152803"] = self.OnSubFinish7152803
    }
end

function Quest71528:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7152801"] = self.OnSubFailed7152801,
        ["7152802"] = self.OnSubFailed7152802,
        ["7152803"] = self.OnSubFailed7152803
    }
end

function Quest71528:Start()
    print("Start")
end

function Quest71528:OnDestroy()
    print("OnDestroy")
end

function Quest71528:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71528:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71528:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13875.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1030.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30468.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30470.alias, 3)
    this:DestroyNpcTrigger("Q7152803N1044Trigger")
end

function Quest71528:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71528:OnSubStart7152801(arg1)
    print("OnSubStart7152801")
    this:CreateQuestNpc(arg1, npcs.Npc30470.id, 0)
    if this:GetQuestVar(7152801, 0) == 0 then
        this:SetNavigationByMainId(71528, true)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest71528:OnSubFinish7152801(arg1)
    print("OnSubFinish7152801")
    this:SafeDestroyQuestNpc(npcs.Npc30470.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30469.alias, 3)
end

function Quest71528:OnSubFailed7152801(arg1)
    print("OnSubFailed7152801")
end

function Quest71528:OnSubStart7152802(arg1)
    print("OnSubStart7152802")
    this:CreateQuestNpc(arg1, npcs.Npc13875.id, 0)
end

function Quest71528:OnSubFinish7152802(arg1)
    print("OnSubFinish7152802")
    this:SafeDestroyQuestNpc(npcs.Npc13875.alias, 3)
end

function Quest71528:OnSubFailed7152802(arg1)
    print("OnSubFailed7152802")
end

function Quest71528:OnSubStart7152803(arg1)
    print("OnSubStart7152803")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1044.id, 7152803, 0, 20)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc1043.id, 0)
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1030.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30468.id, 0)
    this:NotifyTo(npcs.Npc30470.alias, 1, true)
    this:NotifyTo(npcs.Npc30471.alias, 1, true)
    this:NotifyTo(npcs.Npc30472.alias, 1, true)
    this:NotifyTo(npcs.Npc30467.alias, 1, true)
    this:NotifyTo(npcs.Npc30473.alias, 1, true)
    this:NotifyTo(npcs.Npc30469.alias, 1, true)
end

function Quest71528:OnSubFinish7152803(arg1)
    print("OnSubFinish7152803")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1030.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30468.alias, 3)
    this:LightNotifyTo(npcs.Npc30470.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30471.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30472.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30467.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30473.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30469.alias, 0, true)
end

function Quest71528:OnSubFailed7152803(arg1)
    print("OnSubFailed7152803")
end

return Quest71528
