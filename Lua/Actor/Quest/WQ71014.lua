require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71014 = class("Quest71014", QuestActorProxy)
Quest71014.defaultAlias = "Quest71014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101401"] = self.OnSubStart7101401,
        ["7101402"] = self.OnSubStart7101402,
        ["7101403"] = self.OnSubStart7101403,
        ["7101404"] = self.OnSubStart7101404,
        ["7101405"] = self.OnSubStart7101405,
        ["7101406"] = self.OnSubStart7101406,
        ["7101407"] = self.OnSubStart7101407,
        ["7101408"] = self.OnSubStart7101408,
        ["7101409"] = self.OnSubStart7101409,
        ["7101410"] = self.OnSubStart7101410,
        ["7101411"] = self.OnSubStart7101411,
        ["7101412"] = self.OnSubStart7101412,
        ["7101413"] = self.OnSubStart7101413,
        ["7101414"] = self.OnSubStart7101414,
        ["7101415"] = self.OnSubStart7101415
    }
end

function Quest71014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101401"] = self.OnSubFinish7101401,
        ["7101402"] = self.OnSubFinish7101402,
        ["7101403"] = self.OnSubFinish7101403,
        ["7101404"] = self.OnSubFinish7101404,
        ["7101405"] = self.OnSubFinish7101405,
        ["7101406"] = self.OnSubFinish7101406,
        ["7101407"] = self.OnSubFinish7101407,
        ["7101408"] = self.OnSubFinish7101408,
        ["7101409"] = self.OnSubFinish7101409,
        ["7101410"] = self.OnSubFinish7101410,
        ["7101411"] = self.OnSubFinish7101411,
        ["7101412"] = self.OnSubFinish7101412,
        ["7101413"] = self.OnSubFinish7101413,
        ["7101414"] = self.OnSubFinish7101414,
        ["7101415"] = self.OnSubFinish7101415
    }
end

function Quest71014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101401"] = self.OnSubFailed7101401,
        ["7101402"] = self.OnSubFailed7101402,
        ["7101403"] = self.OnSubFailed7101403,
        ["7101404"] = self.OnSubFailed7101404,
        ["7101405"] = self.OnSubFailed7101405,
        ["7101406"] = self.OnSubFailed7101406,
        ["7101407"] = self.OnSubFailed7101407,
        ["7101408"] = self.OnSubFailed7101408,
        ["7101409"] = self.OnSubFailed7101409,
        ["7101410"] = self.OnSubFailed7101410,
        ["7101411"] = self.OnSubFailed7101411,
        ["7101412"] = self.OnSubFailed7101412,
        ["7101413"] = self.OnSubFailed7101413,
        ["7101414"] = self.OnSubFailed7101414,
        ["7101415"] = self.OnSubFailed7101415
    }
end

function Quest71014:Start()
    print("Start")
end

function Quest71014:OnDestroy()
    print("OnDestroy")
end

function Quest71014:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyNPC()
end

function Quest71014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:CallDelay(1, self.DestroyNPC)
end

function Quest71014:CreateNPC()
    print("CreateNPC")
    self:CreateQuestNpc(quest, npcs.Npc2447Data.id, 1)
    self:CreateQuestNpc(quest, npcs.Npc2037Data.id, 2)
    self:CreateQuestNpc(quest, npcs.Npc2076Data.id, 3)
    self:CreateQuestNpc(quest, npcs.Npc2443Data.id, 4)
    self:CreateQuestNpc(quest, npcs.Npc2446Data.id, 5)
    self:CreateQuestNpc(quest, npcs.Npc2445Data.id, 6)
    self:CreateQuestNpc(quest, npcs.Npc2444Data.id, 7)
    self:CreateQuestNpc(quest, npcs.Npc2448Data.id, 8)
    self:CreateQuestNpc(quest, npcs.Npc2450Data.id, 10)
    self:CreateQuestNpc(quest, npcs.Npc2442Data.id, 9)
end

function Quest71014:DestroyNPC()
    print("DestroyNPC")
    self:DestroyQuestNpcActor(npcs.Npc2447Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2037Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2076Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2443Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2446Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2445Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2444Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2448Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2442Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2450Data.alias, 3)
end

function Quest71014:NewFunction()
    print("NewFunction")
    self:TransmitPlayerByQuestId(7101401, 1, nil, self.BlackScreen)
end

function Quest71014:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "QUEST_Message_Q71014")
end

function Quest71014:TransportPlayer2()
    self:TransmitPlayerByQuestId(7101401, 2)
end

function Quest71014:TransportPlayer3()
    self:TransmitPlayerByQuestId(7101415, 3)
end

function Quest71014:protect()
    print("finishiquest")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7101415)
    end
end

function Quest71014:OnSubStart7101401(arg1)
    print("OnSubStart7101401")
    self:CallDelay(0.1, self.NewFunction)
end

function Quest71014:OnSubFinish7101401(arg1)
    print("OnSubFinish7101401")
    self:ShowBlackScreen(0.2, 2, 0.5, self.TransportPlayer2, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Npc2447Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2037Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2076Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2443Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc2446Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc2445Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc2444Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc2448Data.id, 8)
end

function Quest71014:OnSubFailed7101401(arg1)
    print("OnSubFailed7101401")
end

function Quest71014:OnSubStart7101402(arg1)
    print("OnSubStart7101402")
end

function Quest71014:OnSubFinish7101402(arg1)
    print("OnSubFinish7101402")
end

function Quest71014:OnSubFailed7101402(arg1)
    print("OnSubFailed7101402")
end

function Quest71014:OnSubStart7101403(arg1)
    print("OnSubStart7101403")
end

function Quest71014:OnSubFinish7101403(arg1)
    print("OnSubFinish7101403")
end

function Quest71014:OnSubFailed7101403(arg1)
    print("OnSubFailed7101403")
end

function Quest71014:OnSubStart7101404(arg1)
    print("OnSubStart7101404")
end

function Quest71014:OnSubFinish7101404(arg1)
    print("OnSubFinish7101404")
end

function Quest71014:OnSubFailed7101404(arg1)
    print("OnSubFailed7101404")
end

function Quest71014:OnSubStart7101405(arg1)
    print("OnSubStart7101405")
end

function Quest71014:OnSubFinish7101405(arg1)
    print("OnSubFinish7101405")
end

function Quest71014:OnSubFailed7101405(arg1)
    print("OnSubFailed7101405")
end

function Quest71014:OnSubStart7101406(arg1)
    print("OnSubStart7101406")
end

function Quest71014:OnSubFinish7101406(arg1)
    print("OnSubFinish7101406")
end

function Quest71014:OnSubFailed7101406(arg1)
    print("OnSubFailed7101406")
end

function Quest71014:OnSubStart7101407(arg1)
    print("OnSubStart7101407")
end

function Quest71014:OnSubFinish7101407(arg1)
    print("OnSubFinish7101407")
end

function Quest71014:OnSubFailed7101407(arg1)
    print("OnSubFailed7101407")
end

function Quest71014:OnSubStart7101408(arg1)
    print("OnSubStart7101408")
end

function Quest71014:OnSubFinish7101408(arg1)
    print("OnSubFinish7101408")
end

function Quest71014:OnSubFailed7101408(arg1)
    print("OnSubFailed7101408")
end

function Quest71014:OnSubStart7101409(arg1)
    print("OnSubStart7101409")
end

function Quest71014:OnSubFinish7101409(arg1)
    print("OnSubFinish7101409")
    self:NarratorOnlyTaskLegacy(datas.Paimon, nil, "")
end

function Quest71014:OnSubFailed7101409(arg1)
    print("OnSubFailed7101409")
end

function Quest71014:OnSubStart7101410(arg1)
    print("OnSubStart7101410")
end

function Quest71014:OnSubFinish7101410(arg1)
    print("OnSubFinish7101410")
end

function Quest71014:OnSubFailed7101410(arg1)
    print("OnSubFailed7101410")
end

function Quest71014:OnSubStart7101411(arg1)
    print("OnSubStart7101411")
end

function Quest71014:OnSubFinish7101411(arg1)
    print("OnSubFinish7101411")
end

function Quest71014:OnSubFailed7101411(arg1)
    print("OnSubFailed7101411")
end

function Quest71014:OnSubStart7101412(arg1)
    print("OnSubStart7101412")
end

function Quest71014:OnSubFinish7101412(arg1)
    print("OnSubFinish7101412")
end

function Quest71014:OnSubFailed7101412(arg1)
    print("OnSubFailed7101412")
end

function Quest71014:OnSubStart7101413(arg1)
    print("OnSubStart7101413")
end

function Quest71014:OnSubFinish7101413(arg1)
    print("OnSubFinish7101413")
end

function Quest71014:OnSubFailed7101413(arg1)
    print("OnSubFailed7101413")
end

function Quest71014:OnSubStart7101414(arg1)
    print("OnSubStart7101414")
    self:CreateQuestNpc(arg1, npcs.Npc2450Data.id, 10)
end

function Quest71014:OnSubFinish7101414(arg1)
    print("OnSubFinish7101414")
end

function Quest71014:OnSubFailed7101414(arg1)
    print("OnSubFailed7101414")
end

function Quest71014:OnSubStart7101415(arg1)
    print("OnSubStart7101415")
    self:ShowBlackScreen(0.2, 2, 0.5, self.TransportPlayer3, self.protect, nil, "")
end

function Quest71014:OnSubFinish7101415(arg1)
    print("OnSubFinish7101415")
end

function Quest71014:OnSubFailed7101415(arg1)
    print("OnSubFailed7101415")
end

return Quest71014
