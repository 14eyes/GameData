require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70504 = class("Quest70504", QuestActorProxy)
Quest70504.defaultAlias = "Quest70504"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70504:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70504:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050401"] = self.OnSubStart7050401,
        ["7050406"] = self.OnSubStart7050406,
        ["7050405"] = self.OnSubStart7050405,
        ["7050403"] = self.OnSubStart7050403,
        ["7050402"] = self.OnSubStart7050402,
        ["7050404"] = self.OnSubStart7050404
    }
end

function Quest70504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050401"] = self.OnSubFinish7050401,
        ["7050406"] = self.OnSubFinish7050406,
        ["7050405"] = self.OnSubFinish7050405,
        ["7050403"] = self.OnSubFinish7050403,
        ["7050402"] = self.OnSubFinish7050402,
        ["7050404"] = self.OnSubFinish7050404
    }
end

function Quest70504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050403"] = self.OnSubFailed7050403, ["7050402"] = self.OnSubFailed7050402}
end

function Quest70504:Start()
    print("Start")
end

function Quest70504:OnDestroy()
    print("OnDestroy")
end

function Quest70504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70504:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1068)
    local actor = actorMgr:GetActor("70504")
    actor:UnSpawn(gadgets.Gadget70710667Data.alias)
    actor:UnSpawn(gadgets.Gadget70710666Data.alias)
    actorMgr:DestroyEntityActor("Q70504Trigger", 1068, false)
end

function Quest70504:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest70504:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050403) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050403)
            end)
        else
            print("error BartenderUI call")
        end
    end
end

function Quest70504:OnSubStart7050401(arg1)
    print("OnSubStart7050401")
    self:GetQuestNpcActor(npcs.GaiaData.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1020Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q70504Trigger", "Actor/Gadget/Q70504Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70504:OnSubFinish7050401(arg1)
    print("OnSubFinish7050401")
    self:PaimonDis()
end

function Quest70504:OnSubStart7050406(arg1)
    print("OnSubStart7050406")
end

function Quest70504:OnSubFinish7050406(arg1)
    print("OnSubFinish7050406")
    if self:GetQuestVar(7050406, 1) == 0 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
            arg1:SetQuestVar(7050406, 1, 1)
        end, nil, "QUEST_Message_Q70503", false, true)
    end
end

function Quest70504:OnSubStart7050405(arg1)
    print("OnSubStart7050405")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 2)
end

function Quest70504:OnSubFinish7050405(arg1)
    print("OnSubFinish7050405")
end

function Quest70504:OnSubStart7050403(arg1)
    print("OnSubStart7050403")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 2)
end

function Quest70504:OnSubFinish7050403(arg1)
    print("OnSubFinish7050403")
end

function Quest70504:OnSubFailed7050403(arg1)
    print("OnSubFailed7050403")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70504:OnSubStart7050402(arg1)
    print("OnSubStart7050402")
end

function Quest70504:OnSubFinish7050402(arg1)
    print("OnSubFinish7050402")
end

function Quest70504:OnSubFailed7050402(arg1)
    print("OnSubFailed7050402")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70504:OnSubStart7050404(arg1)
    print("OnSubStart7050404")
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 1)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710667Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710666Data.id, 2, 0)
    self:RequestInteraction(npcs.GaiaData.alias)
end

function Quest70504:OnSubFinish7050404(arg1)
    print("OnSubFinish7050404")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
end

return Quest70504
