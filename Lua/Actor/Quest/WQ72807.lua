require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72807 = class("Quest72807", QuestActorProxy)
Quest72807.defaultAlias = "Quest72807"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72807:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72807:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280701"] = self.OnSubStart7280701,
        ["7280706"] = self.OnSubStart7280706,
        ["7280702"] = self.OnSubStart7280702,
        ["7280703"] = self.OnSubStart7280703,
        ["7280704"] = self.OnSubStart7280704,
        ["7280705"] = self.OnSubStart7280705
    }
end

function Quest72807:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280701"] = self.OnSubFinish7280701,
        ["7280706"] = self.OnSubFinish7280706,
        ["7280702"] = self.OnSubFinish7280702,
        ["7280703"] = self.OnSubFinish7280703,
        ["7280704"] = self.OnSubFinish7280704,
        ["7280705"] = self.OnSubFinish7280705
    }
end

function Quest72807:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280701"] = self.OnSubFailed7280701,
        ["7280706"] = self.OnSubFailed7280706,
        ["7280702"] = self.OnSubFailed7280702,
        ["7280703"] = self.OnSubFailed7280703,
        ["7280704"] = self.OnSubFailed7280704,
        ["7280705"] = self.OnSubFailed7280705
    }
end

function Quest72807:Start()
    print("Start")
end

function Quest72807:OnDestroy()
    print("OnDestroy")
end

function Quest72807:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72807:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72807:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72807:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72807:OnSubStart7280701(arg1)
    print("OnSubStart7280701")
    self:CreateQuestNpc(arg1, npcs.Npc3026Data.id, 1)
    actorMgr:CreateActorWithPos("Q7280701Trigger", "Actor/Gadget/Q7280701Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "LetterGuard01").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest72807:OnSubFinish7280701(arg1)
    print("OnSubFinish7280701")
end

function Quest72807:OnSubFailed7280701(arg1)
    print("OnSubFailed7280701")
end

function Quest72807:OnSubStart7280702(arg1)
    print("OnSubStart7280702")
    self.CreateQuestNpc(self, arg1, npcs.Npc3026Data.id, 1)
    self.LevelLoadFinishSafeCall(self, function()
        self:TransmitPlayerById(arg1, 1, function(arg1)
            arg1:RequestInteraction(npcs.Npc3026Data.alias)
        end)
    end)
end

function Quest72807:OnSubFinish7280702(arg1)
    print("OnSubFinish7280702")
end

function Quest72807:OnSubFailed7280702(arg1)
    print("OnSubFailed7280702")
end

function Quest72807:OnSubStart7280703(arg1)
    print("OnSubStart7280703")
    self:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 1)
end

function Quest72807:OnSubFinish7280703(arg1)
    print("OnSubFinish7280703")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3054Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc3026Data.alias, 3)
end

function Quest72807:OnSubFailed7280703(arg1)
    print("OnSubFailed7280703")
end

function Quest72807:OnSubStart7280704(arg1)
    print("OnSubStart7280704")
    self:NotifyTo("Npc3054", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 1)
end

function Quest72807:OnSubFinish7280704(arg1)
    print("OnSubFinish7280704")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3044Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo("Npc3054", 0, true)
    end)
end

function Quest72807:OnSubFailed7280704(arg1)
    print("OnSubFailed7280704")
end

function Quest72807:OnSubStart7280705(arg1)
    print("OnSubStart7280705")
    self:CreateQuestNpc(arg1, npcs.Npc3086Data.id, 1)
    actorMgr:CreateActorWithPos("Q7280705Trigger", "Actor/Gadget/Q7280705Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "LetterQianli01").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest72807:OnSubFinish7280705(arg1)
    print("OnSubFinish7280705")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3086Data.alias)
end

function Quest72807:OnSubFailed7280705(arg1)
    print("OnSubFailed7280705")
end

function Quest72807:OnSubStart7280706(arg1)
    print("OnSubStart7280706")
    self:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 1)
end

function Quest72807:OnSubFinish7280706(arg1)
    print("OnSubFinish7280706")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3054Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc3026Data.alias, 3)
end

function Quest72807:OnSubFailed7280706(arg1)
    print("OnSubFailed7280706")
end

return Quest72807
