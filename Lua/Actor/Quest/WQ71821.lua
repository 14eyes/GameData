require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71821 = class("Quest71821", QuestActorProxy)
Quest71821.defaultAlias = "Quest71821"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71821:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71821:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182112"] = self.OnSubStart7182112,
        ["7182101"] = self.OnSubStart7182101,
        ["7182111"] = self.OnSubStart7182111,
        ["7182102"] = self.OnSubStart7182102,
        ["7182103"] = self.OnSubStart7182103,
        ["7182104"] = self.OnSubStart7182104,
        ["7182105"] = self.OnSubStart7182105,
        ["7182106"] = self.OnSubStart7182106,
        ["7182107"] = self.OnSubStart7182107,
        ["7182108"] = self.OnSubStart7182108,
        ["7182109"] = self.OnSubStart7182109,
        ["7182110"] = self.OnSubStart7182110
    }
end

function Quest71821:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182112"] = self.OnSubFinish7182112,
        ["7182101"] = self.OnSubFinish7182101,
        ["7182111"] = self.OnSubFinish7182111,
        ["7182102"] = self.OnSubFinish7182102,
        ["7182103"] = self.OnSubFinish7182103,
        ["7182104"] = self.OnSubFinish7182104,
        ["7182105"] = self.OnSubFinish7182105,
        ["7182106"] = self.OnSubFinish7182106,
        ["7182107"] = self.OnSubFinish7182107,
        ["7182108"] = self.OnSubFinish7182108,
        ["7182109"] = self.OnSubFinish7182109,
        ["7182110"] = self.OnSubFinish7182110
    }
end

function Quest71821:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182112"] = self.OnSubFailed7182112,
        ["7182101"] = self.OnSubFailed7182101,
        ["7182111"] = self.OnSubFailed7182111,
        ["7182102"] = self.OnSubFailed7182102,
        ["7182103"] = self.OnSubFailed7182103,
        ["7182104"] = self.OnSubFailed7182104,
        ["7182105"] = self.OnSubFailed7182105,
        ["7182106"] = self.OnSubFailed7182106,
        ["7182107"] = self.OnSubFailed7182107,
        ["7182108"] = self.OnSubFailed7182108,
        ["7182109"] = self.OnSubFailed7182109,
        ["7182110"] = self.OnSubFailed7182110
    }
end

function Quest71821:Start()
    print("Start")
end

function Quest71821:OnDestroy()
    print("OnDestroy")
end

function Quest71821:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71821:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71821:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2064Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2402Data.alias, 3)
end

function Quest71821:OnSubStart7182101(arg1)
    print("OnSubStart7182101")
    self:CreateQuestNpc(arg1, npcs.Npc2064Data.id, 1)
end

function Quest71821:OnSubFinish7182101(arg1)
    print("OnSubFinish7182101")
end

function Quest71821:OnSubFailed7182101(arg1)
    print("OnSubFailed7182101")
end

function Quest71821:OnSubStart7182102(arg1)
    print("OnSubStart7182102")
end

function Quest71821:OnSubFinish7182102(arg1)
    print("OnSubFinish7182102")
end

function Quest71821:OnSubFailed7182102(arg1)
    print("OnSubFailed7182102")
end

function Quest71821:OnSubStart7182103(arg1)
    print("OnSubStart7182103")
end

function Quest71821:OnSubFinish7182103(arg1)
    print("OnSubFinish7182103")
end

function Quest71821:OnSubFailed7182103(arg1)
    print("OnSubFailed7182103")
end

function Quest71821:OnSubStart7182104(arg1)
    print("OnSubStart7182104")
end

function Quest71821:OnSubFinish7182104(arg1)
    print("OnSubFinish7182104")
end

function Quest71821:OnSubFailed7182104(arg1)
    print("OnSubFailed7182104")
end

function Quest71821:OnSubStart7182105(arg1)
    print("OnSubStart7182105")
end

function Quest71821:OnSubFinish7182105(arg1)
    print("OnSubFinish7182105")
end

function Quest71821:OnSubFailed7182105(arg1)
    print("OnSubFailed7182105")
end

function Quest71821:OnSubStart7182106(arg1)
    print("OnSubStart7182106")
    self:CreateQuestNpc(arg1, npcs.Npc2402Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2402Data.alias):DoFreeStyle(4190, true, 0, true, true)
    self:CreateSpeechBubbleTask(npcs.Npc2402Data.id, 718219901, 3, true, 4, 5)
end

function Quest71821:OnSubFinish7182106(arg1)
    print("OnSubFinish7182106")
end

function Quest71821:OnSubFailed7182106(arg1)
    print("OnSubFailed7182106")
end

function Quest71821:OnSubStart7182107(arg1)
    print("OnSubStart7182107")
    self:GetQuestNpcActor(npcs.Npc2402Data.alias):DoFreeStyle(4190, true, 0, true, true)
    self:CreateSpeechBubbleTask(npcs.Npc2402Data.id, 718219901, 3, true, 4, 5)
end

function Quest71821:OnSubFinish7182107(arg1)
    print("OnSubFinish7182107")
end

function Quest71821:OnSubFailed7182107(arg1)
    print("OnSubFailed7182107")
end

function Quest71821:OnSubStart7182108(arg1)
    print("OnSubStart7182108")
    self:GetQuestNpcActor(npcs.Npc2402Data.alias):DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
end

function Quest71821:OnSubFinish7182108(arg1)
    print("OnSubFinish7182108")
end

function Quest71821:OnSubFailed7182108(arg1)
    print("OnSubFailed7182108")
end

function Quest71821:OnSubStart7182109(arg1)
    print("OnSubStart7182109")
end

function Quest71821:OnSubFinish7182109(arg1)
    print("OnSubFinish7182109")
end

function Quest71821:OnSubFailed7182109(arg1)
    print("OnSubFailed7182109")
end

function Quest71821:OnSubStart7182110(arg1)
    print("OnSubStart7182110")
end

function Quest71821:OnSubFinish7182110(arg1)
    print("OnSubFinish7182110")
    self:SafeDestroyQuestNpc(npcs.Npc2402Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2064Data.alias, 3)
    end, nil, nil, "")
end

function Quest71821:OnSubFailed7182110(arg1)
    print("OnSubFailed7182110")
end

function Quest71821:OnSubStart7182111(arg1)
    print("OnSubStart7182111")
end

function Quest71821:OnSubFinish7182111(arg1)
    print("OnSubFinish7182111")
end

function Quest71821:OnSubFailed7182111(arg1)
    print("OnSubFailed7182111")
end

function Quest71821:OnSubStart7182112(arg1)
    print("OnSubStart7182112")
end

function Quest71821:OnSubFinish7182112(arg1)
    print("OnSubFinish7182112")
end

function Quest71821:OnSubFailed7182112(arg1)
    print("OnSubFailed7182112")
end

return Quest71821
