require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72655 = class("Quest72655", QuestActorProxy)
Quest72655.defaultAlias = "Quest72655"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest72655:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest72655:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7265501"] = self.OnSubStart7265501,
        ["7265502"] = self.OnSubStart7265502,
        ["7265503"] = self.OnSubStart7265503,
        ["7265504"] = self.OnSubStart7265504,
        ["7265505"] = self.OnSubStart7265505,
        ["7265506"] = self.OnSubStart7265506
    }
end

function Quest72655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7265501"] = self.OnSubFinish7265501,
        ["7265502"] = self.OnSubFinish7265502,
        ["7265503"] = self.OnSubFinish7265503,
        ["7265504"] = self.OnSubFinish7265504,
        ["7265505"] = self.OnSubFinish7265505,
        ["7265506"] = self.OnSubFinish7265506
    }
end

function Quest72655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7265501"] = self.OnSubFailed7265501,
        ["7265502"] = self.OnSubFailed7265502,
        ["7265503"] = self.OnSubFailed7265503,
        ["7265504"] = self.OnSubFailed7265504,
        ["7265505"] = self.OnSubFailed7265505,
        ["7265506"] = self.OnSubFailed7265506
    }
end

function Quest72655:Start()
    print("Start")
end

function Quest72655:OnDestroy()
    print("OnDestroy")
end

function Quest72655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72655:OnMainCanceled(arg1)
    local actor = actorMgr:GetActor(datas.Q72655Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:UnSpawn(gadgets.Gadget70950059Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc30055Data.alias, 3)
end

function Quest72655:createmuzhen()
    print("createmuzhen")
    self:CreateQuestNpcById(7265503, npcs.Npc30055Data.id, 1)
    self:RequestInteraction(npcs.Npc30055Data.alias)
end

function Quest72655:bannpc()
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc30055", 1, true)
    end)
end

function Quest72655:destroygate()
    print("destroygate")
    self:UnSpawn(gadgets.Gadget70950059Data.alias)
end

function Quest72655:OnSubStart7265501(arg1)
    print("OnSubStart7265501")
end

function Quest72655:OnSubFinish7265501(arg1)
    print("OnSubFinish7265501")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.bannpc, nil, nil, "")
end

function Quest72655:OnSubFailed7265501(arg1)
    print("OnSubFailed7265501")
end

function Quest72655:OnSubStart7265502(arg1)
    print("OnSubStart7265502")
    actorMgr:CreateActorWithPos(datas.Q72655Trigger_.alias, datas.Q72655Trigger_.script, datas.Q72655Trigger_.id, 0, datas.Q72655Trigger_.point.pos, datas.Q72655Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.Gadget70950059Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70950059Data.id, 1)
end

function Quest72655:OnSubFinish7265502(arg1)
    print("OnSubFinish7265502")
end

function Quest72655:OnSubFailed7265502(arg1)
    print("OnSubFailed7265502")
end

function Quest72655:OnSubStart7265503(arg1)
    print("OnSubStart7265503")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createmuzhen, nil, nil, "")
end

function Quest72655:OnSubFinish7265503(arg1)
    print("OnSubFinish7265503")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroygate, nil, nil, "", false, true)
end

function Quest72655:OnSubFailed7265503(arg1)
    print("OnSubFailed7265503")
end

function Quest72655:OnSubStart7265504(arg1)
    print("OnSubStart7265504")
end

function Quest72655:OnSubFinish7265504(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc30055Data.alias, 3)
    self:ShowTutorialDialog(826)
end

function Quest72655:OnSubFailed7265504(arg1)
    print("OnSubFailed7265504")
end

function Quest72655:OnSubStart7265505(arg1)
    print("OnSubStart7265505")
end

function Quest72655:OnSubFinish7265505(arg1)
    print("OnSubFinish7265505")
end

function Quest72655:OnSubFailed7265505(arg1)
    print("OnSubFailed7265505")
end

function Quest72655:OnSubStart7265506(arg1)
    print("OnSubStart7265506")
end

function Quest72655:OnSubFinish7265506(arg1)
    print("OnSubFinish7265506")
end

function Quest72655:OnSubFailed7265506(arg1)
    print("OnSubFailed7265506")
end

return Quest72655
