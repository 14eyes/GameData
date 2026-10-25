require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22028 = class("Quest22028", QuestActorProxy)
Quest22028.defaultAlias = "Quest22028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202801"] = self.OnSubStart2202801,
        ["2202802"] = self.OnSubStart2202802,
        ["2202803"] = self.OnSubStart2202803,
        ["2202804"] = self.OnSubStart2202804,
        ["2202806"] = self.OnSubStart2202806,
        ["2202805"] = self.OnSubStart2202805,
        ["2202807"] = self.OnSubStart2202807,
        ["2202808"] = self.OnSubStart2202808,
        ["2202809"] = self.OnSubStart2202809
    }
end

function Quest22028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202801"] = self.OnSubFinish2202801,
        ["2202802"] = self.OnSubFinish2202802,
        ["2202803"] = self.OnSubFinish2202803,
        ["2202804"] = self.OnSubFinish2202804,
        ["2202806"] = self.OnSubFinish2202806,
        ["2202805"] = self.OnSubFinish2202805,
        ["2202807"] = self.OnSubFinish2202807,
        ["2202808"] = self.OnSubFinish2202808,
        ["2202809"] = self.OnSubFinish2202809
    }
end

function Quest22028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202801"] = self.OnSubFailed2202801,
        ["2202802"] = self.OnSubFailed2202802,
        ["2202803"] = self.OnSubFailed2202803,
        ["2202804"] = self.OnSubFailed2202804,
        ["2202806"] = self.OnSubFailed2202806,
        ["2202805"] = self.OnSubFailed2202805,
        ["2202807"] = self.OnSubFailed2202807,
        ["2202808"] = self.OnSubFailed2202808,
        ["2202809"] = self.OnSubFailed2202809
    }
end

function Quest22028:Start()
    print("Start")
end

function Quest22028:OnDestroy()
    print("OnDestroy")
end

function Quest22028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22028:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    local actor = actorMgr:GetActor(datas.Q22028Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q22028Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest22028:destroyxiangtai()
    print("destroyxiangtai")
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
end

function Quest22028:createxiangtai1()
    print("createxiangtai1")
    self:CreateQuestNpcById(2202805, npcs.Npc3045Data.id, 1)
    self:RequestInteraction(npcs.Npc3045Data.alias)
end

function Quest22028:createxiangtai2()
    print("createxiangtai2")
    self:CreateQuestNpcById(2202809, npcs.Npc3045Data.id, 1)
    self:RequestInteraction(npcs.Npc3045Data.alias)
end

function Quest22028:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "QUEST_Message_Q22027")
    end
end

function Quest22028:OnSubStart2202801(arg1)
    print("OnSubStart2202801")
    self:CreateQuestNpc(arg1, npcs.Npc3045Data.id, 1)
end

function Quest22028:OnSubFinish2202801(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 0.5, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
            self:NotifyTo("Npc3045", 1, true)
        end, nil, nil, "")
    end)
end

function Quest22028:OnSubFailed2202801(arg1)
    print("OnSubFailed2202801")
end

function Quest22028:OnSubStart2202802(arg1)
    print("OnSubStart2202802")
end

function Quest22028:OnSubFinish2202802(arg1)
    print("OnSubFinish2202802")
end

function Quest22028:OnSubFailed2202802(arg1)
    print("OnSubFailed2202802")
end

function Quest22028:OnSubStart2202803(arg1)
    print("OnSubStart2202803")
end

function Quest22028:OnSubFinish2202803(arg1)
    print("OnSubFinish2202803")
end

function Quest22028:OnSubFailed2202803(arg1)
    print("OnSubFailed2202803")
end

function Quest22028:OnSubStart2202804(arg1)
    print("OnSubStart2202804")
    actorMgr:CreateActorWithPos(datas.Q22028Trigger1_.alias, datas.Q22028Trigger1_.script, datas.Q22028Trigger1_.id, 0, datas.Q22028Trigger1_.point.pos, datas.Q22028Trigger1_.point.rot, true, false, 3)
end

function Quest22028:OnSubFinish2202804(arg1)
    print("OnSubFinish2202804")
end

function Quest22028:OnSubFailed2202804(arg1)
    print("OnSubFailed2202804")
end

function Quest22028:OnSubStart2202806(arg1)
    print("OnSubStart2202806")
end

function Quest22028:OnSubFinish2202806(arg1)
    print("OnSubFinish2202806")
end

function Quest22028:OnSubFailed2202806(arg1)
    print("OnSubFailed2202806")
end

function Quest22028:OnSubStart2202805(arg1)
    print("OnSubStart2202805")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc3045Data.alias})
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createxiangtai1, nil, questNpcCreateTask)
end

function Quest22028:OnSubFinish2202805(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, self.destroyxiangtai, nil, nil, "")
    end)
end

function Quest22028:OnSubFailed2202805(arg1)
    print("OnSubFailed2202805")
end

function Quest22028:OnSubStart2202807(arg1)
    print("OnSubStart2202807")
    actorMgr:CreateActorWithPos(datas.Q22028Trigger2_.alias, datas.Q22028Trigger2_.script, datas.Q22028Trigger2_.id, 0, datas.Q22028Trigger2_.point.pos, datas.Q22028Trigger2_.point.rot, true, false, 3)
end

function Quest22028:OnSubFinish2202807(arg1)
    print("OnSubFinish2202807")
end

function Quest22028:OnSubFailed2202807(arg1)
    print("OnSubFailed2202807")
end

function Quest22028:OnSubStart2202808(arg1)
    print("OnSubStart2202808")
end

function Quest22028:OnSubFinish2202808(arg1)
    print("OnSubFinish2202808")
end

function Quest22028:OnSubFailed2202808(arg1)
    print("OnSubFailed2202808")
end

function Quest22028:OnSubStart2202809(arg1)
    print("OnSubStart2202809")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc3045Data.alias})
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createxiangtai2, nil, questNpcCreateTask, "")
end

function Quest22028:OnSubFinish2202809(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, self.destroyxiangtai, nil, nil, "")
    end)
end

function Quest22028:OnSubFailed2202809(arg1)
    print("OnSubFailed2202809")
end

return Quest22028
