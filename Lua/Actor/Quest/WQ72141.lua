require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72141 = class("Quest72141", QuestActorProxy)
Quest72141.defaultAlias = "Quest72141"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72141:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214101"] = self.OnSubStart7214101,
        ["7214112"] = self.OnSubStart7214112,
        ["7214113"] = self.OnSubStart7214113,
        ["7214102"] = self.OnSubStart7214102,
        ["7214103"] = self.OnSubStart7214103,
        ["7214104"] = self.OnSubStart7214104,
        ["7214114"] = self.OnSubStart7214114,
        ["7214115"] = self.OnSubStart7214115,
        ["7214105"] = self.OnSubStart7214105,
        ["7214106"] = self.OnSubStart7214106,
        ["7214107"] = self.OnSubStart7214107,
        ["7214116"] = self.OnSubStart7214116,
        ["7214117"] = self.OnSubStart7214117,
        ["7214108"] = self.OnSubStart7214108,
        ["7214109"] = self.OnSubStart7214109,
        ["7214118"] = self.OnSubStart7214118,
        ["7214119"] = self.OnSubStart7214119,
        ["7214120"] = self.OnSubStart7214120,
        ["7214110"] = self.OnSubStart7214110,
        ["7214111"] = self.OnSubStart7214111
    }
end

function Quest72141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214101"] = self.OnSubFinish7214101,
        ["7214112"] = self.OnSubFinish7214112,
        ["7214113"] = self.OnSubFinish7214113,
        ["7214102"] = self.OnSubFinish7214102,
        ["7214103"] = self.OnSubFinish7214103,
        ["7214104"] = self.OnSubFinish7214104,
        ["7214114"] = self.OnSubFinish7214114,
        ["7214115"] = self.OnSubFinish7214115,
        ["7214105"] = self.OnSubFinish7214105,
        ["7214106"] = self.OnSubFinish7214106,
        ["7214107"] = self.OnSubFinish7214107,
        ["7214116"] = self.OnSubFinish7214116,
        ["7214117"] = self.OnSubFinish7214117,
        ["7214108"] = self.OnSubFinish7214108,
        ["7214109"] = self.OnSubFinish7214109,
        ["7214118"] = self.OnSubFinish7214118,
        ["7214119"] = self.OnSubFinish7214119,
        ["7214120"] = self.OnSubFinish7214120,
        ["7214110"] = self.OnSubFinish7214110,
        ["7214111"] = self.OnSubFinish7214111
    }
end

function Quest72141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214101"] = self.OnSubFailed7214101,
        ["7214112"] = self.OnSubFailed7214112,
        ["7214113"] = self.OnSubFailed7214113,
        ["7214102"] = self.OnSubFailed7214102,
        ["7214103"] = self.OnSubFailed7214103,
        ["7214104"] = self.OnSubFailed7214104,
        ["7214114"] = self.OnSubFailed7214114,
        ["7214115"] = self.OnSubFailed7214115,
        ["7214105"] = self.OnSubFailed7214105,
        ["7214106"] = self.OnSubFailed7214106,
        ["7214107"] = self.OnSubFailed7214107,
        ["7214116"] = self.OnSubFailed7214116,
        ["7214117"] = self.OnSubFailed7214117,
        ["7214108"] = self.OnSubFailed7214108,
        ["7214109"] = self.OnSubFailed7214109,
        ["7214118"] = self.OnSubFailed7214118,
        ["7214119"] = self.OnSubFailed7214119,
        ["7214120"] = self.OnSubFailed7214120,
        ["7214110"] = self.OnSubFailed7214110,
        ["7214111"] = self.OnSubFailed7214111
    }
end

function Quest72141:Start()
    print("Start")
end

function Quest72141:OnDestroy()
    print("OnDestroy")
end

function Quest72141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72141:OnSubStart7214101(arg1)
    print("OnSubStart7214101")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214101(arg1)
    print("OnSubFinish7214101")
end

function Quest72141:OnSubFailed7214101(arg1)
    print("OnSubFailed7214101")
end

function Quest72141:OnSubStart7214112(arg1)
    print("OnSubStart7214112")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214112(arg1)
    print("OnSubFinish7214112")
end

function Quest72141:OnSubFailed7214112(arg1)
    print("OnSubFailed7214112")
end

function Quest72141:OnSubStart7214113(arg1)
    print("OnSubStart7214113")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214113(arg1)
    print("OnSubFinish7214113")
end

function Quest72141:OnSubFailed7214113(arg1)
    print("OnSubFailed7214113")
end

function Quest72141:OnSubStart7214102(arg1)
    print("OnSubStart7214102")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214102(arg1)
    print("OnSubFinish7214102")
end

function Quest72141:OnSubFailed7214102(arg1)
    print("OnSubFailed7214102")
end

function Quest72141:OnSubStart7214103(arg1)
    print("OnSubStart7214103")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214103(arg1)
    print("OnSubFinish7214103")
end

function Quest72141:OnSubFailed7214103(arg1)
    print("OnSubFailed7214103")
end

function Quest72141:OnSubStart7214104(arg1)
    print("OnSubStart7214104")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214104(arg1)
    print("OnSubFinish7214104")
end

function Quest72141:OnSubFailed7214104(arg1)
    print("OnSubFailed7214104")
end

function Quest72141:OnSubStart7214114(arg1)
    print("OnSubStart7214114")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214114(arg1)
    print("OnSubFinish7214114")
end

function Quest72141:OnSubFailed7214114(arg1)
    print("OnSubFailed7214114")
end

function Quest72141:OnSubStart7214115(arg1)
    print("OnSubStart7214115")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214115(arg1)
    print("OnSubFinish7214115")
end

function Quest72141:OnSubFailed7214115(arg1)
    print("OnSubFailed7214115")
end

function Quest72141:OnSubStart7214105(arg1)
    print("OnSubStart7214105")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214105(arg1)
    print("OnSubFinish7214105")
end

function Quest72141:OnSubFailed7214105(arg1)
    print("OnSubFailed7214105")
end

function Quest72141:OnSubStart7214106(arg1)
    print("OnSubStart7214106")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214106(arg1)
    print("OnSubFinish7214106")
end

function Quest72141:OnSubFailed7214106(arg1)
    print("OnSubFailed7214106")
end

function Quest72141:OnSubStart7214107(arg1)
    print("OnSubStart7214107")
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214107(arg1)
    print("OnSubFinish7214107")
end

function Quest72141:OnSubFailed7214107(arg1)
    print("OnSubFailed7214107")
end

function Quest72141:OnSubStart7214116(arg1)
    print("OnSubStart7214116")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214116(arg1)
    print("OnSubFinish7214116")
end

function Quest72141:OnSubFailed7214116(arg1)
    print("OnSubFailed7214116")
end

function Quest72141:OnSubStart7214117(arg1)
    print("OnSubStart7214117")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214117(arg1)
    print("OnSubFinish7214117")
end

function Quest72141:OnSubFailed7214117(arg1)
    print("OnSubFailed7214117")
end

function Quest72141:OnSubStart7214108(arg1)
    print("OnSubStart7214108")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214108(arg1)
    print("OnSubFinish7214108")
end

function Quest72141:OnSubFailed7214108(arg1)
    print("OnSubFailed7214108")
end

function Quest72141:OnSubStart7214109(arg1)
    print("OnSubStart7214109")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214109(arg1)
    print("OnSubFinish7214109")
end

function Quest72141:OnSubFailed7214109(arg1)
    print("OnSubFailed7214109")
end

function Quest72141:OnSubStart7214118(arg1)
    print("OnSubStart7214118")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214118(arg1)
    print("OnSubFinish7214118")
end

function Quest72141:OnSubFailed7214118(arg1)
    print("OnSubFailed7214118")
end

function Quest72141:OnSubStart7214119(arg1)
    print("OnSubStart7214119")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214119(arg1)
    print("OnSubFinish7214119")
end

function Quest72141:OnSubFailed7214119(arg1)
    print("OnSubFailed7214119")
end

function Quest72141:OnSubStart7214120(arg1)
    print("OnSubStart7214120")
    self:CreateQuestNpc(arg1, npcs.Npc20239Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20239Data.alias):DoFreeStyle(2, true, nil, true, true, false)
end

function Quest72141:OnSubFinish7214120(arg1)
    print("OnSubFinish7214120")
    self:SafeDestroyQuestNpc(npcs.Npc20239Data.alias, 3)
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72141:OnSubFailed7214120(arg1)
    print("OnSubFailed7214120")
end

function Quest72141:OnSubStart7214110(arg1)
    print("OnSubStart7214110")
end

function Quest72141:OnSubFinish7214110(arg1)
    print("OnSubFinish7214110")
end

function Quest72141:OnSubFailed7214110(arg1)
    print("OnSubFailed7214110")
end

function Quest72141:OnSubStart7214111(arg1)
    print("OnSubStart7214111")
end

function Quest72141:OnSubFinish7214111(arg1)
    print("OnSubFinish7214111")
end

function Quest72141:OnSubFailed7214111(arg1)
    print("OnSubFailed7214111")
end

return Quest72141
