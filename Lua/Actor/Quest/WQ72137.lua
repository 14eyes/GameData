require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72137 = class("Quest72137", QuestActorProxy)
Quest72137.defaultAlias = "Quest72137"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72137:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213704"] = self.OnSubStart7213704,
        ["7213705"] = self.OnSubStart7213705,
        ["7213701"] = self.OnSubStart7213701,
        ["7213702"] = self.OnSubStart7213702,
        ["7213703"] = self.OnSubStart7213703
    }
end

function Quest72137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213704"] = self.OnSubFinish7213704,
        ["7213705"] = self.OnSubFinish7213705,
        ["7213701"] = self.OnSubFinish7213701,
        ["7213702"] = self.OnSubFinish7213702,
        ["7213703"] = self.OnSubFinish7213703
    }
end

function Quest72137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213704"] = self.OnSubFailed7213704,
        ["7213705"] = self.OnSubFailed7213705,
        ["7213701"] = self.OnSubFailed7213701,
        ["7213702"] = self.OnSubFailed7213702,
        ["7213703"] = self.OnSubFailed7213703
    }
end

function Quest72137:Start()
    print("Start")
end

function Quest72137:OnDestroy()
    print("OnDestroy")
end

function Quest72137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72137:OnSubStart7213704(arg1)
    print("OnSubStart7213704")
end

function Quest72137:OnSubFinish7213704(arg1)
    print("OnSubFinish7213704")
end

function Quest72137:OnSubFailed7213704(arg1)
    print("OnSubFailed7213704")
end

function Quest72137:OnSubStart7213705(arg1)
    print("OnSubStart7213705")
    self:FinishQuestID(false, 7213705)
end

function Quest72137:OnSubFinish7213705(arg1)
    print("OnSubFinish7213705")
end

function Quest72137:OnSubFailed7213705(arg1)
    print("OnSubFailed7213705")
end

function Quest72137:OnSubStart7213701(arg1)
    print("OnSubStart7213701")
    self:CreateQuestNpc(arg1, npcs.Npc20278Data.id, 1)
end

function Quest72137:OnSubFinish7213701(arg1)
    print("OnSubFinish7213701")
    self:GetQuestNpcActor(npcs.Npc20278Data.alias):DestroyWithDither(false, 2)
end

function Quest72137:OnSubFailed7213701(arg1)
    print("OnSubFailed7213701")
end

function Quest72137:OnSubStart7213702(arg1)
    print("OnSubStart7213702")
    self:CreateQuestNpc(arg1, npcs.Npc20279Data.id, 1)
end

function Quest72137:OnSubFinish7213702(arg1)
    print("OnSubFinish7213702")
    self:GetQuestNpcActor(npcs.Npc20279Data.alias):DestroyWithDither(false, 2)
end

function Quest72137:OnSubFailed7213702(arg1)
    print("OnSubFailed7213702")
end

function Quest72137:OnSubStart7213703(arg1)
    print("OnSubStart7213703")
    self:CreateQuestNpc(arg1, npcs.Npc20280Data.id, 1)
end

function Quest72137:OnSubFinish7213703(arg1)
    print("OnSubFinish7213703")
    self:GetQuestNpcActor(npcs.Npc20280Data.alias):DestroyWithDither(false, 2)
end

function Quest72137:OnSubFailed7213703(arg1)
    print("OnSubFailed7213703")
    self:GetQuestNpcActor(npcs.Npc20280Data.alias):DestroyWithDither(false, 2)
end

return Quest72137
