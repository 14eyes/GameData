require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70501 = class("Quest70501", QuestActorProxy)
Quest70501.defaultAlias = "Quest70501"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70501:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050117"] = self.OnSubStart7050117,
        ["7050101"] = self.OnSubStart7050101,
        ["7050102"] = self.OnSubStart7050102,
        ["7050103"] = self.OnSubStart7050103,
        ["7050104"] = self.OnSubStart7050104,
        ["7050105"] = self.OnSubStart7050105,
        ["7050106"] = self.OnSubStart7050106,
        ["7050114"] = self.OnSubStart7050114,
        ["7050107"] = self.OnSubStart7050107,
        ["7050108"] = self.OnSubStart7050108,
        ["7050116"] = self.OnSubStart7050116,
        ["7050113"] = self.OnSubStart7050113,
        ["7050111"] = self.OnSubStart7050111,
        ["7050109"] = self.OnSubStart7050109,
        ["7050112"] = self.OnSubStart7050112,
        ["7050110"] = self.OnSubStart7050110,
        ["7050115"] = self.OnSubStart7050115
    }
end

function Quest70501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050117"] = self.OnSubFinish7050117,
        ["7050101"] = self.OnSubFinish7050101,
        ["7050102"] = self.OnSubFinish7050102,
        ["7050103"] = self.OnSubFinish7050103,
        ["7050104"] = self.OnSubFinish7050104,
        ["7050105"] = self.OnSubFinish7050105,
        ["7050106"] = self.OnSubFinish7050106,
        ["7050114"] = self.OnSubFinish7050114,
        ["7050107"] = self.OnSubFinish7050107,
        ["7050108"] = self.OnSubFinish7050108,
        ["7050116"] = self.OnSubFinish7050116,
        ["7050113"] = self.OnSubFinish7050113,
        ["7050111"] = self.OnSubFinish7050111,
        ["7050109"] = self.OnSubFinish7050109,
        ["7050112"] = self.OnSubFinish7050112,
        ["7050110"] = self.OnSubFinish7050110,
        ["7050115"] = self.OnSubFinish7050115
    }
end

function Quest70501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7050117"] = self.OnSubFailed7050117,
        ["7050101"] = self.OnSubFailed7050101,
        ["7050102"] = self.OnSubFailed7050102,
        ["7050103"] = self.OnSubFailed7050103,
        ["7050104"] = self.OnSubFailed7050104,
        ["7050105"] = self.OnSubFailed7050105,
        ["7050106"] = self.OnSubFailed7050106,
        ["7050114"] = self.OnSubFailed7050114,
        ["7050107"] = self.OnSubFailed7050107,
        ["7050108"] = self.OnSubFailed7050108,
        ["7050116"] = self.OnSubFailed7050116,
        ["7050113"] = self.OnSubFailed7050113,
        ["7050111"] = self.OnSubFailed7050111,
        ["7050109"] = self.OnSubFailed7050109,
        ["7050112"] = self.OnSubFailed7050112,
        ["7050110"] = self.OnSubFailed7050110,
        ["7050115"] = self.OnSubFailed7050115
    }
end

function Quest70501:Start()
    print("Start")
end

function Quest70501:OnDestroy()
    print("OnDestroy")
end

function Quest70501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70501:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:GetActor(datas.Q7050105Trigger.alias)
    self:RemoveClientTrigger7050105()
end

function Quest70501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:GetActor(datas.Q7050105Trigger.alias)
    self:RemoveClientTrigger7050105()
end

function Quest70501:finishSelf()
    print("finishSelf")
    self:FinishQuestID(false, 7050111)
end

function Quest70501:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 7050101)
    end
end

function Quest70501:Npc20395Destroy()
    print("Npc20395Destroy")
    self:GetQuestNpcActor(npcs.Npc20395Data.alias):DestroyWithDisappear(false)
end

function Quest70501:Npc10258Destroy()
    print("Npc10258Destroy")
    self:GetQuestNpcActor(npcs.Npc10258Data.alias):DestroyWithDisappear(false)
end

function Quest70501:RemoveClientTrigger7050105()
    local actor = actorMgr:GetActor(datas.Q7050105Trigger.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70501:OnSubStart7050117(arg1)
    print("OnSubStart7050117")
end

function Quest70501:OnSubFinish7050117(arg1)
    print("OnSubFinish7050117")
end

function Quest70501:OnSubFailed7050117(arg1)
    print("OnSubFailed7050117")
end

function Quest70501:OnSubStart7050101(arg1)
    print("OnSubStart7050101")
    self:CreateQuestNpc(arg1, npcs.Npc10258Data.id, 0)
end

function Quest70501:OnSubFinish7050101(arg1)
    print("OnSubFinish7050101")
end

function Quest70501:OnSubFailed7050101(arg1)
    print("OnSubFailed7050101")
end

function Quest70501:OnSubStart7050102(arg1)
    print("OnSubStart7050102")
    self:CreateQuestNpc(arg1, npcs.Npc20395Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20395Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest70501:OnSubFinish7050102(arg1)
    print("OnSubFinish7050102")
end

function Quest70501:OnSubFailed7050102(arg1)
    print("OnSubFailed7050102")
end

function Quest70501:OnSubStart7050103(arg1)
    print("OnSubStart7050103")
end

function Quest70501:OnSubFinish7050103(arg1)
    print("OnSubFinish7050103")
end

function Quest70501:OnSubFailed7050103(arg1)
    print("OnSubFailed7050103")
end

function Quest70501:OnSubStart7050104(arg1)
    print("OnSubStart7050104")
    self:GetQuestNpcActor(npcs.Npc20395Data.alias):DoFreeStateTrigger()
end

function Quest70501:OnSubFinish7050104(arg1)
    print("OnSubFinish7050104")
end

function Quest70501:OnSubFailed7050104(arg1)
    print("OnSubFailed7050104")
end

function Quest70501:OnSubStart7050105(arg1)
    print("OnSubStart7050105")
    actorMgr:CreateActorWithPos(datas.Q7050105Trigger.alias, datas.Q7050105Trigger.script, datas.Q7050105Trigger.id, 0, datas.Q7050105Trigger.point.pos, datas.Q7050105Trigger.point.rot, true, false, 3)
end

function Quest70501:OnSubFinish7050105(arg1)
    print("OnSubFinish7050105")
    actorMgr:GetActor(datas.Q7050105Trigger.alias)
    self:RemoveClientTrigger7050105()
end

function Quest70501:OnSubFailed7050105(arg1)
    print("OnSubFailed7050105")
    self:TransmitPlayerById(arg1, datas.TransmitPoint2.point_id)
end

function Quest70501:OnSubStart7050106(arg1)
    print("OnSubStart7050106")
end

function Quest70501:OnSubFinish7050106(arg1)
    print("OnSubFinish7050106")
end

function Quest70501:OnSubFailed7050106(arg1)
    print("OnSubFailed7050106")
end

function Quest70501:OnSubStart7050114(arg1)
    print("OnSubStart7050114")
    self:CreateQuestNpc(arg1, npcs.Npc20397Data.id, 0)
end

function Quest70501:OnSubFinish7050114(arg1)
    print("OnSubFinish7050114")
    self:TransmitPlayerWithTextById(arg1, datas.TransmitPoint.point_id, datas.TextmapId, 4)
    self:GetQuestNpcActor(npcs.Npc20397Data.alias):DestroyWithDisappear(false)
end

function Quest70501:OnSubFailed7050114(arg1)
    print("OnSubFailed7050114")
end

function Quest70501:OnSubStart7050107(arg1)
    print("OnSubStart7050107")
end

function Quest70501:OnSubFinish7050107(arg1)
    print("OnSubFinish7050107")
    self:ShowBlackScreen(0.25, 1, 0.5, self.Npc20395Destroy, nil, nil, "", false, true)
end

function Quest70501:OnSubFailed7050107(arg1)
    print("OnSubFailed7050107")
end

function Quest70501:OnSubStart7050108(arg1)
    print("OnSubStart7050108")
end

function Quest70501:OnSubFinish7050108(arg1)
    print("OnSubFinish7050108")
end

function Quest70501:OnSubFailed7050108(arg1)
    print("OnSubFailed7050108")
end

function Quest70501:OnSubStart7050116(arg1)
    print("OnSubStart7050116")
end

function Quest70501:OnSubFinish7050116(arg1)
    print("OnSubFinish7050116")
end

function Quest70501:OnSubFailed7050116(arg1)
    print("OnSubFailed7050116")
end

function Quest70501:OnSubStart7050113(arg1)
    print("OnSubStart7050113")
end

function Quest70501:OnSubFinish7050113(arg1)
    print("OnSubFinish7050113")
end

function Quest70501:OnSubFailed7050113(arg1)
    print("OnSubFailed7050113")
end

function Quest70501:OnSubStart7050111(arg1)
    print("OnSubStart7050111")
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self.finishSelf)
end

function Quest70501:OnSubFinish7050111(arg1)
    print("OnSubFinish7050111")
end

function Quest70501:OnSubFailed7050111(arg1)
    print("OnSubFailed7050111")
end

function Quest70501:OnSubStart7050109(arg1)
    print("OnSubStart7050109")
end

function Quest70501:OnSubFinish7050109(arg1)
    print("OnSubFinish7050109")
end

function Quest70501:OnSubFailed7050109(arg1)
    print("OnSubFailed7050109")
end

function Quest70501:OnSubStart7050112(arg1)
    print("OnSubStart7050112")
end

function Quest70501:OnSubFinish7050112(arg1)
    print("OnSubFinish7050112")
end

function Quest70501:OnSubFailed7050112(arg1)
    print("OnSubFailed7050112")
end

function Quest70501:OnSubStart7050110(arg1)
    print("OnSubStart7050110")
end

function Quest70501:OnSubFinish7050110(arg1)
    print("OnSubFinish7050110")
end

function Quest70501:OnSubFailed7050110(arg1)
    print("OnSubFailed7050110")
end

function Quest70501:OnSubStart7050115(arg1)
    print("OnSubStart7050115")
end

function Quest70501:OnSubFinish7050115(arg1)
    print("OnSubFinish7050115")
    self:ShowBlackScreen(0.25, 1, 0.5, self.Npc10258Destroy, nil, nil, "", false, true)
end

function Quest70501:OnSubFailed7050115(arg1)
    print("OnSubFailed7050115")
end

return Quest70501
