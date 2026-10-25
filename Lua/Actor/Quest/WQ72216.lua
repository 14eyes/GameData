require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72216 = class("Quest72216", QuestActorProxy)
Quest72216.defaultAlias = "Quest72216"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72216:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72216:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221601"] = self.OnSubStart7221601,
        ["7221603"] = self.OnSubStart7221603,
        ["7221604"] = self.OnSubStart7221604,
        ["7221602"] = self.OnSubStart7221602
    }
end

function Quest72216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221601"] = self.OnSubFinish7221601,
        ["7221603"] = self.OnSubFinish7221603,
        ["7221604"] = self.OnSubFinish7221604,
        ["7221602"] = self.OnSubFinish7221602
    }
end

function Quest72216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221601"] = self.OnSubFailed7221601,
        ["7221603"] = self.OnSubFailed7221603,
        ["7221604"] = self.OnSubFailed7221604,
        ["7221602"] = self.OnSubFailed7221602
    }
end

function Quest72216:Start()
    print("Start")
end

function Quest72216:OnDestroy()
    print("OnDestroy")
end

function Quest72216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72216:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72216:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 7221603)
    elseif arg1 == 2 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 7221604)
    end
end

function Quest72216:OnSubStart7221601(arg1)
    print("OnSubStart7221601")
    self:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 3)
end

function Quest72216:OnSubFinish7221601(arg1)
    print("OnSubFinish7221601")
end

function Quest72216:OnSubFailed7221601(arg1)
    print("OnSubFailed7221601")
end

function Quest72216:OnSubStart7221603(arg1)
    print("OnSubStart7221603")
end

function Quest72216:OnSubFinish7221603(arg1)
    print("OnSubFinish7221603")
end

function Quest72216:OnSubFailed7221603(arg1)
    print("OnSubFailed7221603")
end

function Quest72216:OnSubStart7221604(arg1)
    print("OnSubStart7221604")
end

function Quest72216:OnSubFinish7221604(arg1)
    print("OnSubFinish7221604")
end

function Quest72216:OnSubFailed7221604(arg1)
    print("OnSubFailed7221604")
end

function Quest72216:OnSubStart7221602(arg1)
    print("OnSubStart7221602")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:CallDelay(1, function(arg1)
        arg1:NotifyTo(npcs.Npc3189Data.alias, 1, true)
    end)
end

function Quest72216:OnSubFinish7221602(arg1)
    print("OnSubFinish7221602")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
    self:LightNotifyTo(npcs.Npc3189Data.alias, 0, true)
end

function Quest72216:OnSubFailed7221602(arg1)
    print("OnSubFailed7221602")
end

return Quest72216
