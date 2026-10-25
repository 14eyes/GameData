require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72161 = class("Quest72161", QuestActorProxy)
Quest72161.defaultAlias = "Quest72161"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72161:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72161:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216113"] = self.OnSubStart7216113,
        ["7216101"] = self.OnSubStart7216101,
        ["7216102"] = self.OnSubStart7216102,
        ["7216103"] = self.OnSubStart7216103,
        ["7216114"] = self.OnSubStart7216114,
        ["7216104"] = self.OnSubStart7216104,
        ["7216105"] = self.OnSubStart7216105,
        ["7216106"] = self.OnSubStart7216106,
        ["7216107"] = self.OnSubStart7216107,
        ["7216108"] = self.OnSubStart7216108,
        ["7216111"] = self.OnSubStart7216111,
        ["7216109"] = self.OnSubStart7216109,
        ["7216110"] = self.OnSubStart7216110,
        ["7216112"] = self.OnSubStart7216112
    }
end

function Quest72161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216113"] = self.OnSubFinish7216113,
        ["7216101"] = self.OnSubFinish7216101,
        ["7216102"] = self.OnSubFinish7216102,
        ["7216103"] = self.OnSubFinish7216103,
        ["7216114"] = self.OnSubFinish7216114,
        ["7216104"] = self.OnSubFinish7216104,
        ["7216105"] = self.OnSubFinish7216105,
        ["7216106"] = self.OnSubFinish7216106,
        ["7216107"] = self.OnSubFinish7216107,
        ["7216108"] = self.OnSubFinish7216108,
        ["7216111"] = self.OnSubFinish7216111,
        ["7216109"] = self.OnSubFinish7216109,
        ["7216110"] = self.OnSubFinish7216110,
        ["7216112"] = self.OnSubFinish7216112
    }
end

function Quest72161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216113"] = self.OnSubFailed7216113,
        ["7216101"] = self.OnSubFailed7216101,
        ["7216102"] = self.OnSubFailed7216102,
        ["7216103"] = self.OnSubFailed7216103,
        ["7216114"] = self.OnSubFailed7216114,
        ["7216104"] = self.OnSubFailed7216104,
        ["7216105"] = self.OnSubFailed7216105,
        ["7216106"] = self.OnSubFailed7216106,
        ["7216107"] = self.OnSubFailed7216107,
        ["7216108"] = self.OnSubFailed7216108,
        ["7216111"] = self.OnSubFailed7216111,
        ["7216109"] = self.OnSubFailed7216109,
        ["7216110"] = self.OnSubFailed7216110,
        ["7216112"] = self.OnSubFailed7216112
    }
end

function Quest72161:Start()
    print("Start")
end

function Quest72161:OnDestroy()
    print("OnDestroy")
end

function Quest72161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72161:requestinteraction()
    print("requestinteraction")
    self:RequestInteraction(npcs.Npc20291Data.alias)
end

function Quest72161:OnSubStart7216113(arg1)
    print("OnSubStart7216113")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
    self:CallDelay(0, self.requestinteraction)
end

function Quest72161:OnSubFinish7216113(arg1)
    print("OnSubFinish7216113")
end

function Quest72161:OnSubFailed7216113(arg1)
    print("OnSubFailed7216113")
end

function Quest72161:OnSubStart7216101(arg1)
    print("OnSubStart7216101")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216101(arg1)
    print("OnSubFinish7216101")
end

function Quest72161:OnSubFailed7216101(arg1)
    print("OnSubFailed7216101")
end

function Quest72161:OnSubStart7216102(arg1)
    print("OnSubStart7216102")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216102(arg1)
    print("OnSubFinish7216102")
end

function Quest72161:OnSubFailed7216102(arg1)
    print("OnSubFailed7216102")
end

function Quest72161:OnSubStart7216103(arg1)
    print("OnSubStart7216103")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216103(arg1)
    print("OnSubFinish7216103")
end

function Quest72161:OnSubFailed7216103(arg1)
    print("OnSubFailed7216103")
end

function Quest72161:OnSubStart7216114(arg1)
    print("OnSubStart7216114")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216114(arg1)
    print("OnSubFinish7216114")
end

function Quest72161:OnSubFailed7216114(arg1)
    print("OnSubFailed7216114")
end

function Quest72161:OnSubStart7216104(arg1)
    print("OnSubStart7216104")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216104(arg1)
    print("OnSubFinish7216104")
end

function Quest72161:OnSubFailed7216104(arg1)
    print("OnSubFailed7216104")
end

function Quest72161:OnSubStart7216105(arg1)
    print("OnSubStart7216105")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216105(arg1)
    print("OnSubFinish7216105")
end

function Quest72161:OnSubFailed7216105(arg1)
    print("OnSubFailed7216105")
end

function Quest72161:OnSubStart7216106(arg1)
    print("OnSubStart7216106")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216106(arg1)
    print("OnSubFinish7216106")
end

function Quest72161:OnSubFailed7216106(arg1)
    print("OnSubFailed7216106")
end

function Quest72161:OnSubStart7216107(arg1)
    print("OnSubStart7216107")
    self:CreateQuestNpc(arg1, npcs.Npc20291Data.id, 1)
end

function Quest72161:OnSubFinish7216107(arg1)
    print("OnSubFinish7216107")
    self:SafeDestroyQuestNpc(npcs.Npc20291Data.alias, 3)
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72161:OnSubFailed7216107(arg1)
    print("OnSubFailed7216107")
end

function Quest72161:OnSubStart7216108(arg1)
    print("OnSubStart7216108")
end

function Quest72161:OnSubFinish7216108(arg1)
    print("OnSubFinish7216108")
    self:SafeDestroyQuestNpc(npcs.Npc20291Data.alias, 3)
end

function Quest72161:OnSubFailed7216108(arg1)
    print("OnSubFailed7216108")
end

function Quest72161:OnSubStart7216111(arg1)
    print("OnSubStart7216111")
end

function Quest72161:OnSubFinish7216111(arg1)
    print("OnSubFinish7216111")
end

function Quest72161:OnSubFailed7216111(arg1)
    print("OnSubFailed7216111")
end

function Quest72161:OnSubStart7216109(arg1)
    print("OnSubStart7216109")
end

function Quest72161:OnSubFinish7216109(arg1)
    print("OnSubFinish7216109")
end

function Quest72161:OnSubFailed7216109(arg1)
    print("OnSubFailed7216109")
end

function Quest72161:OnSubStart7216110(arg1)
    print("OnSubStart7216110")
end

function Quest72161:OnSubFinish7216110(arg1)
    print("OnSubFinish7216110")
end

function Quest72161:OnSubFailed7216110(arg1)
    print("OnSubFailed7216110")
end

function Quest72161:OnSubStart7216112(arg1)
    print("OnSubStart7216112")
end

function Quest72161:OnSubFinish7216112(arg1)
    print("OnSubFinish7216112")
end

function Quest72161:OnSubFailed7216112(arg1)
    print("OnSubFailed7216112")
end

return Quest72161
