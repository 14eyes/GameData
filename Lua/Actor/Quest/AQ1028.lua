require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1028 = class("Quest1028", QuestActorProxy)
Quest1028.defaultAlias = "Quest1028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest1028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest1028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["102801"] = self.OnSubStart102801,
        ["102808"] = self.OnSubStart102808,
        ["102803"] = self.OnSubStart102803,
        ["102804"] = self.OnSubStart102804,
        ["102809"] = self.OnSubStart102809,
        ["102805"] = self.OnSubStart102805,
        ["102802"] = self.OnSubStart102802,
        ["102806"] = self.OnSubStart102806,
        ["102807"] = self.OnSubStart102807
    }
end

function Quest1028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["102801"] = self.OnSubFinish102801,
        ["102808"] = self.OnSubFinish102808,
        ["102803"] = self.OnSubFinish102803,
        ["102804"] = self.OnSubFinish102804,
        ["102809"] = self.OnSubFinish102809,
        ["102805"] = self.OnSubFinish102805,
        ["102802"] = self.OnSubFinish102802,
        ["102806"] = self.OnSubFinish102806,
        ["102807"] = self.OnSubFinish102807
    }
end

function Quest1028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1028:Start()
    print("Start")
end

function Quest1028:OnDestroy()
    print("OnDestroy")
end

function Quest1028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1028:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest1028:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1028:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("refreshjingua")
    if arg1 == 102809 then
        actorUtils.FinishQuestID(false, 102809)
    end
end

function Quest1028:OnSubStart102801(arg1)
    print("OnSubStart102801")
end

function Quest1028:OnSubFinish102801(arg1)
    print("OnSubFinish102801")
end

function Quest1028:OnSubStart102808(arg1)
    print("OnSubStart102808")
end

function Quest1028:OnSubFinish102808(arg1)
    print("OnSubFinish102808")
end

function Quest1028:OnSubStart102803(arg1)
    print("OnSubStart102803")
end

function Quest1028:OnSubFinish102803(arg1)
    print("OnSubFinish102803")
end

function Quest1028:OnSubStart102804(arg1)
    print("OnSubStart102804")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 1, npcs.Npc1030Data.alias)
    end)
end

function Quest1028:OnSubFinish102804(arg1)
    print("OnSubFinish102804")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

function Quest1028:OnSubStart102809(arg1)
    print("OnSubStart102809")
end

function Quest1028:OnSubFinish102809(arg1)
    print("OnSubFinish102809")
end

function Quest1028:OnSubStart102805(arg1)
    print("OnSubStart102805")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1030Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1048Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1049Data.id, 3)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1044Data.id, 4)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12544Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
end

function Quest1028:OnSubFinish102805(arg1)
    print("OnSubFinish102805")
end

function Quest1028:OnSubStart102802(arg1)
    print("OnSubStart102802")
end

function Quest1028:OnSubFinish102802(arg1)
    print("OnSubFinish102802")
end

function Quest1028:OnSubStart102806(arg1)
    print("OnSubStart102806")
end

function Quest1028:OnSubFinish102806(arg1)
    print("OnSubFinish102806")
end

function Quest1028:OnSubStart102807(arg1)
    print("OnSubStart102807")
end

function Quest1028:OnSubFinish102807(arg1)
    print("OnSubFinish102807")
end

return Quest1028
