require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72109 = class("Quest72109", QuestActorProxy)
Quest72109.defaultAlias = "Quest72109"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest72109:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest72109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210901"] = self.OnSubStart7210901,
        ["7210902"] = self.OnSubStart7210902,
        ["7210903"] = self.OnSubStart7210903,
        ["7210904"] = self.OnSubStart7210904,
        ["7210905"] = self.OnSubStart7210905,
        ["7210906"] = self.OnSubStart7210906,
        ["7210907"] = self.OnSubStart7210907,
        ["7210908"] = self.OnSubStart7210908,
        ["7210909"] = self.OnSubStart7210909,
        ["7210910"] = self.OnSubStart7210910,
        ["7210911"] = self.OnSubStart7210911,
        ["7210912"] = self.OnSubStart7210912,
        ["7210913"] = self.OnSubStart7210913,
        ["7210914"] = self.OnSubStart7210914,
        ["7210915"] = self.OnSubStart7210915,
        ["7210916"] = self.OnSubStart7210916,
        ["7210917"] = self.OnSubStart7210917,
        ["7210918"] = self.OnSubStart7210918,
        ["7210919"] = self.OnSubStart7210919,
        ["7210920"] = self.OnSubStart7210920,
        ["7210921"] = self.OnSubStart7210921,
        ["7210922"] = self.OnSubStart7210922,
        ["7210923"] = self.OnSubStart7210923,
        ["7210924"] = self.OnSubStart7210924,
        ["7210925"] = self.OnSubStart7210925
    }
end

function Quest72109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210901"] = self.OnSubFinish7210901,
        ["7210902"] = self.OnSubFinish7210902,
        ["7210903"] = self.OnSubFinish7210903,
        ["7210904"] = self.OnSubFinish7210904,
        ["7210905"] = self.OnSubFinish7210905,
        ["7210906"] = self.OnSubFinish7210906,
        ["7210907"] = self.OnSubFinish7210907,
        ["7210908"] = self.OnSubFinish7210908,
        ["7210909"] = self.OnSubFinish7210909,
        ["7210910"] = self.OnSubFinish7210910,
        ["7210911"] = self.OnSubFinish7210911,
        ["7210912"] = self.OnSubFinish7210912,
        ["7210913"] = self.OnSubFinish7210913,
        ["7210914"] = self.OnSubFinish7210914,
        ["7210915"] = self.OnSubFinish7210915,
        ["7210916"] = self.OnSubFinish7210916,
        ["7210917"] = self.OnSubFinish7210917,
        ["7210918"] = self.OnSubFinish7210918,
        ["7210919"] = self.OnSubFinish7210919,
        ["7210920"] = self.OnSubFinish7210920,
        ["7210921"] = self.OnSubFinish7210921,
        ["7210922"] = self.OnSubFinish7210922,
        ["7210923"] = self.OnSubFinish7210923,
        ["7210924"] = self.OnSubFinish7210924,
        ["7210925"] = self.OnSubFinish7210925
    }
end

function Quest72109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210901"] = self.OnSubFailed7210901,
        ["7210902"] = self.OnSubFailed7210902,
        ["7210903"] = self.OnSubFailed7210903,
        ["7210904"] = self.OnSubFailed7210904,
        ["7210905"] = self.OnSubFailed7210905,
        ["7210906"] = self.OnSubFailed7210906,
        ["7210907"] = self.OnSubFailed7210907,
        ["7210908"] = self.OnSubFailed7210908,
        ["7210909"] = self.OnSubFailed7210909,
        ["7210910"] = self.OnSubFailed7210910,
        ["7210911"] = self.OnSubFailed7210911,
        ["7210912"] = self.OnSubFailed7210912,
        ["7210913"] = self.OnSubFailed7210913,
        ["7210914"] = self.OnSubFailed7210914,
        ["7210915"] = self.OnSubFailed7210915,
        ["7210916"] = self.OnSubFailed7210916,
        ["7210917"] = self.OnSubFailed7210917,
        ["7210918"] = self.OnSubFailed7210918,
        ["7210919"] = self.OnSubFailed7210919,
        ["7210920"] = self.OnSubFailed7210920,
        ["7210921"] = self.OnSubFailed7210921,
        ["7210922"] = self.OnSubFailed7210922,
        ["7210923"] = self.OnSubFailed7210923,
        ["7210924"] = self.OnSubFailed7210924,
        ["7210925"] = self.OnSubFailed7210925
    }
end

function Quest72109:Start()
    print("Start")
end

function Quest72109:OnDestroy()
    print("OnDestroy")
end

function Quest72109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72109:Request()
    print("Request")
    self:RequestInteraction(npcs.Npc3155Data.alias)
end

function Quest72109:OnSubStart7210901(arg1)
    print("OnSubStart7210901")
    self:FinishQuestID(false, 7210901)
end

function Quest72109:OnSubFinish7210901(arg1)
    print("OnSubFinish7210901")
end

function Quest72109:OnSubFailed7210901(arg1)
    print("OnSubFailed7210901")
end

function Quest72109:OnSubStart7210902(arg1)
    print("OnSubStart7210902")
    self:CreateQuestNpc(arg1, npcs.Npc3167Data.id, 1)
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210902(arg1)
    print("OnSubFinish7210902")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72109:OnSubFailed7210902(arg1)
    print("OnSubFailed7210902")
end

function Quest72109:OnSubStart7210903(arg1)
    print("OnSubStart7210903")
end

function Quest72109:OnSubFinish7210903(arg1)
    print("OnSubFinish7210903")
end

function Quest72109:OnSubFailed7210903(arg1)
    print("OnSubFailed7210903")
end

function Quest72109:OnSubStart7210904(arg1)
    print("OnSubStart7210904")
end

function Quest72109:OnSubFinish7210904(arg1)
    print("OnSubFinish7210904")
end

function Quest72109:OnSubFailed7210904(arg1)
    print("OnSubFailed7210904")
end

function Quest72109:OnSubStart7210905(arg1)
    print("OnSubStart7210905")
end

function Quest72109:OnSubFinish7210905(arg1)
    print("OnSubFinish7210905")
end

function Quest72109:OnSubFailed7210905(arg1)
    print("OnSubFailed7210905")
end

function Quest72109:OnSubStart7210906(arg1)
    print("OnSubStart7210906")
    self:FinishQuestID(false, 7210906)
end

function Quest72109:OnSubFinish7210906(arg1)
    print("OnSubFinish7210906")
end

function Quest72109:OnSubFailed7210906(arg1)
    print("OnSubFailed7210906")
end

function Quest72109:OnSubStart7210907(arg1)
    print("OnSubStart7210907")
end

function Quest72109:OnSubFinish7210907(arg1)
    print("OnSubFinish7210907")
    self:DestroyQuestNpcActor(npcs.Npc3167Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest72109:OnSubFailed7210907(arg1)
    print("OnSubFailed7210907")
end

function Quest72109:OnSubStart7210908(arg1)
    print("OnSubStart7210908")
    self:NotifyTo(npcs.Npc3155Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20330Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc20330Data.id, 721091401, 2, true, 0, 0)
    self:GetQuestNpcActor(npcs.Npc20330Data.alias):DoFreeStyle(1200, true, nil, true, true, false)
end

function Quest72109:OnSubFinish7210908(arg1)
    print("OnSubFinish7210908")
end

function Quest72109:OnSubFailed7210908(arg1)
    print("OnSubFailed7210908")
end

function Quest72109:OnSubStart7210909(arg1)
    print("OnSubStart7210909")
    self:CreateQuestNpc(arg1, npcs.Npc3167Data.id, 1)
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210909(arg1)
    print("OnSubFinish7210909")
end

function Quest72109:OnSubFailed7210909(arg1)
    print("OnSubFailed7210909")
end

function Quest72109:OnSubStart7210910(arg1)
    print("OnSubStart7210910")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210910(arg1)
    print("OnSubFinish7210910")
end

function Quest72109:OnSubFailed7210910(arg1)
    print("OnSubFailed7210910")
end

function Quest72109:OnSubStart7210911(arg1)
    print("OnSubStart7210911")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3155Data.id, 1)
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
    self:ClearSpeechBubbleTask()
    self:TransmitPlayerById(arg1, 1, self.Request)
end

function Quest72109:OnSubFinish7210911(arg1)
    print("OnSubFinish7210911")
end

function Quest72109:OnSubFailed7210911(arg1)
    print("OnSubFailed7210911")
end

function Quest72109:OnSubStart7210912(arg1)
    print("OnSubStart7210912")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210912(arg1)
    print("OnSubFinish7210912")
end

function Quest72109:OnSubFailed7210912(arg1)
    print("OnSubFailed7210912")
end

function Quest72109:OnSubStart7210913(arg1)
    print("OnSubStart7210913")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210913(arg1)
    print("OnSubFinish7210913")
end

function Quest72109:OnSubFailed7210913(arg1)
    print("OnSubFailed7210913")
end

function Quest72109:OnSubStart7210914(arg1)
    print("OnSubStart7210914")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3155Data.id, 1)
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
    self:ClearSpeechBubbleTask()
end

function Quest72109:OnSubFinish7210914(arg1)
    print("OnSubFinish7210914")
    self:SafeDestroyQuestNpc(npcs.Npc3155Data.alias, 3)
end

function Quest72109:OnSubFailed7210914(arg1)
    print("OnSubFailed7210914")
end

function Quest72109:OnSubStart7210915(arg1)
    print("OnSubStart7210915")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3155Data.id, 1)
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210915(arg1)
    print("OnSubFinish7210915")
end

function Quest72109:OnSubFailed7210915(arg1)
    print("OnSubFailed7210915")
end

function Quest72109:OnSubStart7210916(arg1)
    print("OnSubStart7210916")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:NotifyTo(npcs.Npc3155Data.alias, 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest72109:OnSubFinish7210916(arg1)
    print("OnSubFinish7210916")
    self:SafeDestroyQuestNpc(npcs.Npc3155Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20330Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "QUEST_Message_Q72109")
end

function Quest72109:OnSubFailed7210916(arg1)
    print("OnSubFailed7210916")
end

function Quest72109:OnSubStart7210917(arg1)
    print("OnSubStart7210917")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210917(arg1)
    print("OnSubFinish7210917")
    self:SafeDestroyQuestNpc(npcs.Npc3155Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest72109:OnSubFailed7210917(arg1)
    print("OnSubFailed7210917")
end

function Quest72109:OnSubStart7210918(arg1)
    print("OnSubStart7210918")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3155Data.id, 1)
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210918(arg1)
    print("OnSubFinish7210918")
end

function Quest72109:OnSubFailed7210918(arg1)
    print("OnSubFailed7210918")
end

function Quest72109:OnSubStart7210919(arg1)
    print("OnSubStart7210919")
    self:NotifyTo(npcs.Npc3167Data.alias, 2, true)
    self:LightNotifyTo(npcs.Npc3155Data.alias, 0, true)
end

function Quest72109:OnSubFinish7210919(arg1)
    print("OnSubFinish7210919")
    self:SafeDestroyQuestNpc(npcs.Npc3155Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest72109:OnSubFailed7210919(arg1)
    print("OnSubFailed7210919")
end

function Quest72109:OnSubStart7210920(arg1)
    print("OnSubStart7210920")
    self:LightNotifyTo(npcs.Npc3167Data.alias, 0, true)
end

function Quest72109:OnSubFinish7210920(arg1)
    print("OnSubFinish7210920")
    self:SafeDestroyQuestNpc(npcs.Npc3167Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc3167Data.alias):DestroyWithDither(false, 2)
end

function Quest72109:OnSubFailed7210920(arg1)
    print("OnSubFailed7210920")
end

function Quest72109:OnSubStart7210921(arg1)
    print("OnSubStart7210921")
    self:NotifyTo(npcs.Npc3155Data.alias, 2, true)
end

function Quest72109:OnSubFinish7210921(arg1)
    print("OnSubFinish7210921")
end

function Quest72109:OnSubFailed7210921(arg1)
    print("OnSubFailed7210921")
end

function Quest72109:OnSubStart7210922(arg1)
    print("OnSubStart7210922")
end

function Quest72109:OnSubFinish7210922(arg1)
    print("OnSubFinish7210922")
end

function Quest72109:OnSubFailed7210922(arg1)
    print("OnSubFailed7210922")
end

function Quest72109:OnSubStart7210923(arg1)
    print("OnSubStart7210923")
end

function Quest72109:OnSubFinish7210923(arg1)
    print("OnSubFinish7210923")
end

function Quest72109:OnSubFailed7210923(arg1)
    print("OnSubFailed7210923")
end

function Quest72109:OnSubStart7210924(arg1)
    print("OnSubStart7210924")
end

function Quest72109:OnSubFinish7210924(arg1)
    print("OnSubFinish7210924")
end

function Quest72109:OnSubFailed7210924(arg1)
    print("OnSubFailed7210924")
end

function Quest72109:OnSubStart7210925(arg1)
    print("OnSubStart7210925")
end

function Quest72109:OnSubFinish7210925(arg1)
    print("OnSubFinish7210925")
end

function Quest72109:OnSubFailed7210925(arg1)
    print("OnSubFailed7210925")
end

return Quest72109
